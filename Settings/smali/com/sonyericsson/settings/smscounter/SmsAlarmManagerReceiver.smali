.class public Lcom/sonyericsson/settings/smscounter/SmsAlarmManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsAlarmManagerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-direct {v0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, "mUtil":Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    const-string v1, "com.sonyericsson.smscounter.action.NOTIFY_ALARM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification()V

    .line 25
    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelAlarmManager()V

    .line 27
    :cond_0
    return-void
.end method
