.class public Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;
.super Landroid/app/Activity;
.source "SmsCounterAlertDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;->showDialog(I)V

    .line 27
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 33
    .local v1, "dialog":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 53
    :goto_0
    return-object v1

    .line 35
    :pswitch_0
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog$1;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterAlertDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
