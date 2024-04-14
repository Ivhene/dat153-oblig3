package com.example.quizappassignment1;

import androidx.test.espresso.intent.Intents;
import androidx.test.espresso.matcher.ViewMatchers;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.ext.junit.runners.AndroidJUnit4;

import com.example.quizappassignment1.QuizActivity;
import com.example.quizappassignment1.R;
import com.example.quizappassignment1.model.Option;
import com.example.quizappassignment1.model.Storage;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.util.List;

import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.action.ViewActions.click;
import static androidx.test.espresso.assertion.ViewAssertions.matches;
import static androidx.test.espresso.matcher.ViewMatchers.isDisplayed;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static androidx.test.espresso.matcher.ViewMatchers.withText;
import static org.hamcrest.Matchers.containsString;
import static org.hamcrest.Matchers.not;

@RunWith(AndroidJUnit4.class)
public class QuizActivityIntegrationTest {

    @Rule
    public ActivityScenarioRule<QuizActivity> activityRule = new ActivityScenarioRule<>(QuizActivity.class);

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
    public void testCorrectAnswer() {
        // Get the initial score
        int initialScore = Storage.getScore();

        // Find the correct option
        Option correctOption = Storage.getOptionList().getCorrectOption();

        // Find the correct button and click it
        onView(withText(correctOption.getMatchingName())).perform(click());

        // Verify that the status text shows "Correct"
        onView(withId(R.id.statusTextView)).check(matches(withText(containsString("Correct"))));

        // Verify that the score has increased by 1
        onView(withId(R.id.pointsText)).check(matches(withText(containsString(initialScore + 1 + "/"))));
    }

    @Test
    public void testIncorrectAnswer() {
        // Get the initial score
        int initialScore = Storage.getScore();

        // Find the correct option
        Option correctOption = Storage.getOptionList().getCorrectOption();

        // Find the incorrect option (any option other than correct)
        List<Option> allOptions = Storage.getOptionList().getAllOptions();
        Option incorrectOption = null;
        for (Option option : allOptions) {
            if (!option.equals(correctOption)) {
                incorrectOption = option;
                break;
            }
        }

        // Find the button corresponding to the incorrect option and click it
        onView(withText(incorrectOption.getMatchingName())).perform(click());

        // Verify that the status text shows "Incorrect"
        onView(withId(R.id.statusTextView)).check(matches(withText(containsString("Incorrect"))));

        // Verify that the score remains the same
        onView(withId(R.id.pointsText)).check(matches(withText(containsString(initialScore + "/"))));
    }
}
