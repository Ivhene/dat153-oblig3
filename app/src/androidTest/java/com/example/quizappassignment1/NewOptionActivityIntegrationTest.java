package com.example.quizappassignment1;

import static androidx.test.espresso.Espresso.closeSoftKeyboard;
import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.action.ViewActions.click;
import static androidx.test.espresso.action.ViewActions.replaceText;
import static androidx.test.espresso.action.ViewActions.typeText;
import static androidx.test.espresso.intent.matcher.IntentMatchers.hasAction;
import static androidx.test.espresso.matcher.ViewMatchers.withId;

import static junit.framework.TestCase.assertEquals;
import static junit.framework.TestCase.assertTrue;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

import androidx.test.espresso.Espresso;
import androidx.test.espresso.action.ViewActions;
import androidx.test.espresso.intent.Intents;
import androidx.test.espresso.intent.matcher.IntentMatchers;
import androidx.test.espresso.matcher.ViewMatchers;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.ext.junit.runners.AndroidJUnit4;

import com.example.quizappassignment1.model.Storage;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(AndroidJUnit4.class)
public class NewOptionActivityIntegrationTest {

    @Rule
    public ActivityScenarioRule<NewOptionActivity> activityRule = new ActivityScenarioRule<NewOptionActivity>(NewOptionActivity.class);

    @Before
    public void setUp() {
        // Initialize Espresso-Intents for handling intents
        Intents.init();
    }

    @After
    public void tearDown() {
        // Release Espresso-Intents after the test
        Intents.release();
    }

    @Test
    public void addOption() {
        // Check the initial size of the list
        int initialSize = Storage.getOptionList().getOptionList().size();

        // Stub the intent to return some dummy image data. Still need to click an image
        Intents.intending(hasAction(Intent.ACTION_GET_CONTENT))
                .respondWith(new Instrumentation.ActivityResult(Activity.RESULT_OK, getDummyImageData()));

        // Click on the button to choose an image
        Espresso.onView(ViewMatchers.withId(R.id.btnChooseImage)).perform(click());

        // Replace text in the input field (assuming it has ID inputName)
        Espresso.onView(withId(R.id.inputName)).perform(replaceText("Test Name"), ViewActions.closeSoftKeyboard());

        // Click on the button to add the image
        Espresso.onView(withId(R.id.btnAddImage)).perform(click());

        // Check that the size has increased
        assertTrue(Storage.getOptionList().getOptionList().size() > initialSize);

        // Make sure the size only increased by one
        assertEquals(initialSize + 1, Storage.getOptionList().getOptionList().size());
    }

    private Intent getDummyImageData() {
        Intent resultIntent = new Intent();

        // Add dummy image data to the result intent
        resultIntent.setData(Uri.parse("content://dummy/image"));
        return resultIntent;
    }

}
