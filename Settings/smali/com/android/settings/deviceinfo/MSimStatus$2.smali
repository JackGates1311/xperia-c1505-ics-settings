.class Lcom/android/settings/deviceinfo/MSimStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MSimStatus;
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
    .line 139
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubscriptionInfoReceiver receive intent, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MSimStatus;->access$200(Lcom/android/settings/deviceinfo/MSimStatus;)V

    .line 147
    :cond_0
    return-void
.end method
