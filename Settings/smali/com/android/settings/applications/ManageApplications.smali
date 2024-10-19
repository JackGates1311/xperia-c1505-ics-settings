.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mCreatedRunning:Z

.field private mCurView:I

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDefaultTab:Ljava/lang/String;

.field private mFilterApps:I

.field mFreeStorageText:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastShowedInternalStorage:Z

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResumedRunning:Z

.field private mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field private mSDCardFileStats:Landroid/os/StatFs;

.field private mShowBackground:Z

.field private mSortOrder:I

.field mStorageChartLabel:Landroid/widget/TextView;

.field private mTabHost:Landroid/widget/TabHost;

.field mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 146
    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 185
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private selectView(I)V
    .locals 7
    .param p1, "which"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 887
    if-ne p1, v5, :cond_4

    .line 888
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v2, :cond_0

    .line 889
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 890
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 892
    :cond_0
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v2, p1, :cond_1

    .line 893
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v2, v6}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 894
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 897
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v2, :cond_2

    .line 898
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(II)V

    .line 921
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    .line 922
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 923
    .local v1, "host":Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 924
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 926
    :cond_3
    return-void

    .line 900
    .end local v1    # "host":Landroid/app/Activity;
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 901
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    if-nez v2, :cond_5

    .line 902
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 903
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 904
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    .line 906
    :cond_5
    const/4 v0, 0x1

    .line 907
    .local v0, "haveData":Z
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-nez v2, :cond_6

    .line 908
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v3}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 909
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 911
    :cond_6
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 912
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v2, p1, :cond_2

    .line 913
    if-eqz v0, :cond_7

    .line 914
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 918
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 916
    :cond_7
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 706
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 707
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 710
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f070422

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 712
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 929
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 932
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 934
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 698
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 701
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 552
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 557
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 559
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 560
    const-string v1, "Downloaded"

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "classname"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    :goto_0
    if-nez v0, :cond_0

    .line 564
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 566
    :cond_0
    const-class v2, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".RunningServices"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 568
    :cond_1
    const-string v1, "Running"

    .line 580
    :cond_2
    :goto_1
    if-eqz p1, :cond_8

    .line 581
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 582
    const-string v0, "filterApps"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 583
    const-string v0, "defaultTabTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_7

    .line 585
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 588
    :goto_3
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 590
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    .line 591
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07045a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070459

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 595
    return-void

    .line 561
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    :cond_4
    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".StorageUse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 573
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 574
    const-string v1, "All"

    goto :goto_1

    .line 575
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    const-string v1, "All"

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 716
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 720
    const/4 v0, 0x4

    const v1, 0x7f07043d

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 723
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f07043e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 726
    const/4 v0, 0x6

    const v1, 0x7f07043f

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 728
    const/4 v0, 0x7

    const v1, 0x7f070440

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 731
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 601
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 602
    const v3, 0x7f04003b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 603
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v4, 0x7f0900a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 604
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v4, 0x7f0900a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 606
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 607
    .local v1, "lv":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 608
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 611
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 612
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 613
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 614
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 615
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 616
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 617
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 618
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0900a3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 620
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0900a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    .line 621
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0900a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    .line 622
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0900a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    .line 623
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v4, 0x7f0900a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 626
    iput-boolean v7, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    iput-boolean v7, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    .line 627
    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    .line 629
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04003d

    invoke-virtual {v3, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    .line 630
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 631
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    .line 632
    .local v2, "tabHost":Landroid/widget/TabHost;
    const-string v3, "Downloaded"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f070445

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02007f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 636
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 637
    const-string v3, "OnSdCard"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f070447

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 642
    :cond_1
    const-string v3, "Running"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f070446

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020080

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 646
    const-string v3, "All"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f070444

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 650
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 654
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v7}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 656
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    return-object v3
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 741
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 789
    .local v0, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 790
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 791
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 769
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 770
    .local v0, "menuId":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 771
    :cond_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 772
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 773
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    .line 782
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 783
    return v4

    .line 775
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 776
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 777
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 778
    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 779
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 780
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 687
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 688
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 689
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 691
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 694
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 736
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 666
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 667
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 670
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 671
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 676
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    const-string v0, "filterApps"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 679
    const-string v0, "defaultTabTag"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 682
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 661
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 662
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 967
    return-void
