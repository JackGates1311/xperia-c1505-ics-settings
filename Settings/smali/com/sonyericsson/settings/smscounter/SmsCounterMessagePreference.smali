.class public Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;
.super Landroid/preference/Preference;
.source "SmsCounterMessagePreference.java"


# instance fields
.field private mEXMax:Ljava/lang/String;

.field private mEXWarning:Ljava/lang/String;

.field private mRange:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->setLayoutResource(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->setLayoutResource(I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    const v0, 0x7f09013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mText:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public setRange(JJIII)V
    .locals 8
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "count"    # I
    .param p6, "ex"    # I
    .param p7, "exM"    # I

    .prologue
    .line 43
    const/high16 v0, 0x10000

    .line 44
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "from":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3, p4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "to":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070060

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mRange:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070061

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mEXWarning:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070062

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mEXMax:Ljava/lang/String;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mRange:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mEXWarning:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mEXMax:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->mRange:Ljava/lang/String;

    .line 52
    return-void
.end method
