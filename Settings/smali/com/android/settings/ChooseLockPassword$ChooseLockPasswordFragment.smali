.class public Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 83
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 84
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 85
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 86
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 87
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 88
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 89
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 91
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 93
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 106
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 379
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "pin":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const/4 v0, 0x0

    .line 384
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v5, :cond_3

    .line 385
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-nez v0, :cond_2

    .line 387
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 388
    sget-object v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 389
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 407
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 391
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v5, :cond_2

    .line 392
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 395
    .local v1, "isFallback":Z
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 396
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v4, v2, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 399
    .end local v1    # "isFallback":Z
    :cond_4
    sget-object v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 400
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 401
    .local v3, "tmp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 402
    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v2, 0x1

    .line 424
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 428
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 445
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 447
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_3

    if-lez v1, :cond_3

    .line 448
    iget v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_1

    .line 449
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0701d3

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    .end local v2    # "msg":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 468
    return-void

    .line 449
    :cond_0
    const v4, 0x7f0701d4

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 456
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 459
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0701d5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 460
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 464
    .end local v0    # "error":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 465
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 464
    :cond_4
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_2

    :cond_5
    move v4, v6

    .line 465
    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v10, v11, :cond_1

    .line 293
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_0

    const v10, 0x7f0701d3

    :goto_0
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 375
    :goto_1
    return-object v10

    .line 293
    :cond_0
    const v10, 0x7f0701d4

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_3

    .line 298
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_2

    const v10, 0x7f0701d7

    :goto_2
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    const v10, 0x7f0701d8

    goto :goto_2

    .line 302
    :cond_3
    const/4 v4, 0x0

    .line 303
    .local v4, "letters":I
    const/4 v7, 0x0

    .line 304
    .local v7, "numbers":I
    const/4 v5, 0x0

    .line 305
    .local v5, "lowercase":I
    const/4 v8, 0x0

    .line 306
    .local v8, "symbols":I
    const/4 v9, 0x0

    .line 307
    .local v9, "uppercase":I
    const/4 v6, 0x0

    .line 308
    .local v6, "nonletter":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_9

    .line 309
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 311
    .local v2, "c":C
    const/16 v10, 0x20

    if-le v2, v10, :cond_4

    const/16 v10, 0x7f

    if-le v2, v10, :cond_5

    .line 312
    :cond_4
    const v10, 0x7f0701db

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 314
    :cond_5
    const/16 v10, 0x30

    if-lt v2, v10, :cond_6

    const/16 v10, 0x39

    if-gt v2, v10, :cond_6

    .line 315
    add-int/lit8 v7, v7, 0x1

    .line 316
    add-int/lit8 v6, v6, 0x1

    .line 308
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 317
    :cond_6
    const/16 v10, 0x41

    if-lt v2, v10, :cond_7

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_7

    .line 318
    add-int/lit8 v4, v4, 0x1

    .line 319
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 320
    :cond_7
    const/16 v10, 0x61

    if-lt v2, v10, :cond_8

    const/16 v10, 0x7a

    if-gt v2, v10, :cond_8

    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 322
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 324
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 325
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 328
    .end local v2    # "c":C
    :cond_9
    const/high16 v10, 0x20000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_b

    if-gtz v4, :cond_a

    if-lez v8, :cond_b

    .line 332
    :cond_a
    const v10, 0x7f0701d9

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 333
    :cond_b
    const/high16 v10, 0x60000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_11

    .line 334
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v4, v10, :cond_c

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0d0000

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 338
    :cond_c
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v7, v10, :cond_d

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0003

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 342
    :cond_d
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v5, v10, :cond_e

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0001

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 346
    :cond_e
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v9, v10, :cond_f

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0002

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 350
    :cond_f
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v8, v10, :cond_10

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0004

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 354
    :cond_10
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v6, v10, :cond_16

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0005

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 360
    :cond_11
    const/high16 v10, 0x40000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_13

    const/4 v0, 0x1

    .line 362
    .local v0, "alphabetic":Z
    :goto_5
    const/high16 v10, 0x50000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_14

    const/4 v1, 0x1

    .line 364
    .local v1, "alphanumeric":Z
    :goto_6
    if-nez v0, :cond_12

    if-eqz v1, :cond_15

    :cond_12
    if-nez v4, :cond_15

    .line 365
    const v10, 0x7f0701dc

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 360
    .end local v0    # "alphabetic":Z
    .end local v1    # "alphanumeric":Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_5

    .line 362
    .restart local v0    # "alphabetic":Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_6

    .line 367
    .restart local v1    # "alphanumeric":Z
    :cond_15
    if-eqz v1, :cond_16

    if-nez v7, :cond_16

    .line 368
    const v10, 0x7f0701dd

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 371
    .end local v0    # "alphabetic":Z
    .end local v1    # "alphanumeric":Z
    :cond_16
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 372
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_17

    const v10, 0x7f0701df

    :goto_7
    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_17
    const v10, 0x7f0701da

    goto :goto_7

    .line 375
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 473
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 476
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 480
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 271
    packed-switch p1, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 273
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 414
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 418
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x7f090009 -> :sswitch_0
        0x7f090030 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 158
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 161
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 162
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 164
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 166
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 168
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 170
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 172
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 175
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 176
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    const v11, 0x7f040019

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 184
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f090030

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 185
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v11, 0x7f090009

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 187
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const/high16 v11, 0x40000

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v11, v12, :cond_0

    const/high16 v11, 0x50000

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v11, v12, :cond_0

    const/high16 v11, 0x60000

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v11, v12, :cond_3

    :cond_0
    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 192
    const v11, 0x7f090031

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 193
    const v11, 0x7f09002f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 194
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 198
    .local v1, "activity":Landroid/app/Activity;
    new-instance v11, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v11, v1, v12, v13}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 200
    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v12, v11}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 204
    const v11, 0x7f09002d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 205
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v11}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 207
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 208
    .local v3, "currentType":I
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_5

    .end local v3    # "currentType":I
    :goto_2
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 212
    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "confirm_credentials"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 213
    .local v2, "confirmCredentials":Z
    if-nez p3, :cond_6

    .line 214
    sget-object v11, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 215
    if-eqz v2, :cond_1

    .line 216
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v12, 0x3a

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 228
    :cond_1
    :goto_3
    instance-of v11, v1, Landroid/preference/PreferenceActivity;

    if-eqz v11, :cond_2

    move-object v6, v1

    .line 229
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 230
    .local v6, "preferenceActivity":Landroid/preference/PreferenceActivity;
    iget-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_7

    const v4, 0x7f0703eb

    .line 232
    .local v4, "id":I
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 233
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-virtual {v6, v8, v8}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 237
    iget-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_8

    const v9, 0x7f0703eb

    .line 239
    .local v9, "titleId":I
    :goto_5
    invoke-virtual {v6, v9}, Landroid/preference/PreferenceActivity;->setTitle(I)V

    .line 243
    .end local v4    # "id":I
    .end local v6    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    .end local v8    # "title":Ljava/lang/CharSequence;
    .end local v9    # "titleId":I
    :cond_2
    return-object v10

    .line 189
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "confirmCredentials":Z
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 200
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    .line 208
    .restart local v3    # "currentType":I
    :cond_5
    const/16 v3, 0x12

    goto :goto_2

    .line 220
    .end local v3    # "currentType":I
    .restart local v2    # "confirmCredentials":Z
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v11, "first_pin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 221
    const-string v11, "ui_stage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "state":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 223
    invoke-static {v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 224
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_3

    .line 230
    .end local v7    # "state":Ljava/lang/String;
    .restart local v6    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_7
    const v4, 0x7f0703ed

    goto :goto_4

    .line 237
    .restart local v4    # "id":I
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_8
    const v9, 0x7f0703f9

    goto :goto_5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 432
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 258
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 251
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 484
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 0
    .param p1, "stage"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 283
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 284
    return-void
.end method
