.class public Lcom/android/settings/MasterReset;
.super Landroid/app/Activity;
.source "MasterReset.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private final mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/MasterReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterReset$1;-><init>(Lcom/android/settings/MasterReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 155
    new-instance v0, Lcom/android/settings/MasterReset$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterReset$2;-><init>(Lcom/android/settings/MasterReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterReset;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterReset;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/MasterReset;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterReset;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterReset;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalButton:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterReset;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->setContentView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateButton:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterReset;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->setContentView(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 125
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishFinalConfirmationState()V

    goto :goto_0

    .line 143
    :cond_1
    if-nez p2, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->finish()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    .line 201
    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    .line 202
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    .line 203
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 205
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    .line 206
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    .line 220
    :cond_0
    return-void
.end method

.method protected sendMasterResetBroadcastAndClearLock()V
    .locals 6

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sonyericsson.settings.MASTERRESET"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->setAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/android/settings/MasterReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 113
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 114
    .local v1, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "default_tether_dun_apn"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void

    .line 108
    .end local v1    # "mEditor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    const v4, 0x7f070037

    invoke-virtual {p0, v4}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 109
    .local v2, "msgBox":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected setAirplaneModeOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    :goto_0
    return v1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v1, v2

    .line 91
    goto :goto_0
.end method
