.class Lcom/android/settings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1143
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1147
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 1148
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1149
    .local v0, "restrictData":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1150
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1800(Lcom/android/settings/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1154
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1184
    .end local v0    # "restrictData":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1148
    goto :goto_0

    .line 1158
    .restart local v0    # "restrictData":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_1

    .line 1161
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2, v1}, Lcom/android/settings/DataUsageSummary;->access$1900(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1

    .line 1163
    .end local v0    # "restrictData":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1164
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2100(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1166
    .restart local v0    # "restrictData":Z
    :goto_2
    if-eqz v0, :cond_7

    .line 1167
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1800(Lcom/android/settings/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1171
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictAllDataFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_1

    .end local v0    # "restrictData":Z
    :cond_5
    move v0, v1

    .line 1164
    goto :goto_2

    .line 1177
    .restart local v0    # "restrictData":Z
    :cond_6
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$DeniedRestrictAllFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_1

    .line 1180
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2, v1}, Lcom/android/settings/DataUsageSummary;->access$2200(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1
.end method
