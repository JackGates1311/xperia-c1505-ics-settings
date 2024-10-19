.class public Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;
.super Landroid/app/Activity;
.source "TetheringFailDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "dialog_text"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 45
    .local v0, "dialogOption":I
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;->showDialog(ILandroid/os/Bundle;)Z

    .line 46
    return-void

    .end local v0    # "dialogOption":I
    :cond_0
    move v0, v1

    .line 41
    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x1080027

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0706a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$1;-><init>(Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    .local v0, "mDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 72
    .end local v0    # "mDialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07069e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07069f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$2;-><init>(Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    .restart local v0    # "mDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method
