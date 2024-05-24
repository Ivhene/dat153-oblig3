package com.example.quizappassignment1.model; // Pakkedeklarasjon

import android.app.Application; // Importerer nødvendige Android-klasser
import android.content.ContentResolver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

import androidx.annotation.NonNull; // Importerer nødvendige AndroidX-annotasjoner
import androidx.room.Room; // Importerer nødvendige Room-klasser
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;

import com.example.quizappassignment1.R; // Importerer R-klassen fra app-pakken
import com.example.quizappassignment1.dao.OptionDatabase; // Importerer OptionDatabase-klassen fra dao-pakken

import java.util.concurrent.ExecutorService; // Importerer nødvendige Java-klasser
import java.util.concurrent.Executors;

public class Storage extends Application { // Klasse-deklarasjon som utvider Application
    private static OptionList optionList; // Deklarerer statiske variabler
    private static int score;
    private static int attempts;
    public static OptionDatabase optionDatabase; // Deklarerer statisk variabel

    @Override
    public void onCreate() { // Overskriver onCreate-metoden
        super.onCreate(); // Kaller supermetoden
        Storage.optionList = new OptionList(this); // Initialiserer optionList
        score = 0; // Initialiserer score
        attempts = 0; // Initialiserer forsøk

        RoomDatabase.Callback callback = new RoomDatabase.Callback() { // Oppretter RoomDatabase callback
            @Override
            public void onCreate(@NonNull SupportSQLiteDatabase db) { // Overskriver onCreate-metoden
                super.onCreate(db); // Kaller supermetoden
            }

            @Override
            public void onOpen(@NonNull SupportSQLiteDatabase db) { // Overskriver onOpen-metoden
                super.onOpen(db); // Kaller supermetoden
            }
        };

        optionDatabase = Room // Oppretter Room-database-instans
                .databaseBuilder(getApplicationContext(), OptionDatabase.class, "OptionDatabase") // Bygger database
                .addCallback(callback) // Legger til tilbakeroppringing
                .build(); // Bygger database-instans

        getOptionsInBackground(); // Kaller metode for å få alternativer i bakgrunnen
    }

    private void getOptionsInBackground() { // Metode for å få alternativer i bakgrunnen
        ExecutorService executorService = Executors.newSingleThreadExecutor(); // Oppretter executor service

        Handler handler = new Handler(Looper.getMainLooper()); // Oppretter handler for hovedtråden

        executorService.execute(new Runnable() { // Utfører oppgave i bakgrunnen
            @Override
            public void run() { // Utfører oppgave
                // oppgave utført i bakgrunnen
                optionList.setOptionList(optionDatabase.getOptionDAO().getOptions()); // Setter alternativliste

                // når oppgaven er ferdig
                handler.post(new Runnable() { // Legger ut oppgave til hovedtråden
                    @Override
                    public void run() { // Utfører oppgave
                        Toast.makeText(getApplicationContext(), "Data fetched", Toast.LENGTH_SHORT).show(); // Viser toast-melding

                        Log.d("TEST", optionList.getOptionList().size() + ""); // Logger størrelsen på alternativlisten
                        // Hvis du har mindre enn 3, har databasen aldri blitt initialisert
                        if (optionList.getOptionList().size() < 3) { // Sjekker om alternativlisten er mindre enn 3
                            convertImageToUriAndAddToList(R.drawable.kamera, "Camera"); // Konverterer bilde og legger til i listen
                            convertImageToUriAndAddToList(R.drawable.natur, "Nature"); // Konverterer bilde og legger til i listen
                            convertImageToUriAndAddToList(R.drawable.loanlink_logo, "Loanlink"); // Konverterer bilde og legger til i listen
                            convertImageToUriAndAddToList(R.drawable.tre, "Tree"); // Konverterer bilde og legger til i listen
                        }
                    }
                });
            }
        });
    }

    public static OptionList getOptionList() { // Metode for å få alternativlisten
        return optionList; // Returnerer alternativlisten
    }

    public static void setOptionList(OptionList optionList) { // Metode for å sette alternativlisten
        Storage.optionList = optionList; // Setter alternativlisten
    }

    public static int getScore() { // Metode for å få score
        return score; // Returnerer score
    }

    public static void setScore(int score) { // Metode for å sette score
        Storage.score = score; // Setter score
    }

    public static int getAttempts() { // Metode for å få forsøk
        return attempts; // Returnerer forsøk
    }

    public static void setAttempts(int attempts) { // Metode for å sette forsøk
        Storage.attempts = attempts; // Setter forsøk
    }

    public void convertImageToUriAndAddToList(int imageResourceId, String name) { // Metode for å konvertere bilde til Uri og legge til i listen
        Uri imageUri = new Uri.Builder() // Bygger Uri for bilde
                .scheme(ContentResolver.SCHEME_ANDROID_RESOURCE) // "android.resource"
                .authority(getResources().getResourcePackageName(imageResourceId)) // Setter autoritet
                .appendPath(getResources().getResourceTypeName(imageResourceId)) // Legger til sti
                .appendPath(getResources().getResourceEntryName(imageResourceId)) // Legger til sti
                .build(); // Bygger Uri
        Option newOption = new Option(imageUri.toString(), name); // Oppretter ny Option-instans
        optionList.add(newOption); // Legger til alternativ i listen
        saveToDatabase(newOption); // Lagrer alternativ i databasen
    }

    public void saveToDatabase(Option option) { // Metode for å lagre alternativ i databasen
        ExecutorService executorService = Executors.newSingleThreadExecutor(); // Oppretter executor service

        Handler handler = new Handler(Looper.getMainLooper()); // Oppretter handler for hovedtråden

        executorService.execute(new Runnable() { // Utfører oppgave i bakgrunnen
            @Override
            public void run() { // Utfører oppgave
                // oppgave utført i bakgrunnen
                Storage.optionDatabase.getOptionDAO().addOption(option); // Legger til alternativ i databasen

                // når oppgaven er ferdig
                handler.post(new Runnable() { // Legger ut oppgave til hovedtråden
                    @Override
                    public void run() { // Utfører oppgave
                        Toast.makeText(getApplicationContext(), "Data fetched", Toast.LENGTH_SHORT
                        ).show(); // Viser toast-melding
                    }
                });
            }
        });
    }
}
