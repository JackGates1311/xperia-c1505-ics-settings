.class public Lcom/android/settings/widget/ChartDataUsageView;
.super Lcom/android/settings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# static fields
.field public static IS_APPLICATION_DETAIL:Z


# instance fields
.field private mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/settings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

.field private mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/settings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 362
    new-instance v0, Lcom/android/settings/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/ChartDataUsageView$2;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    .line 390
    new-instance v0, Lcom/android/settings/widget/ChartDataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/ChartDataUsageView$3;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    .line 101
    new-instance v0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/settings/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings/widget/InvertedChartAxis;-><init>(Lcom/android/settings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 103
    new-instance v0, Lcom/android/settings/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/ChartDataUsageView$1;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings/widget/ChartSweepView;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/ChartDataUsageView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings/widget/ChartSweepView;
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/ChartDataUsageView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/ChartDataUsageView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings/widget/ChartSweepView;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/ChartDataUsageView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/ChartDataUsageView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 1
    .param p0, "x0"    # Landroid/text/SpannableStringBuilder;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v0

    return-object v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/settings/widget/ChartSweepView;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 388
    return-void
.end method

.method private static findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 4
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bootstrap"    # Ljava/lang/CharSequence;

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 721
    .local v1, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 722
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 723
    invoke-static {p0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 724
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 725
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 727
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method

.method private getHistoryEnd()J
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 4
    .param p1, "sweep"    # Lcom/android/settings/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    const/16 v2, 0x64

    .line 380
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    :cond_1
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 9

    .prologue
    .line 344
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v3

    .line 347
    .local v3, "maxEstimate":J
    const-wide v1, 0x7fffffffffffffffL

    .line 348
    .local v1, "interestLine":J
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 349
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    .line 354
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 355
    const-wide v1, 0x7fffffffffffffffL

    .line 358
    :cond_1
    const-wide/16 v5, 0x7

    mul-long/2addr v5, v1

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    const/4 v0, 0x1

    .line 359
    .local v0, "estimateVisible":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 360
    return-void

    .line 350
    .end local v0    # "estimateVisible":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    goto :goto_0

    .line 358
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 514
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 515
    .local v0, "left":J
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 518
    .local v2, "right":J
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 519
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 520
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 23
    .param p1, "activeSweep"    # Lcom/android/settings/widget/ChartSweepView;

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    .line 286
    .local v7, "max":J
    const-wide/16 v17, 0x0

    .line 287
    .local v17, "newMax":J
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v5

    .line 289
    .local v5, "adjustAxis":I
    if-lez v5, :cond_5

    .line 291
    const-wide/16 v19, 0xb

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    .line 301
    .end local v5    # "adjustAxis":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 302
    .local v13, "maxSweep":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 303
    .local v11, "maxSeries":J
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    const-wide/16 v21, 0xc

    mul-long v19, v19, v21

    const-wide/16 v21, 0xa

    div-long v15, v19, v21

    .line 304
    .local v15, "maxVisible":J
    const-wide v19, 0x80000000L

    move-wide v0, v15

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 305
    .local v9, "maxDefault":J
    move-wide/from16 v0, v17

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 308
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v19, v0

    cmp-long v19, v17, v19

    if-eqz v19, :cond_4

    .line 309
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v6

    .line 312
    .local v6, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 315
    if-eqz v6, :cond_1

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 320
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 323
    if-eqz p1, :cond_2

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 330
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V

    .line 337
    .end local v6    # "changed":Z
    :cond_4
    return-void

    .line 292
    .end local v9    # "maxDefault":J
    .end local v11    # "maxSeries":J
    .end local v13    # "maxSweep":J
    .end local v15    # "maxVisible":J
    .restart local v5    # "adjustAxis":I
    :cond_5
    if-gez v5, :cond_6

    .line 294
    const-wide/16 v19, 0x9

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    goto/16 :goto_0

    .line 296
    :cond_6
    move-wide/from16 v17, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 3
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 183
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 187
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 191
    return-void

    .line 183
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 7
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    .line 195
    sput-boolean v5, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    .line 197
    if-nez p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 226
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 215
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 223
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;[I)V
    .locals 9
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "uids"    # [I

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    .line 230
    sput-boolean v8, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    .line 231
    if-nez p1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v5, v6}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v5, v6}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 277
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    .line 240
    .local v0, "uid":I
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 241
    aget v0, p2, v7

    .line 244
    :cond_1
    iget-wide v1, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v5, v6}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 259
    :goto_1
    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_4

    .line 260
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v5, v6}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 274
    :goto_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v8}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 251
    iget-object v1, p1, Landroid/net/NetworkPolicy;->appPolicies:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/net/NetworkPolicy;->appPolicies:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ApplicationNetworkPolicy;

    iget-wide v1, v1, Landroid/net/ApplicationNetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 253
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p1, Landroid/net/NetworkPolicy;->appPolicies:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ApplicationNetworkPolicy;

    iget-wide v3, v1, Landroid/net/ApplicationNetworkPolicy;->limitBytes:J

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 264
    :cond_4
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v1, v8}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 266
    iget-object v1, p1, Landroid/net/NetworkPolicy;->appPolicies:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/net/NetworkPolicy;->appPolicies:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ApplicationNetworkPolicy;

    iget-wide v1, v1, Landroid/net/ApplicationNetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    .line 268
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p1, Landroid/net/NetworkPolicy;->appPolicies:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ApplicationNetworkPolicy;

    iget-wide v3, v1, Landroid/net/ApplicationNetworkPolicy;->warningBytes:J

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto/16 :goto_2

    .line 270
    :cond_5
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto/16 :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 174
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 179
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/settings/widget/ChartView;->onFinishInflate()V

    .line 120
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    .line 121
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 122
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 125
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    .line 126
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    .line 127
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    .line 128
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartGridView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 166
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    :goto_0
    return v0

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 424
    goto :goto_0

    .line 427
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 428
    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 170
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 24
    .param p1, "visibleStart"    # J
    .param p3, "visibleEnd"    # J

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v5

    .line 473
    .local v5, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartGridView;->setBounds(JJ)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    .line 478
    .local v10, "historyStart":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    .line 480
    .local v8, "historyEnd":J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v10, v20

    if-nez v20, :cond_1

    move-wide/from16 v18, p1

    .line 482
    .local v18, "validStart":J
    :goto_0
    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v20, v8, v20

    if-nez v20, :cond_2

    move-wide/from16 v16, p3

    .line 490
    .local v16, "validEnd":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 495
    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 496
    .local v6, "halfRange":J
    move-wide/from16 v12, v16

    .line 497
    .local v12, "sweepMax":J
    const-wide/32 v20, 0x240c8400

    sub-long v20, v12, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 499
    .local v14, "sweepMin":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 503
    if-eqz v5, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 508
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 511
    return-void

    .line 480
    .end local v6    # "halfRange":J
    .end local v12    # "sweepMax":J
    .end local v14    # "sweepMin":J
    .end local v16    # "validEnd":J
    .end local v18    # "validStart":J
    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto :goto_0

    .line 482
    .restart local v18    # "validStart":J
    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_1
.end method
