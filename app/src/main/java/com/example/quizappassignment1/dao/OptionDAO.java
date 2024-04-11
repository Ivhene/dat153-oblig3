package com.example.quizappassignment1.dao;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Query;
import androidx.room.Upsert;

import com.example.quizappassignment1.model.Option;

import java.util.List;

@Dao
public interface OptionDAO {

    @Upsert // Update and insert in one
    public void addOption(Option option);

    @Delete
    public void deleteOption(Option option);

    @Query("SELECT * FROM Options")
    public List<Option> getOptions();
}
