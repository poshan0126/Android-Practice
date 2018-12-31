package com.example.poshanpandey.loginpage;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private static Button button_sbm ;
    private static EditText username ;
    private static EditText password ;
    private static EditText email;
    private static TextView attempts;
    int attempt_counter = 5;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        loginButtonListener();
    }
    public void  loginButtonListener(){
        username = (EditText)findViewById(R.id.uname);
        password = (EditText)findViewById(R.id.upassword);
        email = (EditText)findViewById(R.id.uemail);
        button_sbm = (Button)findViewById(R.id.button);
        attempts = (TextView) findViewById(R.id.attm);
        attempts.setText(Integer.toString(attempt_counter));
        button_sbm.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if (username.getText().toString().equals("Poshan Pandey")&&password.getText().toString().equals("poshan")&&email.getText().toString().equals("poshan0126@gmail.com")){
                            Toast.makeText(MainActivity.this, "USer , Email and Password is correct.", Toast.LENGTH_LONG).show();
                            Intent intent = new Intent("User");
                            startActivity(intent);
                        }
                        else {
                            Toast.makeText(MainActivity.this, "USer , Email and Password is incorrect.", Toast.LENGTH_LONG).show();
                            attempt_counter--;
                            attempts.setText(Integer.toString(attempt_counter));
                            if (attempt_counter == 0) {
                                button_sbm.setEnabled(false);
                            }
                        }
                    }
                }
        );
    }
}
