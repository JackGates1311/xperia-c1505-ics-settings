.class public Lcom/android/settings/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$2;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private NOMNAL_SIM_VALUE:Ljava/lang/String;

.field private O2_POST_PAY_SIM_VALUE:Ljava/lang/String;

.field private O2_PRE_PAY_SIM_VALUE:Ljava/lang/String;

.field private SIM_TYPE:Ljava/lang/String;

.field private TYPE_O2_POST_PAY:Ljava/lang/String;

.field private TYPE_O2_PRE_PAY:Ljava/lang/String;

.field private isDefaultApnInPref:Z

.field private mDataApnName:Ljava/lang/String;

.field private mIsAPNListInvisible:Z

.field private mIsTetherAPNInvisible:Z

.field private mIsTethered:Z

.field private mMmsApnName:Ljava/lang/String;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubscription:I

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 97
    iput v1, p0, Lcom/android/settings/ApnSettings;->mSubscription:I

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->mIsTethered:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->mIsTetherAPNInvisible:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->mIsAPNListInvisible:Z

    .line 109
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->O2_PRE_PAY_SIM_VALUE:Ljava/lang/String;

    .line 110
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->O2_POST_PAY_SIM_VALUE:Ljava/lang/String;

    .line 111
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->NOMNAL_SIM_VALUE:Ljava/lang/String;

    .line 112
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    .line 113
    const-string v0, "postpay"

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->TYPE_O2_POST_PAY:Ljava/lang/String;

    .line 114
    const-string v0, "prepay"

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->TYPE_O2_PRE_PAY:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/android/settings/ApnSettings;->mMmsApnName:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/android/settings/ApnSettings;->mDataApnName:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lcom/android/settings/ApnSettings;->preferences:Landroid/content/SharedPreferences;

    .line 119
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isDefaultApnInPref:Z

    .line 122
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 521
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/settings/ApnSettings;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 433
    return-void
.end method

.method private addTetherPref(Landroid/preference/PreferenceGroup;)V
    .locals 14
    .param p1, "apnList"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 312
    const-string v11, "gsm.sim.operator.numeric"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "numeric":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "tether_dun_required"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_7

    move v4, v9

    .line 318
    .local v4, "isTetherDunRequired":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "tether_dun_apn"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "apnDataString":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isDefaultApnInPref:Z

    if-nez v11, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getDefaultApnFromPref()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "defaultAPN":Ljava/lang/String;
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->setDefaultApnToPref(Ljava/lang/String;)V

    .line 327
    :cond_0
    iput-boolean v9, p0, Lcom/android/settings/ApnSettings;->isDefaultApnInPref:Z

    .line 330
    .end local v2    # "defaultAPN":Ljava/lang/String;
    :cond_1
    sget-boolean v11, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v11, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getDefaultApnFromPref()Ljava/lang/String;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "tether_dun_apn"

    invoke-static {v11, v12, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 340
    :cond_2
    if-nez v1, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1040019

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    :cond_3
    new-instance v0, Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-direct {v0, v4, v1}, Lcom/sonyericsson/settings/apn/TetherApnData;-><init>(ZLjava/lang/String;)V

    .line 347
    .local v0, "apnData":Lcom/sonyericsson/settings/apn/TetherApnData;
    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->isTetherDunValid()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_6

    .line 350
    invoke-virtual {v7, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "mcc":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "mnc":Ljava/lang/String;
    const-string v11, "editable_tether_apn_required"

    invoke-static {p0, v11}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "editableTetherApnRequired":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMcc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMnc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 361
    :cond_5
    new-instance v8, Lcom/android/settings/ApnPreference;

    invoke-direct {v8, p0, v9}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Z)V

    .line 363
    .local v8, "pref":Lcom/android/settings/ApnPreference;
    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getApn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {v8, v10}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 366
    invoke-virtual {v8, p0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    invoke-virtual {v8, v10}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 369
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 372
    .end local v3    # "editableTetherApnRequired":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    .end local v8    # "pref":Lcom/android/settings/ApnPreference;
    :cond_6
    return-void

    .end local v0    # "apnData":Lcom/sonyericsson/settings/apn/TetherApnData;
    .end local v1    # "apnDataString":Ljava/lang/String;
    .end local v4    # "isTetherDunRequired":Z
    :cond_7
    move v4, v10

    .line 315
    goto/16 :goto_0
.end method

.method private doCustomize()V
    .locals 3

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->NOMNAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    new-instance v0, Lcom/android/settings/ApnSettingsCustomizations;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettingsCustomizations;-><init>(Landroid/content/Context;)V

    .line 575
    .local v0, "customization":Lcom/android/settings/ApnSettingsCustomizations;
    invoke-virtual {v0}, Lcom/android/settings/ApnSettingsCustomizations;->readCustomization()V

    .line 577
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->O2_PRE_PAY_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->TYPE_O2_PRE_PAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettingsCustomizations;->getMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mMmsApnName:Ljava/lang/String;

    .line 579
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->TYPE_O2_PRE_PAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettingsCustomizations;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mDataApnName:Ljava/lang/String;

    goto :goto_0

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->O2_POST_PAY_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->TYPE_O2_POST_PAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettingsCustomizations;->getMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mMmsApnName:Ljava/lang/String;

    .line 582
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->TYPE_O2_POST_PAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettingsCustomizations;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mDataApnName:Ljava/lang/String;

    goto :goto_0
.end method

.method private fillList()V
    .locals 18

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ApnSettings;->mIsAPNListInvisible:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ApnSettings;->mIsTethered:Z

    if-eqz v1, :cond_1

    .line 235
    const-string v1, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 236
    .local v8, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 241
    .end local v8    # "apnList":Landroid/preference/PreferenceGroup;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mSubscription:I

    const-string v5, ""

    invoke-static {v2, v3, v5}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "where":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 249
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v1, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 250
    .restart local v8    # "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 252
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v12, "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 255
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 256
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_9

    .line 257
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 258
    .local v13, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "apn":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "key":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 262
    .local v17, "type":Ljava/lang/String;
    new-instance v14, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 264
    .local v14, "pref":Lcom/android/settings/ApnPreference;
    invoke-virtual {v14, v11}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v14, v13}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v14, v7}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ApnSettings;->mSubscription:I

    invoke-virtual {v14, v1}, Lcom/android/settings/ApnPreference;->setSubscription(I)V

    .line 271
    if-eqz v17, :cond_2

    const-string v1, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    const/16 v16, 0x1

    .line 272
    .local v16, "selectable":Z
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 273
    if-eqz v16, :cond_7

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    invoke-virtual {v14}, Lcom/android/settings/ApnPreference;->setChecked()V

    .line 279
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->NOMNAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 280
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 298
    :cond_4
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 271
    .end local v16    # "selectable":Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_2

    .line 282
    .restart local v16    # "selectable":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mDataApnName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 289
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->NOMNAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 290
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 292
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mMmsApnName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 300
    .end local v7    # "apn":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "pref":Lcom/android/settings/ApnPreference;
    .end local v16    # "selectable":Z
    .end local v17    # "type":Ljava/lang/String;
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 302
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/preference/Preference;

    .line 303
    .local v15, "preference":Landroid/preference/Preference;
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 306
    .end local v15    # "preference":Landroid/preference/Preference;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ApnSettings;->mIsTetherAPNInvisible:Z

    if-nez v1, :cond_0

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/ApnSettings;->addTetherPref(Landroid/preference/PreferenceGroup;)V

    goto/16 :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    .prologue
    .line 142
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataState;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 469
    const/4 v7, 0x0

    .line 471
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 473
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 475
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 477
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 478
    return-object v7
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 482
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 483
    sput-boolean v4, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 485
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 486
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_1

    .line 490
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "restoreDefaultApnThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 493
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 497
    .end local v0    # "restoreDefaultApnThread":Landroid/os/HandlerThread;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 499
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 460
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 463
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method private setTitle()V
    .locals 4

    .prologue
    .line 562
    iget v1, p0, Lcom/android/settings/ApnSettings;->mSubscription:I

    if-nez v1, :cond_0

    const-string v0, "SIM1"

    .line 563
    .local v0, "mSimNumber":Ljava/lang/String;
    :goto_0
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 564
    return-void

    .line 562
    .end local v0    # "mSimNumber":Ljava/lang/String;
    :cond_0
    const-string v0, "SIM2"

    goto :goto_0
