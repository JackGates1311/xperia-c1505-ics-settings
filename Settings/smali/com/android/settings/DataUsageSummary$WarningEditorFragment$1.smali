.class Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1913
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 1916
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1918
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    mul-long v0, v2, v4

    .line 1920
    .local v0, "bytes":J
    invoke-static {}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->access$4000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1921
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    const/4 v4, 0x1

    new-array v4, v4, [I

    invoke-static {}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->access$4100()I

    move-result v5

    aput v5, v4, v6

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->setAppWarningBytes(Landroid/net/NetworkTemplate;[IJ)V

    .line 1926
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2, v6}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1927
    return-void

    .line 1923
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_0
.end method
