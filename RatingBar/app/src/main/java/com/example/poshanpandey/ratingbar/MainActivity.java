package com.example.poshanpandey.ratingbar;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private static Button button;
    private static TextView textView ;
    private static RatingBar rating_bar ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        listenerRatingBar() ;
        onButtonClickListener();
    }
    public void listenerRatingBar(){
        rating_bar = (RatingBar)findViewById(R.id.ratingBar);
        textView = (TextView)findViewById(R.id.textView);
        rating_bar.setOnRatingBarChangeListener(
                new RatingBar.OnRatingBarChangeListener() {
                    @Override
                    public void onRatingChanged(RatingBar ratingBar, float rating, boolean fromUser) {
                        textView.setText(String.valueOf(rating));
                    }
                }
        );

    }
    public void onButtonClickListener(){
        rating_bar = (RatingBar)findViewById(R.id.ratingBar);
        textView = (TextView)findViewById(R.id.textView);
        button = (Button)findViewById(R.id.button);
        button.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Toast.makeText(MainActivity.this, String.valueOf(rating_bar.getRating()),Toast.LENGTH_LONG).show();
                    }
                }
        );

    }
}
