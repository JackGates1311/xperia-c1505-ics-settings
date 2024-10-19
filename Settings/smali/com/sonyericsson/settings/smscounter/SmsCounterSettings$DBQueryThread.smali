.class Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;
.super Ljava/lang/Thread;
.source "SmsCounterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBQueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
    .param p2, "x1"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 114
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    monitor-enter v8

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings()J

    move-result-wide v1

    .line 119
    .local v1, "startTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings()J

    move-result-wide v3

    .line 120
    .local v3, "endTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I

    move-result v6

    .line 122
    .local v6, "count":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setCurrentCount(I)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 125
    .local v7, "message":Landroid/os/Message;
    iput v6, v7, Landroid/os/Message;->arg1:I

    .line 126
    const/4 v0, 0x4

    iput v0, v7, Landroid/os/Message;->what:I

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    monitor-exit v8

    .line 130
    return-void

    .line 129
    .end local v1    # "startTime":J
    .end local v3    # "endTime":J
    .end local v6    # "count":I
    .end local v7    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
