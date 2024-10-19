.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;
.super Ljava/lang/Thread;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->onSmsDBChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 302
    const/4 v7, 0x0

    .line 304
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/settings/smscounter/SmsCounterConfig;->SENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v20, "_id"

    aput-object v20, v3, v6

    const/4 v6, 0x1

    const-string v20, "type"

    aput-object v20, v3, v6

    const/4 v6, 0x2

    const-string v20, "date"

    aput-object v20, v3, v6

    const/4 v6, 0x3

    const-string v20, "body"

    aput-object v20, v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 311
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 312
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 324
    .local v9, "currentCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)I

    move-result v1

    if-le v9, v1, :cond_5

    .line 325
    const/4 v14, 0x0

    .line 326
    .local v14, "index":I
    const-string v17, ""

    .line 327
    .local v17, "msgBody":Ljava/lang/String;
    const/16 v18, 0x1

    .line 328
    .local v18, "recordID":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)I

    move-result v1

    sub-int v12, v9, v1

    .line 331
    .local v12, "gap":I
    :cond_0
    const-string v1, "body"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 332
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move/from16 v0, v18

    invoke-static {v1, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->isRecordIDExist(Landroid/database/sqlite/SQLiteDatabase;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;Ljava/lang/String;)I

    move-result v15

    .line 339
    .local v15, "length":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_4

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    move/from16 v0, v18

    invoke-static {v1, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$600(Lcom/sonyericsson/settings/smscounter/SmsCounterService;I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings()J

    move-result-wide v2

    .line 343
    .local v2, "startTime":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings()J

    move-result-wide v4

    .line 344
    .local v4, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 346
    .local v10, "currentTime":J
    cmp-long v1, v2, v10

    if-gtz v1, :cond_1

    cmp-long v1, v10, v4

    if-ltz v1, :cond_2

    .line 347
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateDateRange()V

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings()J

    move-result-wide v2

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings()J

    move-result-wide v4

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setAlarmManager(J)V

    .line 353
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getMyPhoneIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I

    move-result v8

    .line 356
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setCurrentCount(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v16

    .line 359
    .local v16, "message":Landroid/os/Message;
    move-object/from16 v0, v16

    iput v8, v0, Landroid/os/Message;->arg1:I

    .line 360
    const/4 v1, 0x3

    move-object/from16 v0, v16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    .end local v2    # "startTime":J
    .end local v4    # "endTime":J
    .end local v8    # "count":I
    .end local v10    # "currentTime":J
    .end local v16    # "message":Landroid/os/Message;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 365
    :cond_4
    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_8

    .line 372
    .end local v12    # "gap":I
    .end local v13    # "i":I
    .end local v14    # "index":I
    .end local v15    # "length":I
    .end local v17    # "msgBody":Ljava/lang/String;
    .end local v18    # "recordID":I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$402(Lcom/sonyericsson/settings/smscounter/SmsCounterService;I)I

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$700(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .end local v9    # "currentCount":I
    :cond_6
    if-eqz v7, :cond_7

    .line 377
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_7
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    return-void

    .line 370
    .restart local v9    # "currentCount":I
    .restart local v12    # "gap":I
    .restart local v14    # "index":I
    .restart local v17    # "msgBody":Ljava/lang/String;
    .restart local v18    # "recordID":I
    :cond_8
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v14, v14, 0x1

    const/16 v1, 0x32

    if-lt v14, v1, :cond_0

    goto :goto_1

    .line 376
    .end local v9    # "currentCount":I
    .end local v12    # "gap":I
    .end local v14    # "index":I
    .end local v17    # "msgBody":Ljava/lang/String;
    .end local v18    # "recordID":I
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_9

    .line 377
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 380
    :catchall_1
    move-exception v1

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
