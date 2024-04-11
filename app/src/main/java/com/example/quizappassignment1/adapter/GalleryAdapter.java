package com.example.quizappassignment1.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.example.quizappassignment1.R;
import com.example.quizappassignment1.model.Option;
import com.example.quizappassignment1.model.OptionList;
import com.example.quizappassignment1.model.Storage;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class GalleryAdapter extends ArrayAdapter<Option> {
    private Context mContext;
    private int mResource;

    public GalleryAdapter(@NonNull Context context, int resource, @NonNull List<Option> objects) {
        super(context, resource, objects);
        this.mContext = context;
        this.mResource = resource;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        LayoutInflater layoutInflater = LayoutInflater.from(mContext);
        Option option = getItem(position);

        if(convertView == null)
            convertView = layoutInflater.inflate(mResource, parent, false);

        ImageView imageView = convertView.findViewById(R.id.image);
        imageView.setImageURI(option.getImage());

        TextView txtAnswer = convertView.findViewById(R.id.txtAnswer);
        txtAnswer.setText(option.getMatchingName());

        // Find the delete button in the current item view
        Button deleteButton = convertView.findViewById(R.id.deleteButton);

        deleteButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                OptionList optionList = Storage.getOptionList();

                // We assume there will always be 3 elements, so don't allow
                // deletion when there is fewer.
                if (optionList.getOptionList().size() > 3) {
                    // Remove the item from the data source
                    deleteFromDatabase(option);
                    optionList.remove(option);
                    // Notify the adapter that the data set has changed
                    notifyDataSetChanged();
                }
            }
        });

        return convertView;
    }

    public void deleteFromDatabase(Option option) {
        ExecutorService executorService = Executors.newSingleThreadExecutor();

        Handler handler = new Handler(Looper.getMainLooper());

        executorService.execute(new Runnable() {
            @Override
            public void run() {
                // task executed in background
                Storage.optionDatabase.getOptionDAO().deleteOption(option);

                // once task is finished
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(mContext, "Option deleted from database", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }

}
