package com.example.androidtimepicker;

import android.app.Dialog;
import android.app.TimePickerDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TimePicker;
import android.widget.Toast;

public class AndroidTimePicker2 extends AppCompatActivity {
    private Button time_picker3;
    static final int Dialog_Id = 0;
    int hour_x ;
    int minute_x;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_android_time_picker2);
        showTimePickerDialog();
    }
    @Override
    protected Dialog onCreateDialog(int id){
     if(id==Dialog_Id)
            return new TimePickerDialog(AndroidTimePicker2.this,kTimePickerListener,hour_x,minute_x,false);
     return null;
    }
    protected  TimePickerDialog.OnTimeSetListener kTimePickerListener = new TimePickerDialog.OnTimeSetListener() {
        @Override
        public void onTimeSet(TimePicker view, int hourOfDay, int minute) {
            hour_x = hourOfDay;
            minute_x = minute;
            Toast.makeText(AndroidTimePicker2.this,hour_x + ":"+ minute_x,Toast.LENGTH_SHORT).show();

        }
    };
    public void showTimePickerDialog(){
        time_picker3 = (Button)findViewById(R.id.button4);
        time_picker3.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        showDialog(Dialog_Id);
                    }
                }
        );
    }
}
