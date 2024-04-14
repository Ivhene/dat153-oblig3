package com.example.quizappassignment1;

import static androidx.test.espresso.Espresso.onData;
import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.action.ViewActions.click;
import static androidx.test.espresso.action.ViewActions.scrollTo;
import static androidx.test.espresso.assertion.ViewAssertions.matches;
import static androidx.test.espresso.matcher.ViewMatchers.isDisplayed;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static androidx.test.espresso.matcher.ViewMatchers.withText;
import static androidx.test.espresso.contrib.RecyclerViewActions.actionOnItemAtPosition;
import static androidx.test.espresso.contrib.RecyclerViewActions.scrollToPosition;

import static org.hamcrest.CoreMatchers.anything;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import androidx.test.espresso.intent.Intents;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.ext.junit.runners.AndroidJUnit4;

import com.example.quizappassignment1.model.Storage;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(AndroidJUnit4.class)
public class GalleryActivityIntegrationTest {

    @Rule
    public ActivityScenarioRule<GalleryActivity> activityRule = new ActivityScenarioRule<GalleryActivity>(GalleryActivity.class);

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
    public void deleteOption() {
        int originalSize = Storage.getOptionList().getOptionList().size();

        // Wait for the GalleryActivity to be loaded
        onView(withId(R.id.galleryList)).check(matches(isDisplayed()));

        // Scroll to the first item in the list
        onData(anything()).inAdapterView(withId(R.id.galleryList)).atPosition(0).perform(scrollTo());

        // Click on the delete button for the first item
        onData(anything()).inAdapterView(withId(R.id.galleryList)).atPosition(0).onChildView(withId(R.id.deleteButton)).perform(click());

        // Verify that the item is removed from the ListView if there was enough images
        if (originalSize > 3) {
            assertTrue(Storage.getOptionList().getOptionList().size() < originalSize);
            assertEquals(Storage.getOptionList().getOptionList().size(), originalSize - 1);
        }
        assertTrue(Storage.getOptionList().getOptionList().size() >= 3);
    }
}

