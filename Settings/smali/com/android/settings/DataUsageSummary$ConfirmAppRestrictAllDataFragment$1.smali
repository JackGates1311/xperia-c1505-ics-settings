.class Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment;)V
    .locals 0

    .prologue
    .line 2303
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2305
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2306
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2307
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$2200(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2309
    :cond_0
    return-void
.end method
