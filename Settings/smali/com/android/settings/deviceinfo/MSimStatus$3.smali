.class Lcom/android/settings/deviceinfo/MSimStatus$3;
.super Ljava/lang/Object;
.source "MSimStatus.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MSimStatus;->onCreate(Landroid/os/Bundle;)V
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
    .line 175
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->showDialog(I)V

    .line 179
    const/4 v0, 0x1

    return v0
.end method
