.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 224
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 225
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 230
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v14, 0x7f05003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 105
    .local v1, "activity":Landroid/app/Activity;
    const-string v14, "toggle_airplane"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 107
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 108
    const-string v14, "mobile_network_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "com.android.phone"

    const-string v16, "com.android.phone.MSimSettings"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :cond_0
    const-string v14, "toggle_nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 113
    .local v7, "nfc":Landroid/preference/CheckBoxPreference;
    const-string v14, "android_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 115
    .local v2, "androidBeam":Landroid/preference/PreferenceScreen;
    const-string v14, "toggle_wifi_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 117
    .local v13, "wifiP2p":Landroid/preference/CheckBoxPreference;
    new-instance v14, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v14, v1, v15}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 118
    new-instance v14, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v14, v1, v7, v2}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 120
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_toggleable_radios"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "toggleable":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110036

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 126
    .local v4, "isWimaxEnabled":Z
    if-nez v4, :cond_9

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 128
    .local v11, "root":Landroid/preference/PreferenceScreen;
    const-string v14, "wimax_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 129
    .local v10, "ps":Landroid/preference/Preference;
    if-eqz v10, :cond_1

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    .end local v10    # "ps":Landroid/preference/Preference;
    .end local v11    # "root":Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    if-eqz v12, :cond_2

    const-string v14, "wifi"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 139
    :cond_2
    const-string v14, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v15, "toggle_airplane"

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 143
    :cond_3
    if-eqz v12, :cond_4

    const-string v14, "bluetooth"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 148
    :cond_4
    if-eqz v12, :cond_5

    const-string v14, "nfc"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 149
    :cond_5
    const-string v14, "toggle_nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v15, "toggle_airplane"

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 150
    const-string v14, "android_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v15, "toggle_airplane"

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 154
    :cond_6
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v14, :cond_7

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 162
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "mobile_network_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_8
    const-string v14, "wifip2p"

    invoke-virtual {v1, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 168
    .local v9, "p2p":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.wifi.direct"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "wifi_p2p_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :goto_1
    const-string v14, "proxy_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 177
    .local v6, "mGlobalProxy":Landroid/preference/Preference;
    const-string v14, "device_policy"

    invoke-virtual {v1, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 180
    .local v5, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v14

    if-nez v14, :cond_c

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v6, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    const-string v14, "connectivity"

    invoke-virtual {v1, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 186
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v14

    if-nez v14, :cond_d

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :goto_3
    return-void

    .line 131
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v6    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v9    # "p2p":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_9
    if-eqz v12, :cond_a

    const-string v14, "wimax"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz v4, :cond_1

    .line 133
    :cond_a
    const-string v14, "wimax_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 134
    .restart local v10    # "ps":Landroid/preference/Preference;
    const-string v14, "toggle_airplane"

    invoke-virtual {v10, v14}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v10    # "ps":Landroid/preference/Preference;
    .restart local v9    # "p2p":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_b
    new-instance v14, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-direct {v14, v1, v13}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    goto :goto_1

    .line 181
    .restart local v5    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v6    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_c
    const/4 v14, 0x0

    goto :goto_2

    .line 189
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    :cond_d
    const-string v14, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 190
    .local v8, "p":Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->pause()V

    .line 220
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 76
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->resume()V

    .line 206
    :cond_1
    return-void
.end method
