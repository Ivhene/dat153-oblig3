package com.example.quizappassignment1; // Pakkedeklarasjon

import androidx.test.core.app.ActivityScenario; // Importerer ActivityScenario for å kjøre aktivitetsscenarioer
import androidx.test.espresso.Espresso; // Importerer Espresso for å utføre brukerhandlinger på appen
import androidx.test.espresso.action.ViewActions; // Importerer ViewActions for å utføre handlinger på visninger
import androidx.test.espresso.intent.Intents; // Importerer Intents fra Espresso for å håndtere intents
import androidx.test.espresso.intent.matcher.IntentMatchers; // Importerer IntentMatchers for å matche intents
import androidx.test.espresso.matcher.ViewMatchers; // Importerer ViewMatchers for å matche visninger
import androidx.test.ext.junit.rules.ActivityScenarioRule; // Importerer ActivityScenarioRule for å kjøre aktivitetsscenarioer
import androidx.test.ext.junit.runners.AndroidJUnit4; // Importerer testrunner for Android JUnit-tester

import org.junit.After; // Importerer JUnit-annotasjon for metode som skal kjøres etter hver test
import org.junit.Before; // Importerer JUnit-annotasjon for metode som skal kjøres før hver test
import org.junit.Rule; // Importerer JUnit-annotasjon for testregel
import org.junit.Test; // Importerer JUnit-annotasjon for testmetode
import org.junit.runner.RunWith; // Importerer JUnit-annotasjon for testrunner

import static androidx.test.espresso.intent.Intents.intended; // Importerer Intents fra Espresso for å sjekke at intents ble sendt
import static androidx.test.espresso.intent.Intents.intending; // Importerer Intents fra Espresso for å håndtere intents
import static androidx.test.espresso.intent.matcher.IntentMatchers.hasComponent; // Importerer IntentMatchers fra Espresso for å matche intents som har en spesifikk komponent
import static androidx.test.espresso.intent.matcher.IntentMatchers.toPackage; // Importerer IntentMatchers fra Espresso for å matche intents som skal sendes til en spesifikk pakke
import static androidx.test.espresso.matcher.ViewMatchers.withId; // Importerer ViewMatchers fra Espresso for å matche visninger med en spesifikk ID
import static org.hamcrest.Matchers.allOf; // Importerer allOf fra Hamcrest for å kombinere flere matchere

import android.app.Activity; // Importerer Activity fra Android for å håndtere aktiviteter
import android.app.Instrumentation; // Importerer Instrumentation fra Android for å utføre tester på Android-enheter

@RunWith(AndroidJUnit4.class) // Angir at testen skal kjøres med AndroidJUnit4-testrunneren
public class MainActivityIntegrationTest { // Klasse-deklarasjon for integrasjonstest av MainActivity

    @Rule // JUnit-annotasjon for å angi en regel for testen
    public ActivityScenarioRule<MainActivity> activityRule = new ActivityScenarioRule<>(MainActivity.class); // Regel for å starte MainActivity før testen kjører

    @Before // JUnit-annotasjon for metode som skal kjøres før hver test
    public void setUp() { // Metode for oppsett før test
        Intents.init(); // Initialiserer Intents for håndtering av intents
    }

    @After // JUnit-annotasjon for metode som skal kjøres etter hver test
    public void tearDown() { // Metode for opprydding etter test
        Intents.release(); // Frigjør Intents etter testen
    }

    @Test // JUnit-annotasjon for testmetode
    public void goToGallery() { // Metode for å teste navigering til GalleryActivity
        // Intercept the intent
        intending(allOf(
                hasComponent(GalleryActivity.class.getName()), // Matcher intents som har GalleryActivity som komponent
                toPackage("com.example.quizappassignment1"))) // Matcher intents som skal sendes til pakken com.example.quizappassignment1
                .respondWith(new Instrumentation.ActivityResult(Activity.RESULT_OK, null)); // Angir responsen for intercepted intents

        // Click on the openGallery button
        Espresso.onView(ViewMatchers.withId(R.id.openGallery)).perform(ViewActions.click()); // Klikker på knappen for å åpne galleriet

        // Check if GalleryActivity is launched
        intended(allOf(
                hasComponent(GalleryActivity.class.getName()), // Sjekker om GalleryActivity er lansert
                toPackage("com.example.quizappassignment1"))); // Sjekker om intents ble sendt til riktig pakke
    }

    @Test // JUnit-annotasjon for testmetode
    public void goToQuiz() { // Metode for å teste navigering til QuizActivity
        // Intercept the intent
        intending(allOf(
                hasComponent(QuizActivity.class.getName()), // Matcher intents som har QuizActivity som komponent
                toPackage("com.example.quizappassignment1"))) // Matcher intents som skal sendes til pakken com.example.quizappassignment1
                .respondWith(new Instrumentation.ActivityResult(Activity.RESULT_OK, null)); // Angir responsen for intercepted intents

        // Click on the openQuiz button
        Espresso.onView(ViewMatchers.withId(R.id.openQuiz)).perform(ViewActions.click()); // Klikker på knappen for å åpne quizen

        // Check if QuizActivity is launched
        intended(allOf(
                hasComponent(QuizActivity.class.getName()), // Sjekker om QuizActivity er lansert
                toPackage("com.example.quizappassignment1"))); // Sjekker om intents ble sendt til riktig pakke
    }
}
