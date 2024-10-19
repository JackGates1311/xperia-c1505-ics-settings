.class public Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimSubscriptionStatus.java"


# static fields
.field private static final FIH_BUILD_VER:Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mSigStrength:Landroid/preference/Preference;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSub:I

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getBasebandVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->FIH_BUILD_VER:Ljava/lang/String;

    .line 81
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "baseband_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    return-void
.end method

.method private static getBasebandVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 310
    const/4 v3, 0x0

    .line 311
    .local v3, "mAVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 315
    .local v4, "mLVersion":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/amssversion"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 318
    .local v0, "Areader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 322
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 325
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/linuxversion"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 328
    .local v1, "Lreader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 332
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "7x25A_M:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_A:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v0    # "Areader":Ljava/io/BufferedReader;
    .end local v1    # "Lreader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 322
    .restart local v0    # "Areader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 335
    .end local v0    # "Areader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string v3, "ERROR"

    .line 338
    const-string v4, "ERROR"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "7x25A_M:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_A:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 332
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "Areader":Ljava/io/BufferedReader;
    .restart local v1    # "Lreader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 342
    .end local v0    # "Areader":Ljava/io/BufferedReader;
    .end local v1    # "Lreader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "7x25A_M:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_A:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 239
    new-instance v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)V

    .line 251
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 233
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget-object p2, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    :cond_1
    return-void
.end method

.method private setTitle()V
    .locals 4

    .prologue
    .line 382
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    if-nez v1, :cond_0

    const-string v0, "SIM1"

    .line 383
    .local v0, "mSimNumber":Ljava/lang/String;
    :goto_0
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    return-void

    .line 382
    .end local v0    # "mSimNumber":Ljava/lang/String;
    :cond_0
    const-string v0, "SIM2"

    goto :goto_0
.end method

.method private updateServiceState()V
    .locals 5

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0700a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "display":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 283
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 296
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f07009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_1
    const-string v2, "operator_name"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v1    # "state":I
    :cond_0
    return-void

    .line 285
    .restart local v1    # "state":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f070098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f07009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f07009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const-string v7, "phone_msim"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/MSimTelephonyManager;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 115
    const v7, 0x7f050010

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "subscription"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    .line 119
    const-string v7, "Status"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnCreate mSub ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setTitle()V

    .line 123
    iget v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 124
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x101

    invoke-virtual {v7, v8, v9}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    .line 129
    sget-object v7, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 130
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f070086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 133
    :cond_0
    iget v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    invoke-static {v7}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 135
    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    sget-object v1, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v4, v1, v3

    .line 139
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_1
    const-string v7, "ro.config.multimode_cdma"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 145
    :cond_2
    const-string v7, "prl_version"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_1
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 154
    const-string v7, "esn_number"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v7, "meid_number"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v7, "min_number"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 158
    const-string v7, "min_number"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v8, 0x7f070347

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 161
    :cond_3
    const-string v7, "imei_sv"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 163
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 165
    const-string v7, "icc_id"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_2
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "rawNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 191
    .local v2, "formattedNumber":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 192
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    :cond_4
    const-string v7, "number"

    invoke-direct {p0, v7, v2}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "FIH_BUILD_VER":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getBasebandVersion()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v7, "baseband_version"

    invoke-direct {p0, v7, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v0    # "FIH_BUILD_VER":Ljava/lang/String;
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v6    # "rawNumber":Ljava/lang/String;
    :cond_5
    return-void

    .line 148
    :cond_6
    const-string v7, "prl_version"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    :cond_7
    const-string v7, "imei"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 171
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 174
    :cond_8
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v7, "imei_sv"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v7, "esn_number"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 184
    const-string v7, "meid_number"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 185
    const-string v7, "min_number"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 186
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 225
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    .line 217
    :cond_0
    return-void
.end method

.method updateSignalStrength()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 349
    const/4 v4, 0x0

    .line 351
    .local v4, "signalDbm":I
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v7, :cond_5

    .line 352
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 353
    .local v5, "state":I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 355
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v7, 0x1

    if-eq v7, v5, :cond_0

    const/4 v7, 0x3

    if-ne v7, v5, :cond_1

    .line 357
    :cond_0
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 360
    :cond_1
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v7

    if-nez v7, :cond_6

    .line 361
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    .line 369
    :cond_2
    :goto_0
    if-ne v6, v4, :cond_3

    const/4 v4, 0x0

    .line 371
    :cond_3
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 372
    .local v3, "signalAsu":I
    if-ne v6, v3, :cond_4

    const/4 v3, 0x0

    .line 374
    :cond_4
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0700a7

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0700a8

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "signalAsu":I
    .end local v5    # "state":I
    :cond_5
    return-void

    .line 363
    .restart local v2    # "r":Landroid/content/res/Resources;
    .restart local v5    # "state":I
    :cond_6
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 364
    .local v1, "gsmSignalStrength":I
    const/16 v7, 0x63

    if-ne v1, v7, :cond_7

    move v0, v6

    .line 365
    .local v0, "asu":I
    :goto_1
    if-eq v0, v6, :cond_2

    .line 366
    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v4, v7, -0x71

    goto :goto_0

    .end local v0    # "asu":I
    :cond_7
    move v0, v1

    .line 364
    goto :goto_1
.end method
