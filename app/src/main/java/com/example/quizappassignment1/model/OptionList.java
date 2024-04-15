package com.example.quizappassignment1.model;

import android.app.Application;

import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;

import com.example.quizappassignment1.R;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Class used to store the list of available options
 */
public class OptionList extends AndroidViewModel {

    private List<Option> optionList;

    private String sortType;

    private Option correctOption;

    private List<Option> allOptions;

    public OptionList(@NonNull Application application) {
        super(application);
        this.optionList = new ArrayList<Option>();
        this.sortType = "alphabetical";
        this.correctOption = null;
        this.allOptions = new ArrayList<Option>();
    }

    public List<Option> getOptionList() {
        return optionList;
    }

    public void setOptionList(List<Option> optionList) {
        this.optionList = optionList;
    }

    public String getSortType() {
        return sortType;
    }

    public void setSortType(String sortType) {
        this.sortType = sortType;
    }

    public void changeSortType() {
        if(sortType.equals("alphabetical"))
            sortType = "reverse";
        else
            sortType = "alphabetical";
    }

    /**
     * Method to add a new Option
     * @param newEntry - new Option object
     */
    public void add(Option newEntry) {
        optionList.add(newEntry);
        sort();
    }

    public void remove(Option entry) {
        optionList.remove(entry);
        // No need to sort(); because a sorted list will never become unsorted after a delete operation
    }

    /**
     * Gets a random option from the Optionlist
     * @return
     */
    public Option getRandomOption() {
        List<Option> copy = optionList;
        Option prev = copy.get(0);

        while(copy.get(0).getMatchingName().equals(prev.getMatchingName())) {
            Collections.shuffle(copy);
        }
        correctOption = copy.get(0);
        return copy.get(0);
    }

    /**
     * Method to sort the list A-Z based on names
     */
    public void sort() {
        if(sortType.equals("alphabetical"))
            optionList.sort((a, b) -> a.getMatchingName().compareTo(b.getMatchingName()));

        if(!sortType.equals("alphabetical"))
            optionList.sort((a, b) -> b.getMatchingName().compareTo(a.getMatchingName()));
    }

    /**
     * Gets two random names and the correct name in a list
     * @param correct
     * @return
     */
    public List<String> getThreeRandomAnswers(Option correct) {
        List<String> answers = new ArrayList<String>();
        List<Option> copy = optionList;
        List<Option> options = new ArrayList<Option>();

        answers.add(correct.getMatchingName());

        Collections.shuffle(copy);

        Option wrongOption1, wrongOption2;

        if(copy.get(0).equals(correct)) {
            wrongOption1 = copy.get(1);
            wrongOption2 = copy.get(2);
        }
        else {
            wrongOption1 = copy.get(0);
            if(copy.get(1).equals(correct)) {
                wrongOption2 = copy.get(2);
            }
            else {
                wrongOption2 = copy.get(1);
            }
        }

        options.add(correct);
        options.add(wrongOption1);
        options.add(wrongOption2);

        allOptions = options;

        answers.add(wrongOption1.getMatchingName());
        answers.add(wrongOption2.getMatchingName());

        Collections.shuffle(answers);

        return answers;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder("List: { \n");
        for(Option o : optionList) {
            str.append(o.getImage()).append(" ").append(o.getMatchingName()).append("\n");
        }
        str.append("}");
        return str.toString();
    }

    public Option getCorrectOption() {
        return correctOption;
    }

    public void setCorrectOption(Option correctOption) {
        this.correctOption = correctOption;
    }

    public List<Option> getAllOptions() {
        return allOptions;
    }
}
