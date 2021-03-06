package com.ma.testflutter;

import android.os.Bundle;
import android.widget.TextView;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.PluginRegistrant;
import io.flutter.plugins.ViewRegistrant;

/**
 * Flutter调用Native方法，返回基础数据到Flutter
 * Flutter调用Native方法，返回自定义数据到Flutter
 * Native桥接View给Flutter使用
 */
public class MainActivity extends FlutterActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        PluginRegistrant.registerWith(this,this, getFlutterView());


        ViewRegistrant.registerWith(this);
    }
}
