package com.example.quizappassignment1.model;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import com.example.quizappassignment1.R;
import com.example.quizappassignment1.model.Option;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Class used to store the list of available options
 */
public class OptionList extends AndroidViewModel { // Definerer en klasse kalt OptionList som utvider AndroidViewModel
    private List<Option> optionList; // En liste som inneholder alternativene
    private String sortType; // Typen sortering som skal utføres
    private Option correctOption; // Det riktige alternativet
    private List<Option> allOptions; // Alle alternativene

    public OptionList(@NonNull Application application) { // Konstruktør som tar imot en applikasjon som parameter
        super(application); // Kaller konstruktøren til AndroidViewModel
        this.optionList = new ArrayList<Option>(); // Oppretter en ny tom liste for alternativer
        this.sortType = "alphabetical"; // Setter standard sortering til alfabetisk
        this.correctOption = null; // Setter det riktige alternativet til null
        this.allOptions = new ArrayList<Option>(); // Oppretter en ny tom liste for alle alternativer
    }

    public List<Option> getOptionList() { // Metode for å hente listen over alternativer
        return optionList; // Returnerer listen over alternativer
    }

    public void setOptionList(List<Option> optionList) { // Metode for å sette listen over alternativer
        this.optionList = optionList; // Setter listen over alternativer til den gitte listen
    }

    public String getSortType() { // Metode for å hente typen sortering
        return sortType; // Returnerer typen sortering
    }

    public void setSortType(String sortType) { // Metode for å sette typen sortering
        this.sortType = sortType; // Setter typen sortering til den gitte typen
    }

    public void changeSortType() { // Metode for å endre typen sortering
        if(sortType.equals("alphabetical")) // Sjekker om sorteringen er alfabetisk
            sortType = "reverse"; // Endrer til omvendt sortering
        else
            sortType = "alphabetical"; // Endrer til alfabetisk sortering
    }

    /**
     * Method to add a new Option
     * @param newEntry - new Option object
     */
    public void add(Option newEntry) { // Metode for å legge til et nytt alternativ
        optionList.add(newEntry); // Legger til det nye alternativet i listen
        sort(); // Sorterer listen
    }

    public void remove(Option entry) { // Metode for å fjerne et alternativ
        optionList.remove(entry); // Fjerner det gitte alternativet fra listen
    }

    /**
     * Gets a random option from the Optionlist
     * @return
     */
    public Option getRandomOption() { // Metode for å hente et tilfeldig alternativ
        List<Option> copy = optionList; // Kopierer listen over alternativer
        Option prev = copy.get(0); // Henter det første alternativet i kopien

        while(copy.get(0).getMatchingName().equals(prev.getMatchingName())) { // Sjekker om det første alternativet er det samme som det forrige
            Collections.shuffle(copy); // Blander kopien av listen
        }
        correctOption = copy.get(0); // Setter det korrekte alternativet til det første i den blandede listen
        return copy.get(0); // Returnerer det første alternativet i den blandede listen
    }

    /**
     * Method to sort the list A-Z based on names
     */
    public void sort() { // Metode for å sortere listen A-Å basert på navn
        if(sortType.equals("alphabetical")) // Sjekker om sorteringen er alfabetisk
            optionList.sort((a, b) -> a.getMatchingName().compareTo(b.getMatchingName())); // Sorterer listen alfabetisk
        if(!sortType.equals("alphabetical")) // Sjekker om sorteringen ikke er alfabetisk
            optionList.sort((a, b) -> b.getMatchingName().compareTo(a.getMatchingName())); // Sorterer listen omvendt alfabetisk
    }

    /**
     * Gets two random names and the correct name in a list
     * @param correct
     * @return
     */
    public List<String> getThreeRandomAnswers(Option correct) { // Metode for å hente tre tilfeldige navn og det riktige navnet i en liste
        List<String> answers = new ArrayList<String>(); // Oppretter en ny tom liste for svaralternativer
        List<Option> copy = optionList; // Kopierer listen over alternativer
        List<Option> options = new ArrayList<Option>(); // Oppretter en ny tom liste for alternativene

        answers.add(correct.getMatchingName()); // Legger til det korrekte navnet i listen over svaralternativer

        Collections.shuffle(copy); // Blander kopien av listen over alternativer

        Option wrongOption1, wrongOption2; // Deklarerer variabler for feilaktige alternativer

        if(copy.get(0).equals(correct)) { // Sjekker om det første alternativet i kopien er det samme som det korrekte
            wrongOption1 = copy.get(1); // Hvis det er det samme, velger det andre alternativet som feilaktig
            wrongOption2 = copy.get(2); // Velger det tredje alternativet som feilaktig
        } else {
            wrongOption1 = copy.get(0); // Hvis ikke, velger det første alternativet som feilaktig
            if(copy.get(1).equals(correct)) { // Sjekker om det andre alternativet i kopien er det samme som det korrekte
                wrongOption2 = copy.get(2); // Hvis det er det samme, velger det tredje alternativet som feilaktig
            } else {
                wrongOption2 = copy.get(1); // Hvis ikke, velger det andre alternativet som feilaktig
            }
        }

        options.add(correct); // Legger til det korrekte alternativet i listen over alternativer
        options.add(wrongOption1); // Legger til det første feilaktige alternativet i listen over alternativer
        options.add(wrongOption2); // Legger til det andre feilaktige alternativet i listen over alternativer

        allOptions = options; // Setter alle alternativene til å være de opprettede altern
        allOptions = options; // Setter alle alternativene til å være de opprettede alternativene

        answers.add(wrongOption1.getMatchingName()); // Legger til det første feilaktige alternativets navn i listen over svaralternativer
        answers.add(wrongOption2.getMatchingName()); // Legger til det andre feilaktige alternativets navn i listen over svaralternativer

        Collections.shuffle(answers); // Blander listen over svaralternativer

        return answers; // Returnerer listen over svaralternativer
    }

    @Override
    public String toString() { // Metode for å representere objektet som en streng
        StringBuilder str = new StringBuilder("List: { \n"); // Oppretter en StringBuilder for å bygge opp strengen
        for(Option o : optionList) { // Går gjennom hvert alternativ i listen
            str.append(o.getImage()).append(" ").append(o.getMatchingName()).append("\n"); // Legger til bildet og navnet til hvert alternativ i strengen
        }
        str.append("}"); // Legger til avsluttende klammeparentes i strengen
        return str.toString(); // Returnerer strengen
    }

    public Option getCorrectOption() { // Metode for å hente det riktige alternativet
        return correctOption; // Returnerer det riktige alternativet
    }

    public void setCorrectOption(Option correctOption) { // Metode for å sette det riktige alternativet
        this.correctOption = correctOption; // Setter det riktige alternativet til det gitte alternativet
    }

    public List<Option> getAllOptions() { // Metode for å hente alle alternativene
        return allOptions; // Returnerer alle alternativene
    }
}
