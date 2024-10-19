.class Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;
.super Ljava/lang/Object;
.source "SmsCounterSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editEnd:I

.field private editStart:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->editStart:I

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->editEnd:I

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    .line 152
    iget v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->editStart:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->editEnd:I

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 153
    iget v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->editStart:I

    .line 154
    .local v0, "tempSelection":I
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 157
    .end local v0    # "tempSelection":I
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->temp:Ljava/lang/CharSequence;

    .line 142
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$302(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Z)Z

    .line 146
    return-void
.end method
