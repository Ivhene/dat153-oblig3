package com.example.quizappassignment1.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.util.Log;

import androidx.annotation.Nullable;

import com.example.quizappassignment1.model.Option;
import com.example.quizappassignment1.model.Storage;

public class SQLiteManager extends SQLiteOpenHelper {

    private static SQLiteManager sqLiteManager;
    private static final String DATABASE_NAME = "GalleryDB";
    private static final int DATABASE_VERSION = 1;
    private static final String TABLE_NAME = "Option";
    private static final String COUNTER = "Counter";
    private static final String MATCHINGNAME_FIELD = "matchingName";
    private static final String IMAGE_FIELD = "image";
    public SQLiteManager(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    public static SQLiteManager instanceOfDatabase(Context context) {
        if(sqLiteManager == null)
            sqLiteManager = new SQLiteManager(context);

        return sqLiteManager;
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        StringBuilder sql = new StringBuilder();
        sql.append("CREATE TABLE ")
                .append(TABLE_NAME)
                .append("(")
                .append(COUNTER)
                .append(" INTEGER PRIMARY KEY AUTOINCREMENT, ")
                .append(MATCHINGNAME_FIELD)
                .append(" TEXT, ")
                .append(IMAGE_FIELD)
                .append(" TEXT)");
        db.execSQL(sql.toString());
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        // If making changes to database
    }

    public void addOptionToDatabase(Option option) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(MATCHINGNAME_FIELD, option.getMatchingName());
        contentValues.put(IMAGE_FIELD, option.getImage().toString());

        db.insert(TABLE_NAME, null, contentValues);
    }

    public void populateOptionListArray() {
        SQLiteDatabase db = this.getReadableDatabase();

        try (Cursor result = db.rawQuery("SELECT * FROM " + TABLE_NAME, null);){
            if(result.getCount() != 0) {
                while(result.moveToNext()) {
                    String matchingName = result.getString(1);
                    String imageStr = result.getString(2);
                    Uri image = Uri.parse(imageStr);
                    Option option = new Option(image, matchingName);
                    Storage.getOptionList().getOptionList().add(option);
                }
            }
        }catch (Exception e) {
            Log.e("ERROR", e.getMessage());
        }
    }
}
