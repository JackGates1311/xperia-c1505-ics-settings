.class public Lcom/android/settings/MultiSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mConfigSub:Landroid/preference/PreferenceScreen;

.field private mData:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mSms:Landroid/preference/ListPreference;

.field private mVoice:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 224
    new-instance v0, Lcom/android/settings/MultiSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MultiSimSettings$1;-><init>(Lcom/android/settings/MultiSimSettings;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateDataSummary()V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateDataSummary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 140
    const/4 v0, -0x1

    .line 141
    .local v0, "Data_val":I
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 144
    .local v2, "summaries":[Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_data_call"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 149
    :goto_0
    const-string v3, "MultiSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataSummary: Data_val = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-nez v0, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "MultiSimSettings"

    const-string v4, "Settings Exception Reading Multi Sim Data Subscription Value."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 153
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-ne v0, v7, :cond_1

    .line 154
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateSmsSummary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 163
    const/4 v0, -0x1

    .line 164
    .local v0, "Sms_val":I
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 167
    .local v2, "summaries":[Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_sms"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    :goto_0
    const-string v3, "MultiSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSmsSummary: Sms_val = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-nez v0, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    :goto_1
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "MultiSimSettings"

    const-string v4, "Settings Exception Reading Multi Sim SMS Call Values."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-ne v0, v7, :cond_1

    .line 177
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateVoiceSummary()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateDataSummary()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V

    .line 110
    return-void
.end method

.method private updateVoiceSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 113
    const/4 v3, -0x1

    .line 114
    .local v3, "voiceSub":I
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 117
    .local v2, "summaries":[Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_voice_call"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 121
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->isPromptEnabled()Z

    move-result v0

    .line 122
    .local v0, "promptEnabled":Z
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVoiceSummary: voiceSub =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "promptEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 124
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    :goto_1
    return-void

    .line 118
    .end local v0    # "promptEnabled":Z
    :catch_0
    move-exception v1

    .line 119
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "MultiSimSettings"

    const-string v5, "Settings Exception Reading Multi sim Voice Call Values"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "promptEnabled":Z
    :cond_0
    if-ne v3, v8, :cond_1

    if-nez v0, :cond_1

    .line 127
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_1
    if-eqz v0, :cond_2

    .line 130
    const-string v4, "MultiSimSettings"

    const-string v5, "prompt is enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method displayAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v0, "MultiSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayErrorDialog!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 308
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 297
    const-string v0, "MultiSimSettings"

    const-string v1, "onClick!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiSimSettings;->addPreferencesFromResource(I)V

    .line 74
    const-string v0, "voice"

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    .line 75
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    .line 77
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    const-string v0, "sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    .line 79
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v0, "config_sub"

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    .line 81
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CONFIG_SUB"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "MultiSimSettings"

    const-string v1, "Airplane mode is ON, grayout the config subscription menu!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 269
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 270
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070690

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 278
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 292
    const-string v0, "MultiSimSettings"

    const-string v1, "onDismiss!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 99
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    .line 186
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 189
    .local v6, "summaries":[Ljava/lang/CharSequence;
    const-string v7, "voice"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080048

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    move-object v7, p2

    .line 191
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, "V_value":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    .line 193
    invoke-static {v10}, Lcom/android/internal/telephony/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 194
    const-string v7, "MultiSimSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prompt is enabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    .end local v2    # "V_value":I
    :cond_0
    const-string v7, "data"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p2

    .line 204
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "D_value":I
    const-string v7, "MultiSimSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDataSubscription "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v7, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-eqz v7, :cond_1

    .line 207
    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Lcom/android/settings/MultiSimSettings;->showDialog(I)V

    .line 209
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    .line 210
    .local v4, "mSubscriptionManager":Lcom/android/internal/telephony/SubscriptionManager;
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-static {v7, v10, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 211
    .local v5, "setDdsMsg":Landroid/os/Message;
    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    .line 214
    .end local v0    # "D_value":I
    .end local v4    # "mSubscriptionManager":Lcom/android/internal/telephony/SubscriptionManager;
    .end local v5    # "setDdsMsg":Landroid/os/Message;
    :cond_2
    const-string v7, "sms"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 215
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, "S_value":I
    const-string v7, "MultiSimSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSMSSubscription "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v1}, Lcom/android/internal/telephony/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 218
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    .end local v1    # "S_value":I
    :cond_3
    return v10

    .line 196
    .restart local v2    # "V_value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string v7, "MultiSimSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setVoiceSubscription "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/internal/telephony/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 198
    invoke-static {v2}, Lcom/android/internal/telephony/MSimPhoneFactory;->setVoiceSubscription(I)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 283
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 92
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateState()V

    .line 93
    return-void
.end method
