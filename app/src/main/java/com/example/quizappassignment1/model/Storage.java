package com.example.quizappassignment1.model;

import android.app.Application;
import android.content.ContentResolver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;

import com.example.quizappassignment1.R;
import com.example.quizappassignment1.dao.OptionDatabase;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Storage extends Application {

    private static OptionList optionList;
    private static int score;
    private static int attempts;
    public static OptionDatabase optionDatabase;

    @Override
    public void onCreate() {
        super.onCreate();
        Storage.optionList = new OptionList();
        score = 0;
        attempts = 0;

        RoomDatabase.Callback callback = new RoomDatabase.Callback() {
            @Override
            public void onCreate(@NonNull SupportSQLiteDatabase db) {
                super.onCreate(db);
            }

            @Override
            public void onOpen(@NonNull SupportSQLiteDatabase db) {
                super.onOpen(db);
            }
        };

        optionDatabase = Room
                .databaseBuilder(getApplicationContext(), OptionDatabase.class, "OptionDatabase")
                .addCallback(callback)
                .build();

        getOptionsInBackground();
    }

    private void getOptionsInBackground() {
        ExecutorService executorService = Executors.newSingleThreadExecutor();

        Handler handler = new Handler(Looper.getMainLooper());

        executorService.execute(new Runnable() {
            @Override
            public void run() {
                // task executed in background
                optionList.setOptionList(optionDatabase.getOptionDAO().getOptions());

                // once task is finished
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(getApplicationContext(), "Data fetched", Toast.LENGTH_SHORT).show();

                        Log.d("TEST", optionList.getOptionList().size() + "");
                        // If you have less than 3, the database has never been initialized
                        if (optionList.getOptionList().size() < 3) {
                            convertImageToUriAndAddToList(R.drawable.kamera, "Camera");
                            convertImageToUriAndAddToList(R.drawable.natur, "Nature");
                            convertImageToUriAndAddToList(R.drawable.loanlink_logo, "Loanlink");
                            convertImageToUriAndAddToList(R.drawable.tre, "Tree");
                        }
                    }
                });
            }
        });
    }

    public static OptionList getOptionList() {
        return optionList;
    }

    public static void setOptionList(OptionList optionList) {
        Storage.optionList = optionList;
    }

    public static int getScore() {
        return score;
    }

    public static void setScore(int score) {
        Storage.score = score;
    }

    public static int getAttempts() {
        return attempts;
    }

    public static void setAttempts(int attempts) {
        Storage.attempts = attempts;
    }

    public void convertImageToUriAndAddToList(int imageResourceId, String name) {
        Uri imageUri = new Uri.Builder()
                .scheme(ContentResolver.SCHEME_ANDROID_RESOURCE) // "android.resource"
                .authority(getResources().getResourcePackageName(imageResourceId))
                .appendPath(getResources().getResourceTypeName(imageResourceId))
                .appendPath(getResources().getResourceEntryName(imageResourceId))
                .build();
        Option newOption = new Option(imageUri.toString(), name);
        optionList.add(newOption);
        saveToDatabase(newOption);
    }

    public void saveToDatabase(Option option) {
        ExecutorService executorService = Executors.newSingleThreadExecutor();

        Handler handler = new Handler(Looper.getMainLooper());

        executorService.execute(new Runnable() {
            @Override
            public void run() {
                // task executed in background
                Storage.optionDatabase.getOptionDAO().addOption(option);

                // once task is finished
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(getApplicationContext(), "Data fetched", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }
}
