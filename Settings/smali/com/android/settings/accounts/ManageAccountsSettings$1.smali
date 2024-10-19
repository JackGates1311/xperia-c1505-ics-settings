.class Lcom/android/settings/accounts/ManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 191
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings/accounts/ManageAccountsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$100(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/ManageAccountsSettings$ConfirmEnableAutoSyncFragment;->show(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-static {p2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method
