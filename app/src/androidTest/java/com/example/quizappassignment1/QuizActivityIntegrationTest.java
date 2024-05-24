package com.example.quizappassignment1; // Pakkedeklarasjon

import androidx.test.espresso.intent.Intents; // Importerer Intents fra Espresso for å håndtere intents
import androidx.test.espresso.matcher.ViewMatchers; // Importerer ViewMatchers fra Espresso for å matche visninger
import androidx.test.ext.junit.rules.ActivityScenarioRule; // Importerer ActivityScenarioRule fra AndroidX for å kjøre aktivitetsscenarioer
import androidx.test.ext.junit.runners.AndroidJUnit4; // Importerer testrunner for Android JUnit-tester

import com.example.quizappassignment1.QuizActivity; // Importerer QuizActivity-klassen fra appen
import com.example.quizappassignment1.R; // Importerer R fra appen for å referere til ressurs-IDer
import com.example.quizappassignment1.model.Option; // Importerer Option-klassen fra appen for å representere et alternativ
import com.example.quizappassignment1.model.Storage; // Importerer Storage-klassen fra appen for å håndtere lagring av data

import org.junit.After; // Importerer JUnit-annotasjon for metode som skal kjøres etter hver test
import org.junit.Before; // Importerer JUnit-annotasjon for metode som skal kjøres før hver test
import org.junit.Rule; // Importerer JUnit-annotasjon for testregel
import org.junit.Test; // Importerer JUnit-annotasjon for testmetode
import org.junit.runner.RunWith; // Importerer JUnit-annotasjon for testrunner

import java.lang.reflect.Field; // Importerer Field fra Java for å arbeide med refleksjon
import java.util.List; // Importerer List fra Java for å representere en liste

import static androidx.test.espresso.Espresso.onView; // Importerer onView fra Espresso for å finne og utføre handlinger på en visning
import static androidx.test.espresso.action.ViewActions.click; // Importerer click fra Espresso for å utføre et klikk på en visning
import static androidx.test.espresso.assertion.ViewAssertions.matches; // Importerer matches fra Espresso for å utføre asserter på en visning
import static androidx.test.espresso.matcher.ViewMatchers.isDisplayed; // Importerer isDisplayed fra Espresso for å matche om en visning er synlig
import static androidx.test.espresso.matcher.ViewMatchers.withId; // Importerer withId fra Espresso for å finne visninger med en spesifikk ID
import static androidx.test.espresso.matcher.ViewMatchers.withText; // Importerer withText fra Espresso for å finne visninger med en spesifikk tekst
import static org.hamcrest.Matchers.containsString; // Importerer containsString fra Hamcrest for å sjekke om en tekst inneholder en annen tekst
import static org.hamcrest.Matchers.not; // Importerer not fra Hamcrest for å negere et matcher-resultat

import android.util.Log; // Importerer Log fra Android for å utføre logging

@RunWith(AndroidJUnit4.class) // Angir at testen skal kjøres med AndroidJUnit4-testrunneren
public class QuizActivityIntegrationTest { // Klasse-deklarasjon for integrasjonstest av QuizActivity

    @Rule // JUnit-annotasjon for å angi en regel for testen
    public ActivityScenarioRule<QuizActivity> activityRule = new ActivityScenarioRule<>(QuizActivity.class); // Regel for å starte QuizActivity før testen kjører

    @After // JUnit-annotasjon for metode som skal kjøres etter hver test
    public void tearDown() { // Metode for opprydding etter test
        // Release Espresso-Intents after the test
        Intents.release(); // Frigjør Espresso-Intents etter testen
    }

    @Test // JUnit-annotasjon for testmetode
    public void testCorrectAnswer() { // Metode for å teste riktig svar
        // Get the initial score
        int initialScore = Storage.getScore(); // Lagrer opprinnelig poengsum

        // Find the correct option
        try { // Prøver å finne det riktige alternativet
            Field field = QuizActivity.class.getDeclaredField("correct"); // Finner feltet "correct" i QuizActivity
            field.setAccessible(true); // Setter feltet tilgjengelig for tilgang
            Option variableValue = (Option) field.get(activityRule.getScenario()); // Henter verdien til feltet "correct"
            // Now you can use variableValue in your assertions

            Log.d("TEST", variableValue.getMatchingName()); // Logger det matchende navnet til det riktige alternativet
        } catch (NoSuchFieldException | IllegalAccessException e) { // Håndterer unntak
            e.printStackTrace(); // Skriver ut feilmeldingen
        }

        Option correctOption = Storage.getOptionList().getCorrectOption(); // Henter det riktige alternativet fra lagringen

        // Find the correct button and click it
        onView(withText(correctOption.getMatchingName())).perform(click()); // Finner og klikker på knappen for det riktige alternativet

        // Verify that the status text shows "Correct"
        onView(withId(R.id.statusTextView)).check(matches(withText(containsString("Correct")))); // Sjekker at statusmeldingen viser "Correct"

        // Verify that the score has increased by 1
        onView(withId(R.id.pointsText)).check(matches(withText(containsString(initialScore + 1 + "/")))); // Sjekker at poengsummen har økt med 1
    }

    @Test // JUnit-annotasjon for testmetode
    public void testIncorrectAnswer() { // Metode for å teste feil svar
        // Get the initial score
        int initialScore = Storage.getScore(); // Lagrer opprinnelig poengsum

        // Find the correct option
        Option correctOption = Storage.getOptionList().getCorrectOption(); // Henter det riktige alternativet fra lagringen

        // Find the incorrect option (any option other than correct)
        List<Option> allOptions = Storage.getOptionList().getAllOptions(); // Henter alle alternativer fra lagringen
        Option incorrectOption = null; // Setter det feil alternativet til null
        for (Option option : allOptions) { // Går gjennom alle alternativene
            if (!option.equals(correctOption)) { // Hvis altern
                incorrectOption = option; // Setter det feil alternativet til gjeldende alternativ
                break; // Avbryter løkken når det feil alternativet er funnet
            }

            // Find the button corresponding to the incorrect option and click it
            onView(withText(incorrectOption.getMatchingName())).perform(click()); // Finner og klikker på knappen for det feil alternativet

            // Verify that the status text shows "Incorrect"
            onView(withId(R.id.statusTextView)).check(matches(withText(containsString("Incorrect")))); // Sjekker at statusmeldingen viser "Incorrect"

            // Verify that the score remains the same
            onView(withId(R.id.pointsText)).check(matches(withText(containsString(initialScore + "/")))); // Sjekker at poengsummen er uendret
        }
    }
}