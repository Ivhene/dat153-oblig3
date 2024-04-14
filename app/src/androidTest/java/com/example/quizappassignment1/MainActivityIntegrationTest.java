package com.example.quizappassignment1;

import androidx.test.core.app.ActivityScenario;
import androidx.test.espresso.Espresso;
import androidx.test.espresso.action.ViewActions;
import androidx.test.espresso.intent.Intents;
import androidx.test.espresso.intent.matcher.IntentMatchers;
import androidx.test.espresso.matcher.ViewMatchers;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import static androidx.test.espresso.intent.Intents.intended;
import static androidx.test.espresso.intent.Intents.intending;
import static androidx.test.espresso.intent.matcher.IntentMatchers.hasComponent;
import static androidx.test.espresso.intent.matcher.IntentMatchers.toPackage;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static org.hamcrest.Matchers.allOf;

import android.app.Activity;
import android.app.Instrumentation;

@RunWith(AndroidJUnit4.class)
public class MainActivityIntegrationTest {

    @Rule
    public ActivityScenarioRule<MainActivity> activityRule = new ActivityScenarioRule<>(MainActivity.class);

    @Before
    public void setUp() {
        Intents.init();
    }

    @After
    public void tearDown() {
        Intents.release();
    }

    @Test
    public void goToGallery() {
        // Intercept the intent
        intending(allOf(
                hasComponent(GalleryActivity.class.getName()),
                toPackage("com.example.quizappassignment1")))
                .respondWith(new Instrumentation.ActivityResult(Activity.RESULT_OK, null));

        // Click on the openGallery button
        Espresso.onView(ViewMatchers.withId(R.id.openGallery)).perform(ViewActions.click());

        // Check if GalleryActivity is launched
        intended(allOf(
                hasComponent(GalleryActivity.class.getName()),
                toPackage("com.example.quizappassignment1")));
    }

    @Test
    public void goToQuiz() {
        // Intercept the intent
        intending(allOf(
                hasComponent(QuizActivity.class.getName()),
                toPackage("com.example.quizappassignment1")))
                .respondWith(new Instrumentation.ActivityResult(Activity.RESULT_OK, null));

        // Click on the openQuiz button
        Espresso.onView(ViewMatchers.withId(R.id.openQuiz)).perform(ViewActions.click());

        // Check if QuizActivity is launched
        intended(allOf(
                hasComponent(QuizActivity.class.getName()),
                toPackage("com.example.quizappassignment1")));
    }
}
