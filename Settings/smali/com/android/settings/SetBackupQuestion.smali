.class public Lcom/android/settings/SetBackupQuestion;
.super Landroid/app/Activity;
.source "SetBackupQuestion.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnswerText:Landroid/widget/EditText;

.field private mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

.field private mButtonBar:Landroid/view/View;

.field private mFooterCancelButton:Landroid/widget/Button;

.field private mFooterConfirmButton:Landroid/widget/TextView;

.field private mKeyboardOpen:Z

.field private mQuestion:I

.field private mQuestionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetBackupQuestion;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SetBackupQuestion;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private queryKeyboardOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 244
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveAnswerAndFinish()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    iget v1, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/BackupQuestionUtils;->saveQuestionAnswerPair(ILjava/lang/String;)V

    .line 233
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    .line 235
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 250
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 255
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/android/settings/SetBackupQuestion;->saveAnswerAndFinish()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    new-instance v3, Lcom/android/internal/widget/BackupQuestionUtils;

    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/BackupQuestionUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    .line 91
    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lcom/android/settings/SetBackupQuestion;->setTitle(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SetBackupQuestion;->queryKeyboardOpen()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/SetBackupQuestion;->mKeyboardOpen:Z

    .line 95
    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v3, "question_id"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->setupViews()V

    .line 99
    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v3, "questionId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->setupViews()V

    .line 105
    const-string v3, "chosenAnswer"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "answer":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 207
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    .line 211
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 213
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    const-string v0, "questionId"

    iget v1, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v0, "chosenAnswer"

    iget-object v1, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setupViews()V
    .locals 4

    .prologue
    .line 121
    const v2, 0x7f04006b

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->setContentView(I)V

    .line 123
    const v2, 0x7f09012b

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestionText:Landroid/widget/TextView;

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "question":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    packed-switch v2, :pswitch_data_0

    .line 151
    :goto_0
    if-eqz v1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    const v2, 0x7f09012f

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    .line 157
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v2, 0x7f09012e

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    .line 161
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v2, 0x7f09012a

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mButtonBar:Landroid/view/View;

    .line 165
    const v2, 0x7f09012c

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    .line 166
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/SetBackupQuestion$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SetBackupQuestion$1;-><init>(Lcom/android/settings/SetBackupQuestion;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-boolean v2, p0, Lcom/android/settings/SetBackupQuestion;->mKeyboardOpen:Z

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 188
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 192
    :goto_1
    return-void

    .line 134
    :pswitch_0
    const v2, 0x1040912

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    goto :goto_0

    .line 138
    :pswitch_1
    const v2, 0x1040913

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    goto :goto_0

    .line 142
    :pswitch_2
    const v2, 0x1040914

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_3
    const v2, 0x1040915

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
