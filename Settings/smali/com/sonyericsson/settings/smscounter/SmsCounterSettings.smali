.class public Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmsCounterSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;
    }
.end annotation


# instance fields
.field private mCyclePreference:Landroid/preference/ListPreference;

.field private mDBHandler:Landroid/os/Handler;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditDay:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFlightMode:Z

.field private mLimitPreference:Landroid/preference/EditTextPreference;

.field mLimitationTextWatcher:Landroid/text/TextWatcher;

.field private mMaximun:Ljava/lang/String;

.field private mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

.field private mOnOffSwitch:Landroid/widget/Switch;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mScreenWidth:I

.field private mSettings:Landroid/content/SharedPreferences;

.field private mSimStatus:Z

.field private mStartDayPreference:Landroid/preference/Preference;

.field private mStartWeekPreference:Landroid/preference/ListPreference;

.field private mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

.field private mUpdateStatus:Z

.field private mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

.field private mWarning:Ljava/lang/String;

.field private mWarningPreference:Landroid/preference/EditTextPreference;

.field mWarningTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 92
    const-string v0, "50"

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    .line 94
    const-string v0, "100"

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    .line 96
    const-string v0, "1"

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEditDay:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 102
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDBHandler:Landroid/os/Handler;

    .line 106
    const/16 v0, 0x140

    iput v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    .line 108
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 133
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningTextWatcher:Landroid/text/TextWatcher;

    .line 160
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$2;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitationTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDBHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateMessageUIState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 823
    return-void
.end method

