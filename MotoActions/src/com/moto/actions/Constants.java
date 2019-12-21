package com.moto.actions;

import java.util.HashMap;
import java.util.Map;

public class Constants {

    // Preference keys
    public static final String FP_POCKETMODE_KEY = "fp_pocketmode";
    public static final String FP_WAKEUP_KEY = "fp_wakeup";

    // Nodes
    public static final String FP_WAKEUP_NODE = "/sys/devices/soc/7af8000.spi/spi_master/spi8/spi8.0/proximity_state";

    // Intents
    public static final String CUST_INTENT = "com.cyanogenmod.settings.device.CUST_UPDATE";
    public static final String CUST_INTENT_EXTRA = "pocketmode_service";
}
