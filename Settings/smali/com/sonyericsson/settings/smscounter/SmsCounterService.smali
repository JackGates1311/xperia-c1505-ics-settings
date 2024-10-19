.class public Lcom/sonyericsson/settings/smscounter/SmsCounterService;
.super Landroid/app/Service;
.source "SmsCounterService.java"


# static fields
.field private static mPhoneIMSI:Ljava/lang/String;


# instance fields
.field private mDBHandler:Landroid/os/Handler;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSmsCounterObserver:Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

.field private mSmsTotalCount:I

.field private mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPhoneIMSI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:I

    .line 47
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:Landroid/content/SharedPreferences;

    .line 49
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 51
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/settings/smscounter/SmsCounterService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 37
    iget v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/settings/smscounter/SmsCounterService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->caculateLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/settings/smscounter/SmsCounterService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->insertSMSRecord(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->savePreference()V

    return-void
.end method

.method private caculateLength(Ljava/lang/String;)I
    .locals 3
    .param p1, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 389
    .local v1, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v1, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 390
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2
.end method

.method public static getMyPhoneIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPhoneIMSI:Ljava/lang/String;

    return-object v0
.end method

.method private insertSMSRecord(I)V
    .locals 7
    .param p1, "recordID"    # I

    .prologue
    .line 403
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 404
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getMyPhoneIMSI()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "phoneIMSI":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 407
    .local v0, "date":J
    const-string v4, "sms_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    const-string v4, "imsi"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const-string v4, "sent_time"

    const-wide/16 v5, 0x3e8

    rem-long v5, v0, v5

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "counter"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 416
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/settings/smscounter/SmsCounterConfig;->SMS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsCounterObserver:Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 396
    return-void
.end method

.method private savePreference()V
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sms_counter_total_count"

    iget v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    return-void
.end method

.method private setMyPhoneIMSI(Ljava/lang/String;)V
    .locals 2
    .param p1, "mPhoneIMSI"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 454
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "phone_imsi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    sput-object p1, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPhoneIMSI:Ljava/lang/String;

    .line 457
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsCounterObserver:Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 400
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    new-instance v3, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:Landroid/os/Handler;

    .line 103
    const-string v3, "sms_counter_preference_file"

    invoke-virtual {p0, v3, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:Landroid/content/SharedPreferences;

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "sms_counter_total_count"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:I

    .line 106
    new-instance v3, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-direct {v3, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 107
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSavedPhoneIMSI()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "savedPhoneIMSI":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-direct {p0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;)V

    .line 129
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    new-instance v3, Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsCounterObserver:Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->registerContentObserver()V

    .line 133
    return-void

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState()I

    move-result v2

    .line 116
    .local v2, "state":I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 117
    const-string v3, "11111111"

    invoke-direct {p0, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "newPhoneIMSI":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelAlarmManager()V

    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->savePreference()V

    .line 446
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->unregisterContentObserver()V

    .line 447
    return-void
.end method

.method public onSmsDBChanged()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    .line 384
    .local v0, "localThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    if-eqz p1, :cond_0

    .line 145
    const-string v3, "com.sonyericsson.settings.smscounter.DB_QUERY"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateDateRange()V

    .line 152
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    .line 178
    .local v0, "localThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 293
    .end local v0    # "localThread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return v5

    .line 187
    :cond_1
    const-string v3, "com.sonyericsson.settings.smscounter.BOOT_COMPLETED"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState()I

    move-result v2

    .line 194
    .local v2, "simState":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 195
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    .line 223
    .restart local v0    # "localThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 232
    .end local v0    # "localThread":Ljava/lang/Thread;
    .end local v2    # "simState":I
    :cond_2
    const-string v3, "com.sonyericsson.settings.smscounter.AIRPLANE_MODE_CHANGED"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 241
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 242
    new-instance v3, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;

    invoke-direct {v3, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 285
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification()V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "newPhoneIMSI":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;)V

    goto :goto_0
.end method
