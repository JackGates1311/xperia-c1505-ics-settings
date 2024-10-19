.class public Lcom/android/settings/accounts/AccountVisibilityFilter;
.super Ljava/lang/Object;
.source "AccountVisibilityFilter.java"


# instance fields
.field private isSyncMLVisibleByCustomization:Z

.field private mHiddenAccounts:[Ljava/lang/String;

.field private mWhiteListAccounts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->isSyncMLVisibleByCustomization:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/settings/accounts/AccountSyncCustomization;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/AccountSyncCustomization;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "asc":Lcom/android/settings/accounts/AccountSyncCustomization;
    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncCustomization;->readCustomization()V

    .line 57
    const-string v1, "syncml-visible"

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncCustomization;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->isSyncMLVisibleByCustomization:Z

    .line 58
    return-void
.end method

.method private isAccountInInvisibleList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 128
    .local v1, "hiddenAccount":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    const/4 v4, 0x1

    .line 136
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "hiddenAccount":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return v4

    .line 127
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "hiddenAccount":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isAccountInWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 112
    .local v3, "whiteAccount":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    const/4 v4, 0x1

    .line 120
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "whiteAccount":Ljava/lang/String;
    :cond_0
    return v4

    .line 111
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "whiteAccount":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isAccountVisibleInAddingList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string v1, "vnd.android.cursor.item/vnd.sonyericsson.syncml.account"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->isSyncMLVisibleByCustomization:Z

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAccountVisibleInManagerList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_3

    .line 89
    const-string v2, "vnd.android.cursor.item/vnd.sonyericsson.syncml.account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->isSyncMLVisibleByCustomization:Z

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 98
    goto :goto_0

    :cond_3
    move v0, v1

    .line 104
    goto :goto_0
.end method
