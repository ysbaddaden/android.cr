/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.example.timer;

import android.app.Activity;
import android.widget.TextView;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

public class Timer extends Activity
{
    TextView tv;
    Handler handler;

    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        createHandler();

        this.tv = new TextView(this);
        tv.setText("Loading...");
        setContentView(tv);

        crystalMain(handler);
    }

    public native void crystalMain(Handler handler);

    public void createHandler() {
        this.handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
              Bundle b = msg.getData();
              java.lang.String action = b.getString("action");

              if (action.equals("setText")) {
                tv.setText(b.getString("message"));
              }
            }
        };
    }

    static {
        System.loadLibrary("hello-jni");
    }
}
