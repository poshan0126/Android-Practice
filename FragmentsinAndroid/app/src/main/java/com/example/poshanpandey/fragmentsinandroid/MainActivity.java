package com.example.poshanpandey.fragmentsinandroid;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.app.FragmentManager;
import android.app.Fragment;
import android.app.Fragment.*;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void ChangeFragment(View view) {
        Fragment fragment;
        if (view == findViewById(R.id.button)) {
            fragment = new fragment1();
            FragmentManager fm = getFragmentManager();


        }
        if (view == findViewById(R.id.button2)) {
            fragment = new fragment2();

        }
    }
}
