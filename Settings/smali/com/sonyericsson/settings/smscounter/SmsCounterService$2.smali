.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;
.super Ljava/lang/Thread;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->onStartCommand(Landroid/content/Intent;II)I
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
    .line 152
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 156
    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    monitor-enter v8

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSavedPhoneIMSI()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "savedPhoneIMSI":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings()J

    move-result-wide v1

    .line 163
    .local v1, "startTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings()J

    move-result-wide v3

    .line 165
    .local v3, "endTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I

    move-result v6

    .line 167
    .local v6, "count":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setCurrentCount(I)V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 170
    .local v7, "message":Landroid/os/Message;
    iput v6, v7, Landroid/os/Message;->arg1:I

    .line 171
    const/4 v0, 0x0

    iput v0, v7, Landroid/os/Message;->what:I

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    monitor-exit v8

    .line 175
    return-void

    .line 174
    .end local v1    # "startTime":J
    .end local v3    # "endTime":J
    .end local v5    # "savedPhoneIMSI":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
