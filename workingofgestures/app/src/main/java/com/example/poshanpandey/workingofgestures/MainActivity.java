package com.example.poshanpandey.workingofgestures;

import android.support.v4.view.GestureDetectorCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.gesture.Gesture;
import android.widget.TextView;

import static android.view.GestureDetector.*;

public class MainActivity extends AppCompatActivity implements GestureDetector.OnGestureListener,GestureDetector.OnDoubleTapListener {
    private static TextView test_view;
    private GestureDetectorCompat Gesture_detect;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        test_view = (TextView)findViewById(R.id.textView);
        Gesture_detect = new GestureDetectorCompat(this,this);
        Gesture_detect.setOnDoubleTapListener(this);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        Gesture_detect.onTouchEvent(event);
        return super.onTouchEvent(event);
    }

    @Override
    public boolean onSingleTapConfirmed(MotionEvent e) {
        test_view.setText("onSingleTapConfirmed" + e.toString());
        return false;
    }

    @Override
    public boolean onDoubleTap(MotionEvent e) {
        test_view.setText("onDoubleTap");
        return false;
    }

    @Override
    public boolean onDoubleTapEvent(MotionEvent e) {
        test_view.setText("onDoubleTapEvent");
        return false;
    }

    @Override
    public boolean onDown(MotionEvent e) {
        test_view.setText("onDown");

        return false;
    }

    @Override
    public void onShowPress(MotionEvent e) {
        test_view.setText("onShowPress");

    }

    @Override
    public boolean onSingleTapUp(MotionEvent e) {
        test_view.setText("onSingleTapUp");
        return false;
    }

    @Override
    public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
        test_view.setText("onScroll");
        return false;
    }

    @Override
    public void onLongPress(MotionEvent e) {
        test_view.setText("onLongPress");

    }

    @Override
    public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
        test_view.setText("onFling");
        return false;
    }

    @Override
    public void onPointerCaptureChanged(boolean hasCapture) {
        test_view.setText("onPointerCaptureChanged");

    }
}
