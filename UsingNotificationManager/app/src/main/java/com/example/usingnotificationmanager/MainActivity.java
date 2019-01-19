package com.example.usingnotificationmanager;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private Button btn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btn = (Button)findViewById(R.id.button);
        btn.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Intent cintent = new Intent();
                        Intent broadcastintent = new Intent(this,NotificationReceiver.class);
                        broadcastintent.putExtra("toastMesage",message);
                        PendingIntent actionintent = PendingIntent.getBroadcast(this,0,broadcastintent,0,PendingIntent.FLAG_UPDATE_CURRENT);
                        PendingIntent pIntent = (PendingIntent) PendingIntent.getActivity(MainActivity.this,0,cintent,0);
                        Notification noti = new NotificationCompat.Builder(MainActivity.this).setTicker("TickerTitle")
                                .setContentTitle("Content Title")
                                .setContentText("Hey, what's up!")
                                .setSmallIcon(R.mipmap.ic_launcher)
                                .addAction(R.mipmap.ic_launcher,"Action 1",pIntent)
                                .addAction(R.mipmap.ic_launcher,"Action 2",pIntent)
                                .setContentIntent(pIntent).getNotification();
                        noti.flags = Notification.FLAG_AUTO_CANCEL;
                        NotificationManager nm = (NotificationManager)getSystemService(NOTIFICATION_SERVICE);
                        nm.notify(0,noti);
                    }
                }
        );
    }
}
