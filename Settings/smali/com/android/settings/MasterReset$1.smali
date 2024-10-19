.class Lcom/android/settings/MasterReset$1;
.super Ljava/lang/Object;
.source "MasterReset.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterReset;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterReset;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/MasterReset$1;->this$0:Lcom/android/settings/MasterReset;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/MasterReset$1;->this$0:Lcom/android/settings/MasterReset;

    invoke-virtual {v0}, Lcom/android/settings/MasterReset;->sendMasterResetBroadcastAndClearLock()V

    .line 69
    return-void
.end method
