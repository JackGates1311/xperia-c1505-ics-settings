.class Lcom/android/settings/MultiSimSettings$1;
.super Landroid/os/Handler;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiSimSettings;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 229
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 231
    :pswitch_0
    const-string v4, "MultiSimSettings"

    const-string v5, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    iget-boolean v4, v4, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-eqz v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/settings/MultiSimSettings;->dismissDialog(I)V

    .line 235
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v4}, Lcom/android/settings/MultiSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 236
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-static {v4}, Lcom/android/settings/MultiSimSettings;->access$000(Lcom/android/settings/MultiSimSettings;)V

    .line 238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 242
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v5}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070693

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "status":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v4, v2}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .end local v2    # "status":Ljava/lang/String;
    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 251
    .local v1, "result":Z
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET_DATA_SUBSCRIPTION_DONE: result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-ne v1, v7, :cond_2

    .line 254
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v4}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070691

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .restart local v2    # "status":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v4}, Lcom/android/settings/MultiSimSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 256
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 258
    .end local v2    # "status":Ljava/lang/String;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v4}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070692

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .restart local v2    # "status":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v4, v2}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
