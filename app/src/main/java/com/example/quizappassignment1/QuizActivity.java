package com.example.quizappassignment1; // Pakkedeklarasjon

import android.content.Intent; // Importerer nødvendige Android-klasser
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity; // Importerer nødvendige AndroidX-klasser

import com.example.quizappassignment1.model.Option; // Importerer Option-klassen fra model-pakken
import com.example.quizappassignment1.model.Storage; // Importerer Storage-klassen fra model-pakken

import java.util.List; // Importerer nødvendige Java-klasser

public class QuizActivity extends AppCompatActivity { // Klasse-deklarasjon som utvider AppCompatActivity

    Option correct; // Deklarerer variabler
    int correctIndex;
    List<String> options;
    Button btnOption1;
    Button btnOption2;
    Button btnOption3;
    ImageView imageView;
    TextView pointsText;
    TextView statusText;

    @Override
    protected void onCreate(Bundle savedInstanceState) { // Overskriver onCreate-metoden
        super.onCreate(savedInstanceState); // Kaller supermetoden
        setContentView(R.layout.activity_quiz); // Setter layouten for aktiviteten

        this.pointsText = findViewById(R.id.pointsText); // Finner og initialiserer TextView for poeng
        this.statusText = findViewById(R.id.statusTextView); // Finner og initialiserer TextView for status

        pointsText.setText("Points: " + Storage.getScore() + "/" + Storage.getAttempts()); // Oppdaterer tekst for poeng

        createQuiz(); // Oppretter quiz
    }

    private void onAnswer(int thisIndex) { // Metode for å håndtere svar
        // If we answered correct, increase points
        // Update status text
        if(correctIndex == thisIndex) { // Sjekker om svaret er korrekt
            Storage.setScore(Storage.getScore() + 1); // Øker poengsummen
            statusText.setText("Correct ✅"); // Oppdaterer status-teksten
        } else {
            statusText.setText("Incorrect ❌"); // Oppdaterer status-teksten
        }
        // Always increase attempts
        Storage.setAttempts(Storage.getAttempts() + 1); // Øker antall forsøk
        // And update points text
        float percentage = ((float) Storage.getScore() / Storage.getAttempts()) * 100; // Beregner prosentandel riktig svar
        int roundedPercentage = Math.round(percentage); // Avrund prosentandel
        String text = String.format("Points: %d/%d (%d%%)", Storage.getScore(), Storage.getAttempts(), roundedPercentage); // Formatterer tekst for poeng
        pointsText.setText(text); // Oppdaterer poeng-teksten

        // Update the buttons etc. (basically refresh view)
        createQuiz(); // Oppdaterer quiz
    }

    public void createQuiz() { // Metode for å opprette quiz
        correct = Storage.getOptionList().getRandomOption(); // Velger tilfeldig riktig svar
        options = Storage.getOptionList().getThreeRandomAnswers(correct); // Henter tre tilfeldige svaralternativer

        btnOption1 = findViewById(R.id.btnOption1); // Finner og initialiserer knapp for alternativ 1
        btnOption1.setText(options.get(0)); // Setter tekst for alternativ 1

        btnOption2 = findViewById(R.id.btnOption2); // Finner og initialiserer knapp for alternativ 2
        btnOption2.setText(options.get(1)); // Setter tekst for alternativ 2

        btnOption3 = findViewById(R.id.btnOption3); // Finner og initialiserer knapp for alternativ 3
        btnOption3.setText(options.get(2)); // Setter tekst for alternativ 3

        imageView = findViewById(R.id.quizImage); // Finner og initialiserer ImageView for bilde
        imageView.setImageURI(correct.getImage()); // Setter bilde for quiz

        correctIndex = options.indexOf(correct.getMatchingName()); // Henter indeks for riktig svar

        btnOption1.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på alternativ 1
            public void onClick(View v) { // Metode som kjøres ved klikk på alternativ 1
                onAnswer(0); // Behandler svar
            }
        });
        btnOption2.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på alternativ 2
            public void onClick(View v) { // Metode som kjøres ved klikk på alternativ 2
                onAnswer(1); // Behandler svar
            }
        });
        btnOption3.setOnClickListener(new View.OnClickListener() { // Setter lytter for klikk på alternativ 3
            public void onClick(View v) { // Metode som kjøres ved klikk på alternativ 3
                onAnswer(2); // Behandler svar
            }
        });
    }
}