.method private asyncUpdateSMSCount()V
    .locals 2

    .prologue
    .line 421
    :try_start_0
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;)V

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private checkInputNumber()Z
    .locals 7

    .prologue
    .line 704
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "sms_counter_warning_level"

    const-string v6, "50"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "text1":Ljava/lang/String;
    const-string v4, "50"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 707
    .local v0, "a":I
    const-string v4, "100"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 708
    .local v1, "b":I
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 709
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 711
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "sms_counter_limit_level"

    const-string v6, "100"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "text2":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 714
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 716
    :cond_1
    if-ge v0, v1, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private startSmsCounterService(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 826
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 827
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 828
    return-void
.end method

.method private updateCycleSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 723
    .local v0, "entries":[Ljava/lang/CharSequence;
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    :cond_0
    :goto_0
    return-object v1

    .line 726
    :cond_1
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateDateRange(I)V
    .locals 38
    .param p1, "selected"    # I

    .prologue
    .line 734
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v29

    .line 735
    .local v29, "cal":Ljava/util/Calendar;
    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 736
    .local v10, "year":I
    const/4 v5, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 737
    .local v9, "month":I
    const-string v32, ""

    .line 738
    .local v32, "item":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 739
    .local v18, "start":J
    const-wide/16 v20, 0x0

    .line 740
    .local v20, "end":J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 741
    .local v4, "time":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v6, "sms_counter_cycle"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 743
    .local v37, "value":Ljava/lang/String;
    const-string v5, "0"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 744
    const/4 v5, 0x5

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v30

    .line 746
    .local v30, "current":I
    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_4

    .line 747
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v4 .. v10}, Landroid/text/format/Time;->set(IIIIII)V

    .line 748
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    .line 749
    .end local v18    # "start":J
    .local v35, "start":J
    const/16 v5, 0xb

    if-eq v9, v5, :cond_1

    .line 750
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    add-int/lit8 v16, v9, 0x1

    move-object v11, v4

    move/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Landroid/text/format/Time;->set(IIIIII)V

    .line 755
    :goto_0
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v15

    .line 756
    .local v15, "nextMax":I
    add-int/lit8 v5, p1, -0x1

    if-le v5, v15, :cond_2

    .line 757
    const/16 v12, 0x3b

    const/16 v13, 0x3b

    const/16 v14, 0x17

    add-int/lit8 v16, v9, 0x1

    move-object v11, v4

    move/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Landroid/text/format/Time;->set(IIIIII)V

    .line 765
    .end local v20    # "end":J
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 766
    .restart local v20    # "end":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v22, 0x0

    move-wide/from16 v18, v35

    invoke-virtual/range {v16 .. v22}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v32

    .line 767
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-wide/from16 v18, v35

    .line 815
    .end local v15    # "nextMax":I
    .end local v30    # "current":I
    .end local v35    # "start":J
    .restart local v18    # "start":J
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->saveDateRangeToPreference(JJ)V

    .line 816
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setAlarmManager(J)V

    .line 817
    return-void

    .line 752
    .end local v18    # "start":J
    .restart local v30    # "current":I
    .restart local v35    # "start":J
    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    add-int/lit8 v17, v10, 0x1

    move-object v11, v4

    invoke-virtual/range {v11 .. v17}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 759
    .restart local v15    # "nextMax":I
    :cond_2
    const/16 v5, 0xb

    if-ne v9, v5, :cond_3

    .line 760
    const/16 v17, 0x3b

    const/16 v18, 0x3b

    const/16 v19, 0x17

    add-int/lit8 v20, p1, -0x1

    const/16 v21, 0x0

    add-int/lit8 v22, v10, 0x1

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v22}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_1

    .line 762
    :cond_3
    const/16 v17, 0x3b

    const/16 v18, 0x3b

    const/16 v19, 0x17

    add-int/lit8 v20, p1, -0x1

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v16, v4

    move/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_1

    .line 768
    .end local v15    # "nextMax":I
    .end local v35    # "start":J
    .restart local v18    # "start":J
    :cond_4
    move/from16 v0, p1

    move/from16 v1, v30

    if-le v0, v1, :cond_0

    .line 769
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/text/format/Time;->set(IIIIII)V

    .line 770
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 771
    .local v8, "maxDate":I
    add-int/lit8 v5, p1, -0x1

    if-le v5, v8, :cond_5

    .line 772
    const/16 v5, 0x3b

    const/16 v6, 0x3b

    const/16 v7, 0x17

    invoke-virtual/range {v4 .. v10}, Landroid/text/format/Time;->set(IIIIII)V

    .line 776
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 777
    if-eqz v9, :cond_7

    .line 778
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    add-int/lit8 v27, v9, -0x1

    move-object/from16 v22, v4

    move/from16 v28, v10

    invoke-virtual/range {v22 .. v28}, Landroid/text/format/Time;->set(IIIIII)V

    .line 779
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 780
    move/from16 v0, p1

    if-le v0, v8, :cond_6

    .line 781
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v22, v4

    move/from16 v27, v9

    move/from16 v28, v10

    invoke-virtual/range {v22 .. v28}, Landroid/text/format/Time;->set(IIIIII)V

    .line 788
    :goto_4
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v32

    .line 791
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 774
    :cond_5
    const/16 v23, 0x3b

    const/16 v24, 0x3b

    const/16 v25, 0x17

    add-int/lit8 v26, p1, -0x1

    move-object/from16 v22, v4

    move/from16 v27, v9

    move/from16 v28, v10

    invoke-virtual/range {v22 .. v28}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_3

    .line 783
    :cond_6
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    add-int/lit8 v27, v9, -0x1

    move-object/from16 v22, v4

    move/from16 v26, p1

    move/from16 v28, v10

    invoke-virtual/range {v22 .. v28}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_4

    .line 786
    :cond_7
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0xb

    add-int/lit8 v28, v10, -0x1

    move-object/from16 v22, v4

    move/from16 v26, p1

    invoke-virtual/range {v22 .. v28}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_4

    .line 793
    .end local v8    # "maxDate":I
    .end local v30    # "current":I
    :cond_8
    const-string v5, "1"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 794
    const/4 v5, 0x7

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v31, v5, -0x1

    .line 795
    .local v31, "currentWeek":I
    if-nez v31, :cond_9

    .line 796
    const/16 v31, 0x7

    .line 798
    :cond_9
    const/4 v5, 0x5

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 799
    .local v26, "day":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v4

    move/from16 v27, v9

    move/from16 v28, v10

    invoke-virtual/range {v22 .. v28}, Landroid/text/format/Time;->set(IIIIII)V

    .line 800
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v33

    .line 801
    .local v33, "now":J
    move/from16 v0, p1

    move/from16 v1, v31

    if-gt v0, v1, :cond_a

    .line 802
    const-wide/32 v5, 0x5265c00

    sub-int v7, v31, p1

    int-to-long v11, v7

    mul-long/2addr v5, v11

    sub-long v18, v33, v5

    .line 803
    const-wide/32 v5, 0x240c8400

    add-long v5, v5, v18

    const-wide/16 v11, 0x3e8

    sub-long v20, v5, v11

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v32

    .line 805
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 806
    :cond_a
    move/from16 v0, p1

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 807
    const-wide/32 v5, 0x5265c00

    sub-int v7, p1, v31

    int-to-long v11, v7

    mul-long/2addr v5, v11

    add-long v20, v33, v5

    .line 808
    const-wide/32 v5, 0x240c8400

    sub-long v18, v20, v5

    .line 809
    const-wide/16 v5, 0x3e8

    sub-long v20, v20, v5

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v32

    .line 811
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateMessageUIState(I)V
    .locals 12
    .param p1, "messageCount"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v10, "sms_counter_warning_level"

    const-string v11, "50"

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v10, "sms_counter_limit_level"

    const-string v11, "100"

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 437
    .local v9, "warningValue":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 438
    .local v8, "quotaValue":I
    move v5, p1

    .line 439
    .local v5, "count":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings()J

    move-result-wide v1

    .line 440
    .local v1, "start":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings()J

    move-result-wide v3

    .line 441
    .local v3, "end":J
    const/4 v6, 0x0

    .line 442
    .local v6, "ex":I
    const/4 v7, 0x0

    .line 452
    .local v7, "exM":I
    iget-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0, v9, v8, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateSummaryEntry(III)V

    .line 457
    :cond_0
    if-lt p1, v9, :cond_1

    .line 458
    sub-int v6, p1, v9

    .line 460
    :cond_1
    if-lt p1, v8, :cond_2

    .line 461
    sub-int v7, p1, v8

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->setRange(JJIII)V

    .line 466
    iget-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    const/4 v10, 0x1

    invoke-virtual {v0, p1, v9, v8, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->checkWarningStatus(IIIZ)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 472
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateUIView()V

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget()V

    .line 474
    return-void
.end method

.method private updateSummaryEntry(III)V
    .locals 12
    .param p1, "warningValue"    # I
    .param p2, "quotaValue"    # I
    .param p3, "count"    # I

    .prologue
    const/high16 v11, -0x10000

    const v10, -0xff0100

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/16 v7, 0x33

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->clear()V

    .line 382
    if-gt p3, p1, :cond_1

    if-ltz p3, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    int-to-double v1, p3

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v1, p1, p3

    int-to-double v1, v1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    iget v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    int-to-double v1, v1

    div-double v1, v8, v1

    double-to-float v1, v1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v1, p2, p1

    int-to-double v1, v1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    iget v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    int-to-double v3, v3

    div-double v3, v8, v3

    double-to-float v3, v3

    float-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    iget v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    int-to-double v1, v1

    div-double v1, v8, v1

    double-to-float v1, v1

    invoke-virtual {v0, v1, v11}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    if-le p3, p1, :cond_2

    if-gt p3, p2, :cond_2

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    int-to-double v1, p1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v1, p3, p1

    int-to-double v1, v1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v1, p2, p3

    int-to-double v1, v1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    iget v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    int-to-double v1, v1

    div-double v1, v8, v1

    double-to-float v1, v1

    invoke-virtual {v0, v1, v11}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    goto :goto_0

    .line 399
    :cond_2
    if-le p3, p2, :cond_3

    int-to-double v0, p3

    int-to-double v2, p2

    mul-double/2addr v2, v5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    int-to-double v1, p1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v1, p2, p1

    int-to-double v1, v1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v1, p3, p2

    int-to-double v1, v1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1, v11}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    goto :goto_0

    .line 406
    :cond_3
    int-to-double v0, p3

    int-to-double v2, p2

    mul-double/2addr v2, v5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    int-to-double v1, p1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v1, p2, p1

    int-to-double v1, v1

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    int-to-double v3, p2

    mul-double/2addr v1, v3

    int-to-double v3, p2

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1, v11}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    goto/16 :goto_0
.end method