.end method


# virtual methods
.method public getDefaultApnFromPref()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "default_tether_dun_apn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ApnSettings;->mSubscription:I

    .line 158
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate received sub :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ApnSettings;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->setTitle()V

    .line 165
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 169
    const-string v1, "invisible_apn_required"

    invoke-static {p0, v1}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "settings":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iput-boolean v4, p0, Lcom/android/settings/ApnSettings;->mIsAPNListInvisible:Z

    .line 175
    :cond_1
    const-string v1, "invisible_tether_apn_required"

    invoke-static {p0, v1}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iput-boolean v4, p0, Lcom/android/settings/ApnSettings;->mIsTetherAPNInvisible:Z

    .line 184
    :cond_2
    const-string v1, "persist.radio.gsm.prepaypostpay"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    .line 185
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM_TYPE :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->NOMNAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 188
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->doCustomize()V

    .line 191
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->preferences:Landroid/content/SharedPreferences;

    .line 192
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 544
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 545
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 546
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 547
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 550
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 390
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 394
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 397
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 411
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 404
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 408
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 449
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 453
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 456
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 437
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, "pos":I
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 440
    .local v2, "url":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "subscription"

    iget v4, p0, Lcom/android/settings/ApnSettings;->mSubscription:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 445
    const/4 v3, 0x1

    return v3
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 555
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 558
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 418
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsAPNListInvisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsTethered:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 420
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 425
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 422
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 423
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 196
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 199
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->SIM_TYPE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->NOMNAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->doCustomize()V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    iget-boolean v2, p0, Lcom/android/settings/ApnSettings;->mIsAPNListInvisible:Z

    if-eqz v2, :cond_1

    .line 208
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    move-object v0, v2

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 210
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "tethered":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ApnSettings;->mIsTethered:Z

    .line 215
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "tethered":[Ljava/lang/String;
    :cond_1
    sget-boolean v2, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v2, :cond_3

    .line 216
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 222
    :goto_1
    return-void

    .line 211
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v1    # "tethered":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 218
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "tethered":[Ljava/lang/String;
    :cond_3
    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_1
.end method

.method public setDefaultApnToPref(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultApn"    # Ljava/lang/String;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 384
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "default_tether_dun_apn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
