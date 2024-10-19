.class Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$1;
.super Ljava/lang/Object;
.source "TetheringFailDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$1;->this$0:Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$1;->this$0:Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;->finish()V

    .line 67
    return-void
.end method
