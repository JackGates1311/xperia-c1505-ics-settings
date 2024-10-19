.class public Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;
.super Landroid/app/DialogFragment;
.source "ManageAccountsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmEnableAutoSyncFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/accounts/ManageAccountsSettings;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;

    invoke-direct {v0}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;-><init>()V

    .line 94
    .local v0, "dialog":Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncEnable"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 102
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0705d5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 105
    const v2, 0x7f070018

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 107
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$2;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
