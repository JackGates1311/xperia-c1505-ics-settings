.class public Lcom/android/settings/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# instance fields
.field private cycleDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1775
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->cycleDayPicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 1780
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1789
    :goto_0
    return-void

    .line 1782
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1783
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3700(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1785
    new-instance v1, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 1786
    .local v1, "dialog":Lcom/android/settings/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1787
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1788
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 1793
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1794
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DataUsageSummary;

    .line 1795
    .local v5, "target":Lcom/android/settings/DataUsageSummary;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$3800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v4

    .line 1797
    .local v4, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1798
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1800
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04002a

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1801
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f090056

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->cycleDayPicker:Landroid/widget/NumberPicker;

    .line 1803
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "template"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 1804
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v6}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v2

    .line 1805
    .local v2, "cycleDay":I
    if-eqz p1, :cond_0

    .line 1806
    const-string v8, "cycleDay"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1808
    :cond_0
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v11}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1809
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->cycleDayPicker:Landroid/widget/NumberPicker;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1810
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1811
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v11}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1813
    const v8, 0x7f070635

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1814
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1816
    const v8, 0x7f070637

    new-instance v9, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;

    invoke-direct {v9, p0, v4, v6, v5}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1825
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1830
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->cycleDayPicker:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 1831
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1832
    .local v0, "cycleDay":I
    const-string v1, "cycleDay"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1833
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1835
    .end local v0    # "cycleDay":I
    :cond_0
    return-void
.end method
