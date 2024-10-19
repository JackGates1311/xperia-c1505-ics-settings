.class public Lcom/sonymobile/settings/TetherConfirmationDialog;
.super Landroid/app/Activity;
.source "TetherConfirmationDialog.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->showDialog(ILandroid/os/Bundle;)Z

    .line 42
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "id"    # I

    .prologue
    .line 54
    const-string v7, "tether_message_required"

    invoke-static {p0, v7}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 57
    .local v3, "tetherMessageRequired":Z
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0703c0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/sonymobile/settings/TetherConfirmationDialog$3;

    invoke-direct {v9, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$3;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/sonymobile/settings/TetherConfirmationDialog$2;

    invoke-direct {v9, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$2;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/sonymobile/settings/TetherConfirmationDialog$1;

    invoke-direct {v8, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$1;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    .line 80
    if-eqz v3, :cond_1

    .line 81
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 83
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040076

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 84
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f090140

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 86
    .local v4, "textView":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 87
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070080

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    .local v2, "ss":Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "url":Ljava/lang/String;
    new-instance v7, Landroid/text/style/URLSpan;

    invoke-direct {v7, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x12

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 93
    iget-object v7, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 101
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "ss":Landroid/text/SpannableString;
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v7

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070082

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "exp":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 49
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 50
    return-void
.end method
