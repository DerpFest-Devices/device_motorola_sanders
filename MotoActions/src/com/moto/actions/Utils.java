package com.moto.actions;


import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.UserHandle;
import android.support.v14.preference.SwitchPreference;
import android.support.v7.preference.PreferenceManager;

public class Utils {

    public static void broadcastCustIntent(Context context, boolean value) {
        final Intent intent = new Intent(Constants.CUST_INTENT);
        intent.putExtra(Constants.CUST_INTENT_EXTRA, value);
        context.sendBroadcastAsUser(intent, UserHandle.CURRENT);
   }
}
