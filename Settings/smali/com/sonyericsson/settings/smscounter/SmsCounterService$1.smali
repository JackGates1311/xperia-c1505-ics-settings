.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;
.super Landroid/os/Handler;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->onCreate()V
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
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel1()I

    move-result v0

    .line 86
    .local v0, "warningLevel1":I
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel2()I

    move-result v1

    .line 87
    .local v1, "warningLevel2":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->checkWarningStatus(IIIZ)V

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget()V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->checkWarningStatus(IIIZ)V

    .line 97
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget()V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
