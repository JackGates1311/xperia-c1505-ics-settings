.class Lcom/sonymobile/settings/TetherConfirmationDialog$2;
.super Ljava/lang/Object;
.source "TetherConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/TetherConfirmationDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->setResult(I)V

    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->finish()V

    .line 71
    return-void
.end method
