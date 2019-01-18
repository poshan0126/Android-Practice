package com.example.androidtimepicker;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TimePicker;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private TimePicker time_picker;
    private Button button_show_time;
    private Button change_button;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        showTime();
        change_button = (Button)findViewById(R.id.button2);
        change_button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openbetterMethod();
            }
        });
    }
    public void openbetterMethod(){
        Intent intent = new Intent(this,AndroidTimePicker2.class);
        startActivity(intent);
    }
    public void showTime(){
        time_picker = (TimePicker)findViewById(R.id.timePicker1);
        button_show_time = (Button)findViewById(R.id.button);
        time_picker.setIs24HourView(true);
        button_show_time.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Toast.makeText(getBaseContext(),time_picker.getCurrentHour() + ":" + time_picker.getCurrentMinute(), Toast.LENGTH_SHORT).show();
                    }
                }
        );
    }
}
