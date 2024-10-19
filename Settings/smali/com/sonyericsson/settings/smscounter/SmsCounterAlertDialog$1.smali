.class Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog$1;
.super Ljava/lang/Object;
.source "SmsCounterAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;->finish()V

    .line 47
    return-void
.end method
