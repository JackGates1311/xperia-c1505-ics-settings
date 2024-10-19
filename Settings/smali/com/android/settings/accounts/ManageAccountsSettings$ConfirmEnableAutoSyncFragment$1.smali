.class Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$1;
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
    .line 107
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 109
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    .line 110
    .local v1, "target":Lcom/android/settings/accounts/ManageAccountsSettings;
    if-eqz v1, :cond_0

    .line 113
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings/accounts/ManageAccountsSettings;)Z

    move-result v0

    .line 114
    .local v0, "flag":Z
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$002(Lcom/android/settings/accounts/ManageAccountsSettings;Z)Z

    .line 115
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$100(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    invoke-static {v1, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$002(Lcom/android/settings/accounts/ManageAccountsSettings;Z)Z

    .line 117
    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 118
    invoke-virtual {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 120
    .end local v0    # "flag":Z
    :cond_0
    return-void
.end method
