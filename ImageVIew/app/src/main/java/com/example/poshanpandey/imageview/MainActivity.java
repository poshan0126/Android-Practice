package com.example.poshanpandey.imageview;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {
    private static Button switchview;
    private static ImageView imageview;

    private int current_image_index;
    int[] images = {R.mipmap.logo,R.mipmap.logo2,R.mipmap.ic_launcher};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        buttonClick();
    }
    public void buttonClick(){
        imageview = (ImageView)findViewById(R.id.imageView);
        switchview = (Button)findViewById(R.id.button);
        switchview.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        current_image_index++;
                        current_image_index = current_image_index % images.length;
                        imageview.setImageResource(images[current_image_index]);
                    }
                }
        );
    }
}
