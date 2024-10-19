.class Lcom/android/settings/deviceinfo/SimSelectAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSimOptions:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "strings"    # [Ljava/lang/CharSequence;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimSelectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p3, p0, Lcom/android/settings/deviceinfo/SimSelectAdapter;->mSimOptions:[Ljava/lang/CharSequence;

    .line 28
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimSelectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x1090003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 43
    const/16 v4, 0xe

    invoke-virtual {p2, v4, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object v2, p2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimSelectAdapter;->mSimOptions:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 48
    .local v1, "isIccInsertedOnSub":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionManager;->hasEnabled_SIM(I)Z

    move-result v0

    .line 49
    .local v0, "hasEnabledSim":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 51
    return-object v2
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 35
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 36
    .local v1, "isIccInsertedOnSub":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionManager;->hasEnabled_SIM(I)Z

    move-result v0

    .line 37
    .local v0, "hasEnabledSim":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