.end method

.method public showCurrentTab()V
    .locals 5

    .prologue
    .line 940
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 942
    .local v1, "tabId":Ljava/lang/String;
    const-string v2, "Downloaded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 943
    const/4 v0, 0x1

    .line 959
    .local v0, "newOption":I
    :goto_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 960
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    .line 961
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateStorageUsage()V

    .line 962
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 963
    .end local v0    # "newOption":I
    :cond_0
    :goto_1
    return-void

    .line 944
    :cond_1
    const-string v2, "All"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 945
    const/4 v0, 0x0

    .restart local v0    # "newOption":I
    goto :goto_0

    .line 946
    .end local v0    # "newOption":I
    :cond_2
    const-string v2, "OnSdCard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 947
    const/4 v0, 0x2

    .restart local v0    # "newOption":I
    goto :goto_0

    .line 948
    .end local v0    # "newOption":I
    :cond_3
    const-string v2, "Running"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 952
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    goto :goto_1
.end method

.method updateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 744
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v3, :cond_0

    .line 765
    :goto_0
    return-void

    .line 752
    :cond_0
    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 753
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 755
    .local v0, "showingBackground":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 756
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 757
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 758
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0    # "showingBackground":Z
    :cond_2
    move v0, v1

    .line 753
    goto :goto_1

    .line 760
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v3, v5, :cond_4

    move v3, v2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 761
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_5

    :goto_3
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 762
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 763
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v3, v1

    .line 760
    goto :goto_2

    :cond_5
    move v2, v1

    .line 761
    goto :goto_3
.end method

.method updateStorageUsage()V
    .locals 22

    .prologue
    .line 802
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    const-wide/16 v8, 0x0

    .line 807
    .local v8, "freeStorage":J
    const-wide/16 v5, 0x0

    .line 808
    .local v5, "appStorage":J
    const-wide/16 v13, 0x0

    .line 809
    .local v13, "totalStorage":J
    const/4 v11, 0x0

    .line 811
    .local v11, "newLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 812
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 813
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 815
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f07044b

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 818
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v13, v17, v19

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v8, v17, v19

    .line 825
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 826
    .local v3, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v3, :cond_7

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 828
    .local v4, "ae":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 826
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 831
    .end local v3    # "N":I
    .end local v4    # "ae":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v10    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 832
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 834
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f07044a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    const-string v18, "/data"

    invoke-virtual/range {v17 .. v18}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 837
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v13, v17, v19

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v8, v17, v19

    .line 843
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    .line 844
    .local v7, "emulatedStorage":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 845
    .restart local v3    # "N":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    if-ge v10, v3, :cond_6

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 847
    .restart local v4    # "ae":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 848
    if-eqz v7, :cond_5

    .line 849
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 845
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 852
    .end local v4    # "ae":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v17

    add-long v8, v8, v17

    .line 854
    .end local v7    # "emulatedStorage":Z
    :cond_7
    if-eqz v11, :cond_8

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :cond_8
    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-lez v17, :cond_a

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v17, v0

    sub-long v18, v13, v8

    sub-long v18, v18, v5

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    long-to-float v0, v13

    move/from16 v19, v0

    div-float v18, v18, v19

    long-to-float v0, v5

    move/from16 v19, v0

    long-to-float v0, v13

    move/from16 v20, v0

    div-float v19, v19, v20

    long-to-float v0, v8

    move/from16 v20, v0

    long-to-float v0, v13

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v17 .. v20}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 860
    sub-long v15, v13, v8

    .line 861
    .local v15, "usedStorage":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v15

    if-eqz v17, :cond_9

    .line 862
    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 864
    .local v12, "sizeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070478

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    .end local v12    # "sizeStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v8

    if-eqz v17, :cond_0

    .line 868
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 870
    .restart local v12    # "sizeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070477

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 874
    .end local v12    # "sizeStr":Ljava/lang/String;
    .end local v15    # "usedStorage":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 875
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_b

    .line 876
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_0

    .line 880
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 841
    .end local v3    # "N":I
    .end local v10    # "i":I
    :catch_0
    move-exception v17

    goto/16 :goto_3

    .line 822
    :catch_1
    move-exception v17

    goto/16 :goto_1
.end method