.method private updateUIView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getView()Landroid/view/View;

    move-result-object v3

    .line 478
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 479
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEmptyView:Landroid/widget/TextView;

    .line 480
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 481
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus()Z

    move-result v1

    .line 482
    .local v1, "status":Z
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    .line 484
    iget-boolean v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    if-eqz v4, :cond_1

    .line 485
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 486
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 487
    const v4, 0x7f07005f

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V

    .line 523
    .end local v1    # "status":Z
    :cond_0
    :goto_0
    return-void

    .line 488
    .restart local v1    # "status":Z
    :cond_1
    iget-boolean v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    if-nez v4, :cond_2

    .line 489
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 490
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 491
    const v4, 0x7f07005e

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 492
    :cond_2
    if-eqz v1, :cond_4

    .line 493
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 494
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 496
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 497
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 498
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 499
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 500
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 501
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "sms_counter_cycle"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "cycle":Ljava/lang/String;
    const/4 v2, 0x0

    .line 504
    .local v2, "value":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 505
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 506
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "sms_counter_startDay"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    goto/16 :goto_0

    .line 508
    :cond_3
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 510
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "sms_counter_startWeek"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    goto/16 :goto_0

    .line 514
    .end local v0    # "cycle":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 515
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 516
    const v4, 0x7f07005d

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V

    goto/16 :goto_0
