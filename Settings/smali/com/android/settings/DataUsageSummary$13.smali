.class Lcom/android/settings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2600(Lcom/android/settings/DataUsageSummary;)V

    .line 1376
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    sget-boolean v0, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1500(Lcom/android/settings/DataUsageSummary;J)V

    .line 1398
    :goto_0
    return-void

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$3400(Lcom/android/settings/DataUsageSummary;J)V

    goto :goto_0
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    sget-boolean v0, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$3200(Lcom/android/settings/DataUsageSummary;J)V

    .line 1387
    :goto_0
    return-void

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;J)V

    goto :goto_0
.end method

.method public requestLimitEdit()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1416
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    sget-boolean v0, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    sget-boolean v1, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$3500(Lcom/android/settings/DataUsageSummary;)[I

    move-result-object v3

    aget v2, v3, v2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings/DataUsageSummary;ZIJJ)V

    .line 1424
    :goto_0
    return-void

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    sget-boolean v1, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings/DataUsageSummary;ZIJJ)V

    goto :goto_0
.end method

.method public requestWarningEdit()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1403
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    sget-boolean v0, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    sget-boolean v1, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$3500(Lcom/android/settings/DataUsageSummary;)[I

    move-result-object v3

    aget v2, v3, v2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings/DataUsageSummary;ZIJJ)V

    .line 1411
    :goto_0
    return-void

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    sget-boolean v1, Lcom/android/settings/widget/ChartDataUsageView;->IS_APPLICATION_DETAIL:Z

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings/DataUsageSummary;ZIJJ)V

    goto :goto_0
.end method
