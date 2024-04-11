package com.example.quizappassignment1.model;

import android.net.Uri;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;

import java.util.Objects;

/**
 * Class to store Uri and the corresponding name
 */
@Entity(tableName = "Options")
public class Option {

    @ColumnInfo(name = "option_id")
    @PrimaryKey(autoGenerate = true)
    private int id;

    @ColumnInfo(name = "image_string")
    private String imageStr;

    @ColumnInfo(name = "matching_name")
    private String matchingName;

    @Ignore
    public Option() {

    }

    /**
     * Constructor for Option class
     * @param imageStr - Uri of the image
     * @param matchingName - the name assosiated with the image
     */
    public Option(String imageStr, String matchingName) {
        this.imageStr = imageStr;
        this.matchingName = matchingName;
        this.id = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    /**
     * Method to get the image
     * @return
     */
    public Uri getImage() {
        return Uri.parse(imageStr);
    }

    /**
     * Method to set the image
     * @param image - Uri for the image
     */
    public void setImage(Uri image) {
        this.imageStr = image.toString();
    }

    public String getImageStr() {
        return imageStr;
    }

    public void setImageStr(String imageStr) {
        this.imageStr = imageStr;
    }

    /**
     * Method to get the matching name
     * @return
     */
    public String getMatchingName() {
        return matchingName;
    }

    /**
     * Method to set the matching name
     * @param matchingName
     */
    public void setMatchingName(String matchingName) {
        this.matchingName = matchingName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Option option = (Option) o;
        return imageStr == option.imageStr && Objects.equals(matchingName, option.matchingName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(imageStr, matchingName);
    }

    @Override
    public String toString() {
        return "Option{" +
                "image=" + imageStr +
                ", matchingName='" + matchingName + '\'' +
                '}';
    }
}
