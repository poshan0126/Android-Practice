package com.example.androiddatepicker;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.Toast;

import java.util.Calendar;

public class MainActivity extends AppCompatActivity {
    private Button btn;
    int year_x;
    int month_x;
    int day_x;
    static final int Dialog_Id=0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        final Calendar cal = Calendar.getInstance();
        year_x = cal.get(Calendar.YEAR);
        month_x = cal.get(Calendar.MONTH);
        day_x = cal.get(Calendar.DAY_OF_MONTH);
        ShowDialogOnButtonClick();
    }
    public void ShowDialogOnButtonClick(){
        btn = (Button)findViewById(R.id.button);
        btn.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        showDialog(Dialog_Id);
                    }
                }
        );
    }
    @Override
    protected Dialog onCreateDialog(int id){
        if(id == Dialog_Id)
            return new DatePickerDialog(this,dpickerlistener,year_x,month_x,day_x);
        return null;

    }
    private DatePickerDialog.OnDateSetListener dpickerlistener = new DatePickerDialog.OnDateSetListener() {
        @Override
        public void onDateSet(DatePicker view, int year, int month, int dayOfMonth) {
            year_x=year;
            month_x  = month + 1 ;
            day_x = dayOfMonth;
            Toast.makeText(MainActivity.this,year_x+"/"+month_x+"/"+day_x,Toast.LENGTH_SHORT).show();

        }
    };
}
