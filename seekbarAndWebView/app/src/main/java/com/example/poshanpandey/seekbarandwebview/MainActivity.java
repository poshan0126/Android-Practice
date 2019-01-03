package com.example.poshanpandey.seekbarandwebview;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private static SeekBar seek_bar;
    private static TextView text_view;
    private static EditText edit_url;
    private static Button open_url;
    private static WebView browser;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        seekbar();
        openUrl();
    }
    public void seekbar(){
        seek_bar = (SeekBar)findViewById(R.id.seekBar);
        text_view = (TextView)findViewById(R.id.textView);
        text_view.setText("Covered:" + seek_bar.getProgress() + "/" + seek_bar.getMax());

        seek_bar.setOnSeekBarChangeListener(
                new SeekBar.OnSeekBarChangeListener() {
                    int progress_value;
                    @Override
                    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                        progress_value= progress ;
                        text_view.setText("Covered:" + progress + "/" + seek_bar.getMax());
                        Toast.makeText(MainActivity.this, "SeekBar in Progress", Toast.LENGTH_LONG).show();

                    }

                    @Override
                    public void onStartTrackingTouch(SeekBar seekBar) {
                        Toast.makeText(MainActivity.this, "SeekBar in StartTracking Progress", Toast.LENGTH_LONG).show();

                    }

                    @Override
                    public void onStopTrackingTouch(SeekBar seekBar) {
                        text_view.setText("Covered:" + progress_value + "/" + seek_bar.getMax());
                        Toast.makeText(MainActivity.this, "SeekBar in StopTracking Progress", Toast.LENGTH_LONG).show();

                    }
                }
        );
    }
    public void openUrl(){
        open_url = (Button)findViewById(R.id.button);
        edit_url = (EditText)findViewById(R.id.editText);
        browser = (WebView)findViewById(R.id.webview);
        open_url.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        String url = edit_url.getText().toString();
                        browser.getSettings().setLoadsImagesAutomatically(true);
                        browser.getSettings().setJavaScriptEnabled(true);
                        browser.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);
                        browser.loadUrl(url);
                    }
                }
        );
    }
}
