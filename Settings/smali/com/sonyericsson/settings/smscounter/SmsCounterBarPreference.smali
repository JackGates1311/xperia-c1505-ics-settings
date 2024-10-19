.class public Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;
.super Landroid/preference/Preference;
.source "SmsCounterBarPreference.java"


# instance fields
.field private final mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageBar:Lcom/android/settings/deviceinfo/PercentageBarChart;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->mEntries:Ljava/util/Collection;

    .line 27
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->setLayoutResource(I)V

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

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->mEntries:Ljava/util/Collection;

    .line 32
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->setLayoutResource(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public addEntry(FI)V
    .locals 2
    .param p1, "percentage"    # F
    .param p2, "color"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->mEntries:Ljava/util/Collection;

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/PercentageBarChart;->createEntry(FI)Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->mEntries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 49
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    const v0, 0x7f09013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->mUsageBar:Lcom/android/settings/deviceinfo/PercentageBarChart;

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->mUsageBar:Lcom/android/settings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->mEntries:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    .line 41
    return-void
.end method
