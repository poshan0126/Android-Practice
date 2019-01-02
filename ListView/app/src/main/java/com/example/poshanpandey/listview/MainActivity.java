package com.example.poshanpandey.listview;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private static ListView list_view;
    private static String[] Animals = new String[]{"Dog","Cat","Rat","Mouse","Tiger","Lion","Bear"};


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        listView();
    }
    public void listView(){
        list_view = (ListView) findViewById(R.id.listview);
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, R.layout.animal_list,Animals);
        list_view.setAdapter(adapter);
        list_view.setOnItemClickListener(
                new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        String value = (String)list_view.getItemAtPosition(position);
                        Toast.makeText(MainActivity.this,"Position :"+ position + "Value = "+ value ,Toast.LENGTH_LONG).show();
                    }
                }
        );
    }
}
