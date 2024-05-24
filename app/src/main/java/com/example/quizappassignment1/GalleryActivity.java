package com.example.quizappassignment1; // Pakkedeklarasjon

import android.content.Intent; // Importerer nødvendige Android-klasser
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;

import androidx.appcompat.app.AppCompatActivity; // Importerer nødvendige AndroidX-klasser

import com.example.quizappassignment1.adapter.GalleryAdapter; // Importerer GalleryAdapter-klassen fra adapter-pakken
import com.example.quizappassignment1.model.Storage; // Importerer Storage-klassen fra model-pakken

public class GalleryActivity extends AppCompatActivity { // Klasse-deklarasjon som utvider AppCompatActivity

    View relativeLayoutGallery; // Deklarerer variabler
    ListView listView;
    Button newImage;
    Button sort;
    GalleryAdapter galleryAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) { // Overskriver onCreate-metoden
        super.onCreate(savedInstanceState); // Kaller supermetoden
        setContentView(R.layout.activity_gallery); // Setter layouten for aktiviteten
        relativeLayoutGallery = findViewById(R.id.relativeLayoutGallery); // Finner og initialiserer view

        Storage.getOptionList().sort(); // Sorterer alternativlisten

        listView = relativeLayoutGallery.findViewById(R.id.galleryList); // Finner og initialiserer ListView
        galleryAdapter = new GalleryAdapter(getApplicationContext(), R.layout.list_row, Storage.getOptionList().getOptionList()); // Oppretter adapter
        listView.setAdapter(galleryAdapter); // Setter adapter til ListView

        newImage = relativeLayoutGallery.findViewById(R.id.newImage); // Finner og initialiserer knappen for nytt bilde
        newImage.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på knappen
            @Override
            public void onClick(View v) { // Metode som kjøres ved klikk på knappen
                Intent intent = new Intent(GalleryActivity.this, NewOptionActivity.class); // Oppretter ny Intent

                // dont care its deprecated, the alternative is painful
                startActivityForResult(intent, 91); // Starter aktiviteten for resultat med requestCode 91
            }
        });

        sort = relativeLayoutGallery.findViewById(R.id.sort); // Finner og initialiserer sorteringsknappen
        if (sort != null) { // Sjekker om sort er ikke-null
            sort.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på sorteringsknappen
                @Override
                public void onClick(View v) { // Metode som kjøres ved klikk på sorteringsknappen
                    Storage.getOptionList().changeSortType(); // Endrer sorteringsmetoden
                    Storage.getOptionList().sort(); // Sorterer alternativlisten

                    galleryAdapter.notifyDataSetChanged(); // Oppdaterer adapteren
                }
            });
        } else { // Hvis sort er null
            Log.d("ERROR", "HUH"); // Logger feilmelding
        }
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) { // Overskriver onActivityResult-metoden
        super.onActivityResult(requestCode, resultCode, data); // Kaller supermetoden

    }

    @Override
    protected void onResume() { // Overskriver onResume-metoden
        super.onResume(); // Kaller supermetoden
        // Oppdaterer adapterens datasett her hvis nødvendig
        if (galleryAdapter != null) { // Sjekker om adapteren ikke er null
            galleryAdapter.notifyDataSetChanged(); // Oppdaterer adapteren
        }
    }
}
