.class Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;
.super Ljava/lang/Object;
.source "TetherAPNSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 66
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    const-string v3, "dual-tether-apn-data"

    invoke-static {v2, v3}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "apns":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 69
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "apnList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge p2, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_dun_apn"

    aget-object v4, v0, p2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .end local v0    # "apnList":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->setResult(I)V

    .line 76
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->finish()V

    .line 78
    return-void
.end method
