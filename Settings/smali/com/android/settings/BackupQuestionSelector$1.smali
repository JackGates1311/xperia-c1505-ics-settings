.class Lcom/android/settings/BackupQuestionSelector$1;
.super Ljava/lang/Object;
.source "BackupQuestionSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackupQuestionSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BackupQuestionSelector;


# direct methods
.method constructor <init>(Lcom/android/settings/BackupQuestionSelector;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/BackupQuestionSelector$1;->this$0:Lcom/android/settings/BackupQuestionSelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 104
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 105
    .local v0, "textView":Landroid/widget/CheckedTextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector$1;->this$0:Lcom/android/settings/BackupQuestionSelector;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/BackupQuestionSelector;->access$002(Lcom/android/settings/BackupQuestionSelector;I)I

    .line 108
    .end local v0    # "textView":Landroid/widget/CheckedTextView;
    :cond_0
    return-void
.end method
