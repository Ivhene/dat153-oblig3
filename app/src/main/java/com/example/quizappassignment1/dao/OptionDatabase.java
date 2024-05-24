package com.example.quizappassignment1.dao;

import androidx.room.Database;
import androidx.room.RoomDatabase;

import com.example.quizappassignment1.model.Option;

@Database(entities = {Option.class}, version = 1)
public abstract class OptionDatabase extends RoomDatabase {
    public abstract OptionDAO getOptionDAO(); // Metode for å få tilgang til OptionDAO-objektet
}
