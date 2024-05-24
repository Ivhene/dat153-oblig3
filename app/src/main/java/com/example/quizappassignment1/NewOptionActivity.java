package com.example.quizappassignment1; // Pakkedeklarasjon

import android.content.Intent; // Importerer nødvendige Android-klasser
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity; // Importerer nødvendige AndroidX-klasser

import com.example.quizappassignment1.model.Option; // Importerer Option-klassen fra model-pakken
import com.example.quizappassignment1.model.Storage; // Importerer Storage-klassen fra model-pakken
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

import java.util.concurrent.ExecutorService; // Importerer nødvendige Java-klasser
import java.util.concurrent.Executors;

public class NewOptionActivity extends AppCompatActivity { // Klasse-deklarasjon som utvider AppCompatActivity

    Button btnChooseImage; // Deklarerer variabler
    ImageView imagePreview;
    TextInputLayout inputLayout;
    TextInputEditText editText;
    Button btnAddImage;
    Uri selectedImageUri;

    @Override
    protected void onCreate(Bundle savedInstanceState) { // Overskriver onCreate-metoden
        super.onCreate(savedInstanceState); // Kaller supermetoden
        setContentView(R.layout.activity_new_option); // Setter layouten for aktiviteten

        btnChooseImage = findViewById(R.id.btnChooseImage); // Finner og initialiserer knappen for å velge bilde
        btnChooseImage.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på knappen
            @Override
            public void onClick(View v) { // Metode som kjøres ved klikk på knappen
                imageChooser(); // Starter bildevelgeren
            }
        });

        imagePreview = findViewById(R.id.imagePreview); // Finner og initialiserer ImageView for forhåndsvisning av bilde

        inputLayout = findViewById(R.id.inputLayout); // Finner og initialiserer TextInputLayout
        editText = inputLayout.findViewById(R.id.inputName); // Finner og initialiserer TextInputEditText for navn

        btnAddImage = findViewById(R.id.btnAddImage); // Finner og initialiserer knappen for å legge til bilde
        btnAddImage.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på knappen
            @Override
            public void onClick(View v) { // Metode som kjøres ved klikk på knappen
                if (selectedImageUri == null || editText.getText() == null) // Sjekker om bilde-URI eller tekstfeltet er null
                    return; // Avslutter metoden

                Option newEntry = new Option(selectedImageUri.toString(), editText.getText().toString().trim()); // Oppretter ny Option
                Storage.getOptionList().add(newEntry); // Legger til ny Option i listen
                saveToDatabase(newEntry); // Lagrer ny Option i databasen
                finish(); // Avslutter aktiviteten
            }
        });
    }

    public void saveToDatabase(Option option) { // Metode for å lagre Option i databasen
        ExecutorService executorService = Executors.newSingleThreadExecutor(); // Oppretter executor service

        Handler handler = new Handler(Looper.getMainLooper()); // Oppretter handler for hovedtråden

        executorService.execute(new Runnable() { // Utfører oppgave i bakgrunnen
            @Override
            public void run() { // Utfører oppgave
                // oppgave utført i bakgrunnen
                Storage.optionDatabase.getOptionDAO().addOption(option); // Legger til Option i databasen

                // når oppgaven er ferdig
                handler.post(new Runnable() { // Legger ut oppgave til hovedtråden
                    @Override
                    public void run() { // Utfører oppgave
                        Toast.makeText(getApplicationContext(), "Option added to database", Toast.LENGTH_SHORT).show(); // Viser toast-melding
                    }
                });
            }
        });
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) { // Overskriver onActivityResult-metoden
        super.onActivityResult(requestCode, resultCode, data); // Kaller supermetoden

        if (resultCode == RESULT_OK) { // Sjekker om resultatet er OK
            if (requestCode == 124) { // Sjekker om requestCode er for bildevalg
                // Get the uri of the image from data
                selectedImageUri = data.getData(); // Henter URIen til bildet fra data
                if (null != selectedImageUri) { // Sjekker om URIen er ikke-null
                    imagePreview.setImageURI(selectedImageUri); // Setter forhåndsvisningen av bildet

                    int flags = Intent.FLAG_GRANT_READ_URI_PERMISSION; // Setter flagg for lesetillatelse på URIen

                    getContentResolver().takePersistableUriPermission(selectedImageUri, flags); // Gir varig tilgang til URIen
                }
            }
        }
    }

    void imageChooser() { // Metode for å starte bildevelgeren
        Intent i = new Intent(); // Oppretter ny Intent
        i.setType("image/*"); // Setter typen til bildene som skal vises
        i.setAction(Intent.ACTION_GET_CONTENT); // Setter handlingen til å få innhold

        // dont care if its deprecated, the alternative is painful
        startActivityForResult(Intent.createChooser(i, "Select Picture"), 124); // Starter aktiviteten for resultat med requestCode 124
    }
}
