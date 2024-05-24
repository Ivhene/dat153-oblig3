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
    // GalleryAdapter-klasse som utvider ArrayAdapter for å håndtere Option-objekter i en liste

    private Context mContext;
    // Context for å få tilgang til ressurser og applikasjonsspesifikke eiendeler

    private int mResource;
    // Ressurs-ID for layoutfilen som skal inflateres (gjøres om til View-objekter i minne)

    public GalleryAdapter(@NonNull Context context, int resource, @NonNull List<Option> objects) {
        super(context, resource, objects);
        // Konstruktør for GalleryAdapter, initialiserer context, resource og listen over alternativer

        this.mContext = context;
        // Tilordner context

        this.mResource = resource;
        // Tilordner ressurs-ID
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        // Overstyrer getView-metoden for å gi en visning for hvert element i listen

        LayoutInflater layoutInflater = LayoutInflater.from(mContext);
        // Henter LayoutInflater for å inflateres layouten

        Option option = getItem(position);
        // Henter Option-objektet for den nåværende posisjonen

        if (convertView == null)
            convertView = layoutInflater.inflate(mResource, parent, false);
        // Inflater layouten hvis convertView er null

        ImageView imageView = convertView.findViewById(R.id.image);
        // Finner ImageView i layouten

        imageView.setImageURI(option.getImage());
        // Setter bilde-URI fra Option-objektet

        TextView txtAnswer = convertView.findViewById(R.id.txtAnswer);
        // Finner TextView i layouten

        txtAnswer.setText(option.getMatchingName());
        // Setter tekst fra Option-objektet

        Button deleteButton = convertView.findViewById(R.id.deleteButton);
        // Finner sletteknappen i den nåværende varevisningen

        deleteButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                OptionList optionList = Storage.getOptionList();
                // Henter listen over alternativer fra Storage

                if (optionList.getOptionList().size() > 3) {
                    // Sørger for at det er mer enn 3 alternativer før sletting tillates

                    deleteFromDatabase(option);
                    // Fjerner elementet fra databasen

                    optionList.remove(option);
                    // Fjerner elementet fra listen

                    notifyDataSetChanged();
                    // Varsler adapteren om at datasettet har endret seg
                }
            }
        });

        return convertView;
        // Returnerer den endrede visningen for det nåværende elementet
    }

    public void deleteFromDatabase(Option option) {
        // Metode for å slette et alternativ fra databasen

        ExecutorService executorService = Executors.newSingleThreadExecutor();
        // Oppretter en enkelttrådet eksekveringstjeneste

        Handler handler = new Handler(Looper.getMainLooper());
        // Oppretter en handler tilknyttet hovedtrådens Looper

        executorService.execute(new Runnable() {
            @Override
            public void run() {
                // Oppgave utført i bakgrunnen

                Storage.optionDatabase.getOptionDAO().deleteOption(option);
                // Sletter alternativet fra databasen

                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(mContext, "Alternativ slettet fra databasen", Toast.LENGTH_SHORT).show();
                        // Viser en Toast-melding på hovedtråden etter sletting
                    }
                });
            }
        });
    }
}
