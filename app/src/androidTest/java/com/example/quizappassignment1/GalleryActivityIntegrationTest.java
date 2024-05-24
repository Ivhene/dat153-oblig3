package com.example.quizappassignment1; // Pakkedeklarasjon

import static androidx.test.espresso.Espresso.onData; // Importerer statiske metoder fra Espresso for å samhandle med data
import static androidx.test.espresso.Espresso.onView; // Importerer statiske metoder fra Espresso for å finne og utføre handlinger på en visning
import static androidx.test.espresso.action.ViewActions.click; // Importerer handling for å klikke på en visning
import static androidx.test.espresso.action.ViewActions.scrollTo; // Importerer handling for å rulle til en visning
import static androidx.test.espresso.assertion.ViewAssertions.matches; // Importerer asserter for å bekrefte tilstand av en visning
import static androidx.test.espresso.matcher.ViewMatchers.isDisplayed; // Importerer matcher for å sjekke om en visning er synlig
import static androidx.test.espresso.matcher.ViewMatchers.withId; // Importerer matcher for å finne visninger med en spesifikk ID
import static androidx.test.espresso.matcher.ViewMatchers.withText; // Importerer matcher for å finne visninger med en spesifikk tekst
import static androidx.test.espresso.contrib.RecyclerViewActions.actionOnItemAtPosition; // Importerer handling for å utføre en handling på et element på en spesifikk posisjon i en RecyclerView
import static androidx.test.espresso.contrib.RecyclerViewActions.scrollToPosition; // Importerer handling for å rulle til en spesifikk posisjon i en RecyclerView

import static org.hamcrest.CoreMatchers.anything; // Importerer matcher for å matche hva som helst
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import androidx.test.espresso.intent.Intents; // Importerer Espresso-Intents for å håndtere intents
import androidx.test.ext.junit.rules.ActivityScenarioRule; // Importerer regel for å kjøre en gitt aktivitetssenario
import androidx.test.ext.junit.runners.AndroidJUnit4; // Importerer testrunner for å kjøre Android JUnit-tester

import com.example.quizappassignment1.model.Storage; // Importerer Storage-klassen fra model-pakken

import org.junit.After; // Importerer JUnit-annotasjon for metode som skal kjøres etter hver test
import org.junit.Before; // Importerer JUnit-annotasjon for metode som skal kjøres før hver test
import org.junit.Rule; // Importerer JUnit-annotasjon for testregel
import org.junit.Test; // Importerer JUnit-annotasjon for testmetode
import org.junit.runner.RunWith; // Importerer JUnit-annotasjon for testrunner

@RunWith(AndroidJUnit4.class) // Angir at testen skal kjøres med AndroidJUnit4-testrunneren
public class GalleryActivityIntegrationTest { // Klasse-deklarasjon for integrasjonstest av GalleryActivity

    @Rule // JUnit-annotasjon for å angi en regel for testen
    public ActivityScenarioRule<GalleryActivity> activityRule = new ActivityScenarioRule<GalleryActivity>(GalleryActivity.class); // Regel for å starte GalleryActivity før testen kjører

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
    public void deleteOption() { // Metode for å teste sletting av alternativ
        int originalSize = Storage.getOptionList().getOptionList().size(); // Lagrer opprinnelig størrelse på listen over alternativer

        // Wait for the GalleryActivity to be loaded
        onView(withId(R.id.galleryList)).check(matches(isDisplayed())); // Sjekker om ListView for galleriet vises

        // Scroll to the first item in the list
        onData(anything()).inAdapterView(withId(R.id.galleryList)).atPosition(0).perform(scrollTo()); // Ruller til første element i listen

        // Click on the delete button for the first item
        onData(anything()).inAdapterView(withId(R.id.galleryList)).atPosition(0).onChildView(withId(R.id.deleteButton)).perform(click()); // Klikker på sletteknappen for første element

        // Verify that the item is removed from the ListView if there was enough images
        if (originalSize > 3) { // Sjekker om det var nok bilder til å slette ett
            assertTrue(Storage.getOptionList().getOptionList().size() < originalSize); // Sjekker om størrelsen på listen er mindre enn den opprinnelige størrelsen
            assertEquals(Storage.getOptionList().getOptionList().size(), originalSize - 1); // Sjekker om størrelsen på listen er én mindre enn den opprinnelige størrelsen
        }
        assertTrue(Storage.getOptionList().getOptionList().size() >= 3); // Sjekker om størrelsen på listen er minst tre
    }
}
