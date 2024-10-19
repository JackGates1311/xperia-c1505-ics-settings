.class Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$2;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;

    invoke-virtual {v1}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    .line 126
    .local v0, "target":Lcom/android/settings/accounts/ManageAccountsSettings;
    if-eqz v0, :cond_0

    .line 129
    invoke-static {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$100(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    :cond_0
    return-void
.end method
