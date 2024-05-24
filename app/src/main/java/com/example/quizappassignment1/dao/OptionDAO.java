package com.example.quizappassignment1.dao;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Query;
import androidx.room.Upsert;

import com.example.quizappassignment1.model.Option;

import java.util.List;

@Dao
public interface OptionDAO {

    @Upsert // Oppdater og sett inn på én gang
    public void addOption(Option option); // Metode for å legge til en opsjon i databasen

    @Delete // Metode for å slette en opsjon fra databasen
    public void deleteOption(Option option);

    @Query("SELECT * FROM Options") // SQL-query for å hente alle opsjoner fra databasen
    public List<Option> getOptions();
}
