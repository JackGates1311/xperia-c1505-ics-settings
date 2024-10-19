.class public Lcom/android/settings/deviceinfo/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mDataState:I

.field private mHandler:Landroid/os/Handler;

.field private mNumPhones:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectSimDialog:Landroid/app/AlertDialog;

.field private mSubscriptionInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "network_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 93
    iput v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    .line 97
    iput v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:I

    .line 126
    new-instance v0, Lcom/android/settings/deviceinfo/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MSimStatus$1;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Lcom/android/settings/deviceinfo/MSimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MSimStatus$2;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSubscriptionInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MSimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/MSimStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MSimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateDataState()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 383
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 384
    .local v2, "s":I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 385
    .local v1, "m":I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 387
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 242
    new-instance v0, Lcom/android/settings/deviceinfo/MSimStatus$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus$4;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;I)V

    .line 250
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getStringFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "naming"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 435
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 375
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 376
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 259
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 350
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 351
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 353
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f070355

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object p2, Lcom/android/settings/deviceinfo/MSimStatus;->sUnknown:Ljava/lang/String;

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 8

    .prologue
    const v7, 0x7f070355

    .line 329
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 330
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 332
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 333
    .local v4, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 334
    .local v1, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .end local v1    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 339
    .local v3, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    :goto_2
    return-void

    .line 333
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v3    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 334
    .restart local v1    # "macAddress":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 345
    .end local v1    # "macAddress":Ljava/lang/String;
    .restart local v0    # "ipAddress":Ljava/lang/String;
    .restart local v3    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDataState()I

    move-result v1

    .line 308
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0700a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 325
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 312
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    goto :goto_0

    .line 315
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0700a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0700a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    goto :goto_0

    .line 321
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/MSimTelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "networkType":Ljava/lang/String;
    const-string v1, "MSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultSubscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "network_type"

    sget-object v2, Lcom/android/settings/deviceinfo/MSimStatus;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getSim1Name(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "sContext"    # Landroid/content/Context;

    .prologue
    .line 442
    const-string v0, ""

    .line 445
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim1_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v2, "MSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSim1Name is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-object v0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "snfe":Ljava/lang/Exception;
    const-string v2, "MSimStatus"

    const-string v3, "Settings Exception Reading Sim1 Name Values"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSim2Name(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "sContext"    # Landroid/content/Context;

    .prologue
    .line 457
    const-string v0, ""

    .line 460
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim2_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "snfe":Ljava/lang/Exception;
    const-string v2, "MSimStatus"

    const-string v3, "Settings Exception Reading Sim2 Name Values"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimCardName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1, "sContext"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    .line 471
    const-string v0, ""

    .line 473
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    if-gez p2, :cond_1

    .line 474
    :cond_0
    const/4 v1, 0x0

    .line 477
    :goto_0
    return-object v1

    .line 476
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->getSim1Name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 477
    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->getSim2Name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v3, Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 158
    const-string v3, "phone_msim"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/MSimTelephonyManager;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 160
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->addPreferencesFromResource(I)V

    .line 162
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    .line 163
    iget v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 167
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    const-string v3, "battery_level"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 172
    const-string v3, "battery_status"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 174
    const-string v3, "button_aboutphone_msim_status"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 175
    .local v1, "mSelectSub":Landroid/preference/PreferenceScreen;
    new-instance v3, Lcom/android/settings/deviceinfo/MSimStatus$3;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/MSimStatus$3;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    .line 194
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f070086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/deviceinfo/MSimStatus;->sUnknown:Ljava/lang/String;

    .line 197
    const-string v3, "up_time"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 199
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setWifiStatus()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setBtStatus()V

    .line 202
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 203
    .local v2, "serial":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    const-string v3, "serial_number"

    invoke-direct {p0, v3, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_1
    return-void

    .line 206
    :cond_1
    const-string v3, "serial_number"

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/AlertDialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 431
    const/4 v6, 0x0

    :goto_0
    return-object v6

    .line 393
    :pswitch_0
    invoke-virtual {p0, p0, v7}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "sim1Naming":Ljava/lang/String;
    invoke-virtual {p0, p0, v8}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "sim2Naming":Ljava/lang/String;
    const-string v6, "SIM1"

    invoke-direct {p0, v6, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->getStringFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "mTitle0":Ljava/lang/String;
    const-string v6, "SIM2"

    invoke-direct {p0, v6, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->getStringFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "mTitle1":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v0, v2, v7

    aput-object v1, v2, v8

    .line 404
    .local v2, "options":[Ljava/lang/CharSequence;
    new-instance v5, Lcom/android/settings/deviceinfo/SimSelectAdapter;

    const v6, 0x1090004

    invoke-direct {v5, p0, v6, v2}, Lcom/android/settings/deviceinfo/SimSelectAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 406
    .local v5, "simSelectAdapter":Lcom/android/settings/deviceinfo/SimSelectAdapter;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/deviceinfo/MSimStatus$5;

    invoke-direct {v7, p0}, Lcom/android/settings/deviceinfo/MSimStatus$5;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    invoke-virtual {v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSelectSimDialog:Landroid/app/AlertDialog;

    .line 428
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSelectSimDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateDataState()V

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSubscriptionInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 365
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 367
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 368
    const-wide/16 v2, 0x1

    .line 371
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method
