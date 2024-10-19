.class Lcom/android/settings/deviceinfo/MSimStatus$5;
.super Ljava/lang/Object;
.source "MSimStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MSimStatus;->onCreateDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MSimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MSimStatus;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimStatus$5;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$5;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    const-class v2, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 414
    packed-switch p2, :pswitch_data_0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$5;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->startActivity(Landroid/content/Intent;)V

    .line 425
    return-void

    .line 416
    :pswitch_0
    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 419
    :pswitch_1
    const-string v1, "subscription"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
