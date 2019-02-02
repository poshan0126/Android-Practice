package com.example.tictactoemultiplayer;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private Button startGameBtn,exitBtn;
    private TextView player_one,player_two;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        intViews();
        startGameBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent=new Intent(MainActivity.this,GameActivity.class);
                intent.putExtra("player1name",player_one.getText().toString());
                intent.putExtra("player2name",player_two.getText().toString());
                startActivity(intent);

            }
        });
    }
    private void intViews() {
        startGameBtn=findViewById(R.id.startGameBtn);
        exitBtn=findViewById(R.id.exitBtn);
        player_one=findViewById(R.id.e1);
        player_two=findViewById(R.id.e2);
    }
    public void clickExit(View view){
        finish();
        //    moveTaskToBack(true);
        //   android.os.Process.killProcess(android.os.Process.myPid());
        // System.exit(1);
    }
    public void onSaveTnstanceState(Bundle outState)
    {
        super.onSaveInstanceState(outState);

    }
    public void onRestoreInstanceState(Bundle savedInstanceState){
        super.onRestoreInstanceState(savedInstanceState);
    }
}

