.class Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;
.super Landroid/os/Handler;
.source "SmsCounterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
