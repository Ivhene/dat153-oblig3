package com.example.quizappassignment1; // Pakkedeklarasjon

import static androidx.test.espresso.Espresso.closeSoftKeyboard; // Importerer closeSoftKeyboard fra Espresso for å lukke tastaturet
import static androidx.test.espresso.Espresso.onView; // Importerer onView fra Espresso for å finne og utføre handlinger på en visning
import static androidx.test.espresso.action.ViewActions.click; // Importerer click fra Espresso for å utføre et klikk på en visning
import static androidx.test.espresso.action.ViewActions.replaceText; // Importerer replaceText fra Espresso for å erstatte tekst i en visning
import static androidx.test.espresso.action.ViewActions.typeText; // Importerer typeText fra Espresso for å skrive tekst i en visning
import static androidx.test.espresso.intent.matcher.IntentMatchers.hasAction; // Importerer hasAction fra Espresso for å matche intents med en spesifikk handling
import static androidx.test.espresso.matcher.ViewMatchers.withId; // Importerer withId fra Espresso for å finne visninger med en spesifikk ID

import static junit.framework.TestCase.assertEquals; // Importerer assertEquals fra JUnit for å sammenligne verdier
import static junit.framework.TestCase.assertTrue; // Importerer assertTrue fra JUnit for å sjekke om en betingelse er sann

import android.app.Activity; // Importerer Activity fra Android for å håndtere aktiviteter
import android.app.Instrumentation; // Importerer Instrumentation fra Android for å utføre tester på Android-enheter
import android.content.Intent; // Importerer Intent fra Android for å representere en applikasjons "intention" for å utføre en spesifikk handling
import android.net.Uri; // Importerer Uri fra Android for å representere en universell ressursidentifikator

import androidx.test.espresso.Espresso; // Importerer Espresso for å utføre brukerhandlinger på appen
import androidx.test.espresso.action.ViewActions; // Importerer ViewActions fra Espresso for å utføre handlinger på visninger
import androidx.test.espresso.intent.Intents; // Importerer Intents fra Espresso for å håndtere intents
import androidx.test.espresso.intent.matcher.IntentMatchers; // Importerer IntentMatchers fra Espresso for å matche intents
import androidx.test.espresso.matcher.ViewMatchers; // Importerer ViewMatchers fra Espresso for å matche visninger
import androidx.test.ext.junit.rules.ActivityScenarioRule; // Importerer ActivityScenarioRule fra AndroidX for å kjøre aktivitetsscenarioer
import androidx.test.ext.junit.runners.AndroidJUnit4; // Importerer testrunner for Android JUnit-tester

import com.example.quizappassignment1.model.Storage; // Importerer Storage-klassen fra model-pakken

import org.junit.After; // Importerer JUnit-annotasjon for metode som skal kjøres etter hver test
import org.junit.Before; // Importerer JUnit-annotasjon for metode som skal kjøres før hver test
import org.junit.Rule; // Importerer JUnit-annotasjon for testregel
import org.junit.Test; // Importerer JUnit-annotasjon for testmetode
import org.junit.runner.RunWith; // Importerer JUnit-annotasjon for testrunner

@RunWith(AndroidJUnit4.class) // Angir at testen skal kjøres med AndroidJUnit4-testrunneren
public class NewOptionActivityIntegrationTest { // Klasse-deklarasjon for integrasjonstest av NewOptionActivity

    @Rule // JUnit-annotasjon for å angi en regel for testen
    public ActivityScenarioRule<NewOptionActivity> activityRule = new ActivityScenarioRule<>(NewOptionActivity.class); // Regel for å starte NewOptionActivity før testen kjører

    @Before // JUnit-annotasjon for metode som skal kjøres før hver test
    public void setUp() { // Metode for oppsett før test
        // Initialize Espresso-Intents for handling intents
        Intents.init(); // Initialiserer Espresso-Intents for håndtering av intents
    }

    @After // JUnit-annotasjon for metode som skal kjøres etter hver test
    public void tearDown() { // Metode for opprydding etter test
        // Release Espresso-Intents after the test
        Intents.release(); // Frigjør Espresso-Intents etter testen
    }

    @Test // JUnit-annotasjon for testmetode
    public void addOption() { // Metode for å teste legge til et alternativ
        // Check the initial size of the list
        int initialSize = Storage.getOptionList().getOptionList().size(); // Lagrer opprinnelig størrelse på listen over alternativer

        // Stub the intent to return some dummy image data. Still need to click an image
        Intents.intending(hasAction(Intent.ACTION_GET_CONTENT)) // Angir handlingen for intents som skal bli "stubbed"
                .respondWith(new Instrumentation.ActivityResult(Activity.RESULT_OK, getDummyImageData())); // Angir responsen for intercepted intents

        // Click on the button to choose an image
        Espresso.onView(ViewMatchers.withId(R.id.btnChooseImage)).perform(ViewActions.click()); // Klikker på knappen for å velge et bilde

        // Replace text in the input field (assuming it has ID inputName)
        Espresso.onView(withId(R.id.inputName)).perform(replaceText("Test Name"), ViewActions.closeSoftKeyboard()); // Erstatter tekst i inputfeltet og lukker tastaturet

        // Click on the button to add the image
        Espresso.onView(withId(R.id.btnAddImage)).perform(ViewActions.click()); // Klikker på knappen for å legge til bildet

        // Check that the size has increased
        assertTrue(Storage.getOptionList().getOptionList().size() > initialSize); // Sjekker at størrelsen har økt

        // Make sure the size only increased by one
        assertEquals(initialSize + 1, Storage.getOptionList().getOptionList().size()); // Sjekker at størrelsen har økt med ett element
    }

    private Intent getDummyImageData() { // Metode for å hente dummy-bildedatalinken
        Intent resultIntent = new Intent(); // Oppretter en ny Intent

        // Add dummy image data to the result intent
        resultIntent.setData(Uri.parse("content://dummy/image")); // Legger til dummy-bildedatalinken til Intent
        resultIntent.setType("image/*"); // Setter typen til bildedata
        return resultIntent; // Returnerer Intent med dummy-bildedatalinken
    }
}
