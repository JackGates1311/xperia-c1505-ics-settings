.class Lcom/android/settings/deviceinfo/MSimStatus$4;
.super Landroid/telephony/PhoneStateListener;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MSimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimStatus$4;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$4;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->access$302(Lcom/android/settings/deviceinfo/MSimStatus;I)I

    .line 246
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$4;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimStatus;->access$400(Lcom/android/settings/deviceinfo/MSimStatus;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$4;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimStatus;->access$200(Lcom/android/settings/deviceinfo/MSimStatus;)V

    .line 248
    return-void
.end method
