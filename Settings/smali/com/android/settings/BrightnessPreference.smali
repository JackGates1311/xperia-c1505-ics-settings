.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAutomaticAvailable:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 62
    new-instance v0, Lcom/android/settings/BrightnessPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessPreference$1;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 69
    new-instance v0, Lcom/android/settings/BrightnessPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessPreference$2;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 82
    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 83
    const v0, 0x7f020066

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessPreference;->setDialogIcon(I)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessPreference;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessPreference;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 149
    move v0, p1

    .line 151
    .local v0, "brightness":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 159
    move v0, p1

    .line 161
    .local v0, "brightnessMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 169
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 170
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 171
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 175
    .local v0, "checked":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    return-void
.end method

.method private restoreOldState()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 212
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_3

    .line 215
    :cond_2
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 217
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 222
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 224
    .local v0, "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "power":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 238
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5  # Increased locals to accommodate the new variable

    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 104
    invoke-static {p1}, Lcom/android/settings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    # Check if mSeekBar is null
    if-eqz v0, :show_dialog

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 105
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V
    
    .line 106
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 107
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 109
    const v0, 0x7f0900cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 113
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    return-void

    :cond_0
    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 120
:show_dialog
    # Create a simple dialog
    const v0, 0x7f0900cd  # Replace with your dialog layout ID

    # Get the dialog layout view
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    # Check if dialog view is not null
    if-eqz v0, :end

    # Assuming you have a method to create and show the dialog
    const-string v1, "Brightness Settings"
    const-string v2, "This is a simple brightness dialog."

    # Call your method to show the dialog with title and message
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/BrightnessPreference;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

:end
    return-void
.end method



.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 144
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 146
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 185
    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 206
    return-void

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 123
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 271
    :goto_0
    return-void

    .line 265
    :cond_1
    check-cast p1, Lcom/android/settings/BrightnessPreference$SavedState;

    .line 266
    invoke-virtual {p1}, Lcom/android/settings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 268
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 269
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 270
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 268
    goto :goto_1

    :cond_3
    move v1, v2

    .line 269
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 242
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 243
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 254
    :goto_0
    return-object v0

    .line 246
    :cond_1
    new-instance v0, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 247
    .local v0, "myState":Lcom/android/settings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    .line 248
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    .line 249
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 250
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    .line 253
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    .line 249
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 127
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 141
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    .line 98
    return-void
.end method
