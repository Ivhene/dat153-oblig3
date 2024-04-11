package com.example.quizappassignment1;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.quizappassignment1.model.Option;
import com.example.quizappassignment1.model.Storage;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class NewOptionActivity extends AppCompatActivity {

    Button btnChooseImage;

    ImageView imagePreview;

    TextInputLayout inputLayout;
    TextInputEditText editText;

    Button btnAddImage;

    Uri selectedImageUri;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_new_option);

        btnChooseImage = findViewById(R.id.btnChooseImage);
        btnChooseImage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                imageChooser();
            }
        });

        imagePreview = findViewById(R.id.imagePreview);

        inputLayout = findViewById(R.id.inputLayout);
        editText = inputLayout.findViewById(R.id.inputName);

        btnAddImage = findViewById(R.id.btnAddImage);
        btnAddImage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (selectedImageUri == null || editText.getText() == null)
                    return;

                Option newEntry = new Option(selectedImageUri.toString(), editText.getText().toString().trim());
                Storage.getOptionList().add(newEntry);
                saveToDatabase(newEntry);
                finish();
            }
        });
    }

    public void saveToDatabase(Option option) {
        ExecutorService executorService = Executors.newSingleThreadExecutor();

        Handler handler = new Handler(Looper.getMainLooper());

        executorService.execute(new Runnable() {
            @Override
            public void run() {
                // task executed in background
                Storage.optionDatabase.getOptionDAO().addOption(option);

                // once task is finished
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(getApplicationContext(), "Option added to database", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (resultCode == RESULT_OK) {
            if (requestCode == 124) {
                // Get the uri of the image from data
                selectedImageUri = data.getData();
                if (null != selectedImageUri) {
                    imagePreview.setImageURI(selectedImageUri);

                    int flags = Intent.FLAG_GRANT_READ_URI_PERMISSION;

                    getContentResolver().takePersistableUriPermission(selectedImageUri, flags);

                }
            }
        }
    }

    void imageChooser() {
        Intent i = new Intent();
        i.setType("image/*");
        i.setAction(Intent.ACTION_GET_CONTENT);

        // dont care if its deprecated, the alternative is painful
        startActivityForResult(Intent.createChooser(i, "Select Picture"), 124);
    }
}