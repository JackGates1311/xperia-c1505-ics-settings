.class Lcom/android/settings/SetBackupQuestion$1;
.super Ljava/lang/Object;
.source "SetBackupQuestion.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SetBackupQuestion;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetBackupQuestion;


# direct methods
.method constructor <init>(Lcom/android/settings/SetBackupQuestion;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/SetBackupQuestion$1;->this$0:Lcom/android/settings/SetBackupQuestion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 171
    packed-switch p2, :pswitch_data_0

    .line 179
    :goto_0
    return v1

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion$1;->this$0:Lcom/android/settings/SetBackupQuestion;

    invoke-static {v0}, Lcom/android/settings/SetBackupQuestion;->access$000(Lcom/android/settings/SetBackupQuestion;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 171
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
