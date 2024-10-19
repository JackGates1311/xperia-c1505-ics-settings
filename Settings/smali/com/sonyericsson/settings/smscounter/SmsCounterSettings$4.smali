.class Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;
.super Ljava/lang/Object;
.source "SmsCounterSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$700(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 248
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    const v2, 0x7f07005f

    invoke-static {v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V

    .line 282
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 252
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 253
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    const v2, 0x7f07005e

    invoke-static {v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V

    goto :goto_0

    .line 254
    :cond_1
    if-eqz p2, :cond_3

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 256
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 257
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 259
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1300(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sms_counter_cycle"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "cycle":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1500(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setSmsCounterStatus(Z)V

    .line 272
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$302(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Z)Z

    .line 273
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1700(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    goto/16 :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 275
    .end local v0    # "cycle":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 277
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    const v2, 0x7f07005d

    invoke-static {v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setSmsCounterStatus(Z)V

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification()V

    .line 280
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget()V

    goto/16 :goto_0
.end method
