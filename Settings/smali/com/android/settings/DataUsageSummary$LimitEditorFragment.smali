.class public Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitEditorFragment"
.end annotation


# static fields
.field private static mIsAppModel:Z

.field private static mLimitBytes:J

.field private static mUid:I

.field private static mWarningBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1937
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$4200()Z
    .locals 1

    .prologue
    .line 1937
    sget-boolean v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mIsAppModel:Z

    return v0
.end method

.method static synthetic access$4300()I
    .locals 1

    .prologue
    .line 1937
    sget v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mUid:I

    return v0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;ZIJJ)V
    .locals 5
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "isAppModel"    # Z
    .param p2, "uid"    # I
    .param p3, "warningBytes"    # J
    .param p5, "limitBytes"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 1947
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1969
    :goto_0
    return-void

    .line 1949
    :cond_0
    sput p2, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mUid:I

    .line 1950
    sput-boolean p1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mIsAppModel:Z

    .line 1951
    cmp-long v2, p3, v3

    if-lez v2, :cond_1

    .line 1952
    sput-wide p3, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mWarningBytes:J

    .line 1956
    :goto_1
    cmp-long v2, p5, v3

    if-lez v2, :cond_2

    .line 1957
    sput-wide p5, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mLimitBytes:J

    .line 1962
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1963
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3700(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1965
    new-instance v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;-><init>()V

    .line 1966
    .local v1, "dialog":Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1967
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1968
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1954
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
    :cond_1
    sput-wide v3, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mWarningBytes:J

    goto :goto_1

    .line 1959
    :cond_2
    sput-wide v3, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mLimitBytes:J

    goto :goto_2
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1974
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DataUsageSummary;

    .line 1975
    .local v5, "target":Lcom/android/settings/DataUsageSummary;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$3800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 1977
    .local v3, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1978
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1980
    .local v8, "dialogInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040028

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1981
    .local v9, "view":Landroid/view/View;
    const v0, 0x7f09004d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1983
    .local v2, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1986
    .local v4, "template":Landroid/net/NetworkTemplate;
    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1987
    sget-wide v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mWarningBytes:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-lez v0, :cond_0

    .line 1988
    sget-wide v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mWarningBytes:J

    const-wide/32 v10, 0x100000

    div-long/2addr v0, v10

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1994
    :goto_0
    sget-wide v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mLimitBytes:J

    sget-wide v10, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mWarningBytes:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 1995
    sget-wide v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mLimitBytes:J

    const-wide/32 v10, 0x100000

    div-long/2addr v0, v10

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2004
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2006
    const v0, 0x7f070639

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2007
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2009
    const v10, 0x7f070637

    new-instance v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v6, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2027
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1990
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0

    .line 1997
    :cond_1
    sget-wide v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->mLimitBytes:J

    const-wide/32 v10, 0x100000

    div-long/2addr v0, v10

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1
.end method
