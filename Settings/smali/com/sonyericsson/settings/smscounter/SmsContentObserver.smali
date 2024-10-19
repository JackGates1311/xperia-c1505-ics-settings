.class public Lcom/sonyericsson/settings/smscounter/SmsContentObserver;
.super Landroid/database/ContentObserver;
.source "SmsContentObserver.java"


# instance fields
.field private mService:Lcom/sonyericsson/settings/smscounter/SmsCounterService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 16
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    check-cast p1, Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsContentObserver;->mService:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .line 18
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsContentObserver;->mService:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->onSmsDBChanged()V

    .line 23
    return-void
.end method
