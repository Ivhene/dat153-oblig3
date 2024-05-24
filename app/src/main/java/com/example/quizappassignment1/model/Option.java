package com.example.quizappassignment1.model;

import android.net.Uri;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;

import java.util.Objects;

/**
 * Klasse for å lagre Uri og tilhørende navn
 */
@Entity(tableName = "Options")
public class Option {

    // Unik identifikator for opsjonen
    @ColumnInfo(name = "option_id")
    @PrimaryKey(autoGenerate = true)
    private int id;

    // Strengrepresentasjon av Uri for bildet
    @ColumnInfo(name = "image_string")
    private String imageStr;

    // Navnet som samsvarer med bildet
    @ColumnInfo(name = "matching_name")
    private String matchingName;

    // Ignorerer denne konstruktøren for Room-databasen
    @Ignore
    public Option() {

    }

    /**
     * Konstruktør for Option-klassen
     * @param imageStr - Uri for bildet
     * @param matchingName - navnet assosiert med bildet
     */
    public Option(String imageStr, String matchingName) {
        this.imageStr = imageStr;
        this.matchingName = matchingName;
        this.id = 0;
    }

    // Metode for å hente unik identifikator for opsjonen
    public int getId() {
        return id;
    }

    // Metode for å sette unik identifikator for opsjonen
    public void setId(int id) {
        this.id = id;
    }

    // Metode for å hente Uri for bildet
    public Uri getImage() {
        return Uri.parse(imageStr);
    }

    // Metode for å sette Uri for bildet
    public void setImage(Uri image) {
        this.imageStr = image.toString();
    }

    // Metode for å hente strengrepresentasjon av Uri for bildet
    public String getImageStr() {
        return imageStr;
    }

    // Metode for å sette strengrepresentasjon av Uri for bildet
    public void setImageStr(String imageStr) {
        this.imageStr = imageStr;
    }

    // Metode for å hente navnet som samsvarer med bildet
    public String getMatchingName() {
        return matchingName;
    }

    // Metode for å sette navnet som samsvarer med bildet
    public void setMatchingName(String matchingName) {
        this.matchingName = matchingName;
    }

    // Overstyrer equals-metoden for å sammenligne Option-objekter
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Option option = (Option) o;
        return imageStr.equals(option.imageStr) && Objects.equals(matchingName, option.matchingName);
    }

    // Overstyrer hashCode-metoden for å generere hashverdi for Option-objekter
    @Override
    public int hashCode() {
        return Objects.hash(imageStr, matchingName);
    }

    // Overstyrer toString-metoden for å generere strengrepresentasjon av Option-objekter
    @Override
    public String toString() {
        return "Option{" +
                "imageStr='" + imageStr + '\'' +
                ", matchingName='" + matchingName + '\'' +
                '}';
    }
}
