package com.example.poshanpandey.analoganddigitalclockexample;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private static Button button_analog, button_digital ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        onButtonClickListener();
    }
    public void onButtonClickListener(){
        button_analog = (Button)findViewById(R.id.button2);
        button_digital = (Button)findViewById(R.id.button);
        button_digital.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Intent intentd = new Intent("digital");
                        startActivity(intentd);
                    }
                }
        );
        button_analog.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Intent intentg = new Intent("analog");
                        startActivity(intentg);
                    }
                }
        );
    }
}
