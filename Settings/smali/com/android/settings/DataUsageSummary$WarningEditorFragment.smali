.class public Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
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
    .line 1841
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$4000()Z
    .locals 1

    .prologue
    .line 1841
    sget-boolean v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mIsAppModel:Z

    return v0
.end method

.method static synthetic access$4100()I
    .locals 1

    .prologue
    .line 1841
    sget v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mUid:I

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

    .line 1851
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1870
    :goto_0
    return-void

    .line 1853
    :cond_0
    sput p2, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mUid:I

    .line 1854
    sput-boolean p1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mIsAppModel:Z

    .line 1855
    cmp-long v2, p3, v3

    if-lez v2, :cond_1

    .line 1856
    sput-wide p3, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mWarningBytes:J

    .line 1860
    :goto_1
    sput-wide p5, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mLimitBytes:J

    .line 1863
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1864
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3700(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1866
    new-instance v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 1867
    .local v1, "dialog":Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1868
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1869
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1858
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
    :cond_1
    sput-wide v3, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mWarningBytes:J

    goto :goto_1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1875
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DataUsageSummary;

    .line 1876
    .local v5, "target":Lcom/android/settings/DataUsageSummary;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$3800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 1878
    .local v3, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1879
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1881
    .local v8, "dialogInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040028

    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1882
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f09004d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1884
    .local v2, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1886
    .local v4, "template":Landroid/net/NetworkTemplate;
    sget-wide v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mLimitBytes:J

    const-wide/32 v11, 0x100000

    div-long/2addr v0, v11

    long-to-int v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 1889
    .local v9, "maxWarningBytes":I
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1890
    int-to-long v0, v9

    const-wide/16 v11, -0x1

    cmp-long v0, v0, v11

    if-eqz v0, :cond_1

    .line 1892
    if-lez v9, :cond_0

    .end local v9    # "maxWarningBytes":I
    :goto_0
    invoke-virtual {v2, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1897
    :goto_1
    sget-wide v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mWarningBytes:J

    sget-wide v11, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mLimitBytes:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_2

    .line 1898
    sget-wide v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mWarningBytes:J

    const-wide/32 v11, 0x100000

    div-long/2addr v0, v11

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1907
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1909
    const v0, 0x7f070638

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1910
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1912
    const v11, 0x7f070637

    new-instance v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1930
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1892
    .restart local v9    # "maxWarningBytes":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1894
    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1

    .line 1900
    .end local v9    # "maxWarningBytes":I
    :cond_2
    sget-wide v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->mWarningBytes:J

    const-wide/32 v11, 0x100000

    div-long/2addr v0, v11

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_2
.end method