.end method

.method private verifyUserInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 332
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 193
    .local v0, "activity":Landroid/app/Activity;
    const v8, 0x7f05002c

    invoke-virtual {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addPreferencesFromResource(I)V

    .line 199
    new-instance v8, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;

    invoke-direct {v8, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDBHandler:Landroid/os/Handler;

    .line 213
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 214
    new-instance v8, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-direct {v8, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 215
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v8

    iput-boolean v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    .line 216
    iget-boolean v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    if-nez v8, :cond_0

    .line 217
    invoke-direct {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->startSmsCounterService(Landroid/content/Context;)V

    .line 220
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 222
    const-string v8, "sms_counter_preference_file"

    invoke-virtual {v0, v8, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 225
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState()I

    move-result v3

    .line 226
    .local v3, "state":I
    if-ne v3, v11, :cond_2

    .line 227
    iput-boolean v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    .line 233
    new-instance v8, Landroid/widget/Switch;

    invoke-direct {v8, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    .line 234
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 236
    .local v2, "padding":I
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v10, v10, v2, v10}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 237
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus()Z

    move-result v4

    .line 238
    .local v4, "status":Z
    iget-boolean v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    .line 239
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 243
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    new-instance v9, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;

    invoke-direct {v9, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 288
    const-string v8, "sms_counter_summary_bar"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    .line 289
    const-string v8, "sms_counter_message"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    .line 291
    const-string v8, "sms_counter_warning_level"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    .line 292
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "sms_counter_warning_level"

    const-string v10, "50"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "text1":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 296
    const-string v8, "sms_counter_limit_level"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    .line 297
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "sms_counter_limit_level"

    const-string v10, "100"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "text2":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    const-string v8, "sms_counter_cycle"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    .line 303
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "sms_counter_cycle"

    const-string v10, "0"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "value":Ljava/lang/String;
    move-object v1, v7

    .line 305
    .local v1, "currentCycle":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 306
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateCycleSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    const-string v8, "sms_counter_startDay"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    .line 309
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    const-string v9, "1"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 311
    const-string v8, "sms_counter_startWeek"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    .line 312
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    const-string v9, "1"

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 314
    const-string v8, "0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "sms_counter_startDay"

    const-string v10, "1"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    .line 324
    :cond_1
    :goto_2
    return-void

    .line 229
    .end local v1    # "currentCycle":Ljava/lang/String;
    .end local v2    # "padding":I
    .end local v4    # "status":Z
    .end local v5    # "text1":Ljava/lang/String;
    .end local v6    # "text2":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    iput-boolean v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    goto/16 :goto_0

    .line 241
    .restart local v2    # "padding":I
    .restart local v4    # "status":Z
    :cond_3
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 319
    .restart local v1    # "currentCycle":Ljava/lang/String;
    .restart local v5    # "text1":Ljava/lang/String;
    .restart local v6    # "text2":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_4
    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "sms_counter_startWeek"

    const-string v10, "1"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 322
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "dialogId"    # I

    .prologue
    const/4 v10, 0x1

    .line 545
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 546
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 549
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    .line 586
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 552
    :pswitch_0
    const v7, 0x7f040072

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 554
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f090056

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 555
    .local v3, "cycleDayPicker":Landroid/widget/NumberPicker;
    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v8, "sms_counter_startDay"

    const-string v9, "1"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 558
    .local v2, "cycleDay":I
    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 559
    const/16 v7, 0x1f

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 560
    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 561
    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 563
    const v7, 0x7f070070

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 564
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 566
    const v7, 0x104000a

    new-instance v8, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;

    invoke-direct {v8, p0, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 377
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 378
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 365
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    if-ne p2, v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "sms_counter_warning_level"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    if-ne p2, v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "sms_counter_limit_level"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->showDialog(I)V

    .line 540
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    .line 359
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xbb8

    const/4 v9, 0x1

    .line 590
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 593
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "sms_counter_warning_level"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 598
    const-string v7, "50"

    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "summary":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_1

    .line 600
    :cond_0
    const-string v7, "sms_counter_warning_level"

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 601
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 602
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    .line 605
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->checkInputNumber()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 606
    invoke-direct {p0, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->verifyUserInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "result":Ljava/lang/String;
    const-string v7, "sms_counter_warning_level"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 608
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 609
    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 615
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    iput-boolean v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 616
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 618
    .end local v5    # "summary":Ljava/lang/String;
    :cond_2
    const-string v7, "sms_counter_limit_level"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 623
    const-string v7, "100"

    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 624
    .restart local v5    # "summary":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 625
    const-string v7, "sms_counter_limit_level"

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 627
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    .line 630
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->checkInputNumber()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 631
    invoke-direct {p0, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->verifyUserInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 632
    .restart local v3    # "result":Ljava/lang/String;
    const-string v7, "sms_counter_limit_level"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 633
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 641
    .end local v3    # "result":Ljava/lang/String;
    :goto_1
    iput-boolean v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 642
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 644
    .end local v5    # "summary":Ljava/lang/String;
    :cond_4
    const-string v7, "sms_counter_cycle"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 649
    const-string v7, "0"

    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 650
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateCycleSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 651
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 652
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 653
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 654
    const-string v7, "sms_counter_startDay"

    const-string v8, "1"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 663
    :goto_2
    invoke-direct {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    .line 664
    iput-boolean v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 665
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 667
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    const-string v7, "sms_counter_startDay"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 672
    const-string v7, "1"

    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 673
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 674
    .local v4, "selected":I
    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    .line 675
    iput-boolean v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 676
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 678
    .end local v4    # "selected":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    const-string v7, "sms_counter_startWeek"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 683
    const-string v7, "sms_counter_startWeek"

    const-string v8, "1"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 684
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 685
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 686
    .restart local v4    # "selected":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, v1

    if-ge v2, v7, :cond_7

    .line 687
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 688
    add-int/lit8 v4, v2, 0x1

    .line 692
    :cond_7
    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    .line 693
    iput-boolean v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 694
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 696
    .end local v1    # "entryValues":[Ljava/lang/CharSequence;
    .end local v2    # "i":I
    .end local v4    # "selected":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_8
    return-void

    .line 611
    .restart local v5    # "summary":Ljava/lang/String;
    :cond_9
    const-string v7, "sms_counter_warning_level"

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 612
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 613
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f070071

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 636
    :cond_a
    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 637
    const-string v7, "sms_counter_limit_level"

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 638
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f070072

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 657
    .end local v5    # "summary":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 658
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 659
    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 660
    const-string v7, "sms_counter_startWeek"

    const-string v8, "1"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 661
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 686
    .restart local v1    # "entryValues":[Ljava/lang/CharSequence;
    .restart local v2    # "i":I
    .restart local v4    # "selected":I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 336
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 341
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 343
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 348
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    .line 350
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateUIView()V

    .line 351
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 352
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 369
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 370
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 371
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 372
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 373
    return-void
.end method
