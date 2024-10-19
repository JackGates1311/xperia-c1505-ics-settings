.class public Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
.super Ljava/lang/Object;
.source "SmsCounterUtil.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final sBuilder:Ljava/lang/StringBuilder;

.field private final sFormatter:Ljava/util/Formatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mPrefs:Landroid/content/SharedPreferences;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sBuilder:Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sFormatter:Ljava/util/Formatter;

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v1, "sms_counter_preference_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mPrefs:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method private update(ILjava/lang/String;)V
    .locals 33
    .param p1, "selectedValue"    # I
    .param p2, "currentCycle"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v24

    .line 95
    .local v24, "cal":Ljava/util/Calendar;
    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 96
    .local v11, "year":I
    const/4 v6, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 97
    .local v10, "month":I
    const-wide/16 v31, 0x0

    .line 98
    .local v31, "start":J
    const-wide/16 v27, 0x0

    .line 99
    .local v27, "end":J
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 100
    .local v5, "time":Landroid/text/format/Time;
    const-string v6, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 101
    const/4 v6, 0x5

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 103
    .local v25, "current":I
    move/from16 v0, p1

    move/from16 v1, v25

    if-gt v0, v1, :cond_4

    .line 104
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v5 .. v11}, Landroid/text/format/Time;->set(IIIIII)V

    .line 105
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v31

    .line 106
    const/16 v6, 0xb

    if-eq v10, v6, :cond_1

    .line 107
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    add-int/lit8 v17, v10, 0x1

    move-object v12, v5

    move/from16 v18, v11

    invoke-virtual/range {v12 .. v18}, Landroid/text/format/Time;->set(IIIIII)V

    .line 112
    :goto_0
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v16

    .line 113
    .local v16, "nextMax":I
    add-int/lit8 v6, p1, -0x1

    move/from16 v0, v16

    if-le v6, v0, :cond_2

    .line 114
    const/16 v13, 0x3b

    const/16 v14, 0x3b

    const/16 v15, 0x17

    add-int/lit8 v17, v10, 0x1

    move-object v12, v5

    move/from16 v18, v11

    invoke-virtual/range {v12 .. v18}, Landroid/text/format/Time;->set(IIIIII)V

    .line 122
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v27

    .line 161
    .end local v16    # "nextMax":I
    .end local v25    # "current":I
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->saveDateRangeToPreference(JJ)V

    .line 162
    return-void

    .line 109
    .restart local v25    # "current":I
    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    add-int/lit8 v18, v11, 0x1

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 116
    .restart local v16    # "nextMax":I
    :cond_2
    const/16 v6, 0xb

    if-ne v10, v6, :cond_3

    .line 117
    const/16 v18, 0x3b

    const/16 v19, 0x3b

    const/16 v20, 0x17

    add-int/lit8 v21, p1, -0x1

    const/16 v22, 0x0

    add-int/lit8 v23, v11, 0x1

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v23}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_1

    .line 119
    :cond_3
    const/16 v18, 0x3b

    const/16 v19, 0x3b

    const/16 v20, 0x17

    add-int/lit8 v21, p1, -0x1

    add-int/lit8 v22, v10, 0x1

    move-object/from16 v17, v5

    move/from16 v23, v11

    invoke-virtual/range {v17 .. v23}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_1

    .line 123
    .end local v16    # "nextMax":I
    :cond_4
    move/from16 v0, p1

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 124
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v11}, Landroid/text/format/Time;->set(IIIIII)V

    .line 125
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 126
    .local v9, "maxDate":I
    add-int/lit8 v6, p1, -0x1

    if-le v6, v9, :cond_5

    .line 127
    const/16 v6, 0x3b

    const/16 v7, 0x3b

    const/16 v8, 0x17

    invoke-virtual/range {v5 .. v11}, Landroid/text/format/Time;->set(IIIIII)V

    .line 131
    :goto_3
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v27

    .line 132
    if-eqz v10, :cond_7

    .line 133
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    add-int/lit8 v22, v10, -0x1

    move-object/from16 v17, v5

    move/from16 v23, v11

    invoke-virtual/range {v17 .. v23}, Landroid/text/format/Time;->set(IIIIII)V

    .line 134
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 135
    move/from16 v0, p1

    if-le v0, v9, :cond_6

    .line 136
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v17, v5

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-virtual/range {v17 .. v23}, Landroid/text/format/Time;->set(IIIIII)V

    .line 143
    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v31

    goto/16 :goto_2

    .line 129
    :cond_5
    const/16 v18, 0x3b

    const/16 v19, 0x3b

    const/16 v20, 0x17

    add-int/lit8 v21, p1, -0x1

    move-object/from16 v17, v5

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-virtual/range {v17 .. v23}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_3

    .line 138
    :cond_6
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    add-int/lit8 v22, v10, -0x1

    move-object/from16 v17, v5

    move/from16 v21, p1

    move/from16 v23, v11

    invoke-virtual/range {v17 .. v23}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_4

    .line 141
    :cond_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0xb

    add-int/lit8 v23, v11, -0x1

    move-object/from16 v17, v5

    move/from16 v21, p1

    invoke-virtual/range {v17 .. v23}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_4

    .line 145
    .end local v9    # "maxDate":I
    .end local v25    # "current":I
    :cond_8
    const-string v6, "1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    const/4 v6, 0x7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v26, v6, -0x1

    .line 147
    .local v26, "currentWeek":I
    if-nez v26, :cond_9

    .line 148
    const/16 v26, 0x7

    .line 150
    :cond_9
    const/4 v6, 0x5

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 151
    .local v21, "day":I
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v5

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-virtual/range {v17 .. v23}, Landroid/text/format/Time;->set(IIIIII)V

    .line 152
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v29

    .line 153
    .local v29, "now":J
    move/from16 v0, p1

    move/from16 v1, v26

    if-gt v0, v1, :cond_a

    .line 154
    const-wide/32 v6, 0x5265c00

    sub-int v8, v26, p1

    int-to-long v12, v8

    mul-long/2addr v6, v12

    sub-long v31, v29, v6

    .line 155
    const-wide/32 v6, 0x240c8400

    add-long v27, v31, v6

    goto/16 :goto_2

    .line 156
    :cond_a
    move/from16 v0, p1

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 157
    const-wide/32 v6, 0x5265c00

    sub-int v8, p1, v26

    int-to-long v12, v8

    mul-long/2addr v6, v12

    add-long v27, v29, v6

    .line 158
    const-wide/32 v6, 0x240c8400

    sub-long v31, v27, v6

    goto/16 :goto_2
