.class Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iput-object p3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p4, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1819
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->access$3900(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1820
    .local v0, "cycleDay":I
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;I)V

    .line 1821
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1822
    return-void
.end method
