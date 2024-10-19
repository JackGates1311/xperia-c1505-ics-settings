.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;
.super Landroid/os/AsyncTask;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 242
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 246
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "newPhoneIMSI":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "index":I
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI()Ljava/lang/String;

    move-result-object v2

    .line 255
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 261
    const-string v3, "11111111"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    .line 263
    :cond_1
    return-object v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 242
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$300(Lcom/sonyericsson/settings/smscounter/SmsCounterService;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings()J

    move-result-wide v1

    .line 271
    .local v1, "startTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings()J

    move-result-wide v3

    .line 272
    .local v3, "endTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I

    move-result v6

    .line 274
    .local v6, "count":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setCurrentCount(I)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 277
    .local v7, "message":Landroid/os/Message;
    iput v6, v7, Landroid/os/Message;->arg1:I

    .line 278
    const/4 v0, 0x1

    iput v0, v7, Landroid/os/Message;->what:I

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .end local v1    # "startTime":J
    .end local v3    # "endTime":J
    .end local v6    # "count":I
    .end local v7    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