.end method


# virtual methods
.method public cancelAlarmManager()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 265
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 266
    .local v1, "mAlarmManager":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.smscounter.action.NOTIFY_ALARM"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 268
    .local v2, "mPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 269
    return-void
.end method

.method public cancelNotification()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 90
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 91
    return-void
.end method

.method public checkWarningStatus(IIIZ)V
    .locals 7
    .param p1, "count"    # I
    .param p2, "warningLevel1"    # I
    .param p3, "warningLevel2"    # I
    .param p4, "update"    # Z

    .prologue
    const v6, 0x7f070076

    const v5, 0x7f0200b3

    const v4, 0x7f0200b2

    const v3, 0x7f070077

    const v2, 0x7f070075

    .line 278
    if-eqz p4, :cond_3

    .line 279
    if-ge p1, p2, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    if-lt p1, p2, :cond_2

    if-ge p1, p3, :cond_2

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 290
    :cond_2
    if-gt p3, p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 301
    :cond_3
    if-ge p1, p2, :cond_4

    .line 302
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification()V

    goto :goto_0

    .line 303
    :cond_4
    if-ne p1, p2, :cond_5

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 312
    :cond_5
    if-ne p1, p3, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0
.end method

.method public formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "utcTime"    # Z

    .prologue
    .line 184
    const v8, 0x10010

    .line 185
    .local v8, "flags":I
    if-eqz p6, :cond_0

    const-string v7, "UTC"

    .line 187
    .local v7, "timezone":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    move-object v0, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 185
    .end local v7    # "timezone":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 191
    .restart local v7    # "timezone":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentCount()I
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "sms_counter_current_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEndTimeSettings()J
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "sms_counter_endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneIMSI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    const-string v0, "11111111"

    .line 226
    .local v0, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 233
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 236
    :cond_0
    const-string v0, "11111111"

    .line 247
    :cond_1
    return-object v0
.end method

.method public getSavedPhoneIMSI()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v3, "sms_counter_preference_file"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "phone_imsi"

    const-string v3, "11111111"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "savedPhoneIMSI":Ljava/lang/String;
    return-object v1
.end method

.method public getSimState()I
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "state":I
    const/4 v1, 0x0

    .line 213
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 214
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 221
    :cond_0
    return v0
.end method

.method public getSmsCounterStatus()Z
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "sms_counter_on_off_status"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    .local v0, "status":Z
    return v0
.end method

.method public getStartTimeSettings()J
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "sms_counter_startTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningLevel1()I
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sms_counter_warning_level"

    const-string v3, "50"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "warningLevel1":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getWarningLevel2()I
    .locals 4

    .prologue
    .line 338
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sms_counter_limit_level"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "warningLevel2":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public saveDateRangeToPreference(JJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 165
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v3, "sms_counter_preference_file"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sms_counter_startTime"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v2, "sms_counter_endTime"

    invoke-interface {v0, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method

.method public sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long v1, v0, v2

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 71
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3, p4, p1, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 72
    const v1, -0xffff01

    iput v1, v3, Landroid/app/Notification;->ledARGB:I

    .line 73
    const/16 v1, 0x3e8

    iput v1, v3, Landroid/app/Notification;->ledOnMS:I

    .line 74
    const/16 v1, 0x5dc

    iput v1, v3, Landroid/app/Notification;->ledOffMS:I

    .line 75
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x3

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 76
    iget v1, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroid/app/Notification;->defaults:I

    .line 78
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/Settings$SmsCounterSettingsActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, p2, p3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 85
    return-void
.end method

.method public setAlarmManager(J)V
    .locals 6
    .param p1, "triggerAtTime"    # J

    .prologue
    const/4 v5, 0x0

    .line 254
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 255
    .local v1, "mAlarmManager":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.smscounter.action.NOTIFY_ALARM"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 257
    .local v2, "mPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 259
    return-void
.end method

.method public setCurrentCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 369
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sms_counter_current_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    return-void
.end method

.method public setSmsCounterStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 355
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 356
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sms_counter_on_off_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    return-void
.end method

.method public updateDateRange()V
    .locals 5

    .prologue
    .line 47
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sms_counter_cycle"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "currentCycle":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sms_counter_startDay"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->update(ILjava/lang/String;)V

    .line 63
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sms_counter_startWeek"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .restart local v1    # "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->update(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateWidget()V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.smscounter.appwidget.action.WIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    return-void
.end method
