package com.example.quizappassignment1; // Pakkedeklarasjon

import androidx.annotation.NonNull; // Importerer nødvendige AndroidX-annotasjoner
import androidx.appcompat.app.AppCompatActivity; // Importerer nødvendige AndroidX-klasser
import androidx.room.Room; // Importerer nødvendige Room-klasser
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;

import android.content.Intent; // Importerer nødvendige Android-klasser
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;

import com.example.quizappassignment1.dao.OptionDatabase; // Importerer OptionDatabase-klassen fra dao-pakken
import com.example.quizappassignment1.model.Option; // Importerer Option-klassen fra model-pakken
import com.example.quizappassignment1.model.OptionList; // Importerer OptionList-klassen fra model-pakken

public class MainActivity extends AppCompatActivity { // Klasse-deklarasjon som utvider AppCompatActivity

    @Override
    protected void onCreate(Bundle savedInstanceState) { // Overskriver onCreate-metoden
        super.onCreate(savedInstanceState); // Kaller supermetoden
        setContentView(R.layout.activity_main); // Setter layouten for aktiviteten

        Button openGalleryButton = findViewById(R.id.openGallery); // Finner og initialiserer knappen for å åpne galleriet
        openGalleryButton.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på knappen
            public void onClick(View v) { // Metode som kjøres ved klikk på knappen
                Log.d("BUTTONS", "Open Gallery"); // Logger handlingen
                Intent intent = new Intent(MainActivity.this, GalleryActivity.class); // Oppretter ny Intent
                startActivity(intent); // Starter GalleryActivity
            }
        });

        Button openQuizButton = findViewById(R.id.openQuiz); // Finner og initialiserer knappen for å åpne quizen
        openQuizButton.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på knappen
            public void onClick(View v) { // Metode som kjøres ved klikk på knappen
                Log.d("BUTTONS", "Open Quiz"); // Logger handlingen
                Intent intent = new Intent(MainActivity.this, QuizActivity.class); // Oppretter ny Intent
                startActivity(intent); // Starter QuizActivity
            }
        });
    }
}
