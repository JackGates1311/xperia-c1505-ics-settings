.class Lcom/android/settings/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocationSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationSettings;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    invoke-static {v0}, Lcom/android/settings/LocationSettings;->access$000(Lcom/android/settings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/LocationSettings$1;->this$0:Lcom/android/settings/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 105
    return-void
.end method
