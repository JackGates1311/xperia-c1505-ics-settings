.class public Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmsCounterAppWidgetProvider.java"


# instance fields
.field private mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    return-void
.end method

.method private getView(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 13

    .prologue
    const v12, 0x7f090136

    const/4 v11, 0x1

    const v10, 0x3e99999a    # 0.3f

    const v9, 0x7f090137

    const/4 v8, 0x0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-direct {v0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState()I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel1()I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel2()I

    move-result v3

    .line 80
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus()Z

    move-result v4

    .line 81
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getCurrentCount()I

    move-result v5

    .line 83
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/settings/Settings$SmsCounterSettingsActivity;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-static {p1, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 87
    if-nez v0, :cond_1

    if-eq v1, v11, :cond_1

    if-nez v4, :cond_3

    .line 88
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040070

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 89
    const v1, 0x7f09013b

    const-string v2, "setText"

    const v3, 0x7f07007d

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 90
    const v1, 0x7f09013c

    const-string v2, "setText"

    const v3, 0x7f070079

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 133
    :cond_2
    :goto_0
    const v1, 0x7f090135

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 135
    return-object v0

    .line 96
    :cond_3
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f04006f

    invoke-direct {v0, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 97
    if-gt v5, v2, :cond_4

    .line 98
    const-string v1, "setWeightSum"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v12, v1, v2}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 99
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 100
    const v1, -0xff0100

    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 102
    const v1, 0x7f090138

    const-string v2, "setVisibility"

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 104
    const v1, 0x7f090139

    const-string v2, "setWeightSum"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 105
    const v1, 0x7f07007b

    new-array v2, v11, [Ljava/lang/Object;

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const v2, 0x7f09013a

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_4
    if-le v5, v2, :cond_5

    if-gt v5, v3, :cond_5

    .line 109
    const-string v1, "setWeightSum"

    invoke-virtual {v0, v12, v1, v10}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 110
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    const/16 v1, 0xff

    const/16 v2, 0x8c

    invoke-static {v1, v2, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 113
    const v1, 0x7f090138

    const-string v2, "setVisibility"

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 115
    const v1, 0x7f090139

    const-string v2, "setWeightSum"

    invoke-virtual {v0, v1, v2, v10}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 116
    const v1, 0x7f07007b

    new-array v2, v11, [Ljava/lang/Object;

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const v2, 0x7f09013a

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 119
    :cond_5
    if-le v5, v3, :cond_2

    .line 120
    const-string v1, "setWeightSum"

    invoke-virtual {v0, v12, v1, v10}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 121
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 122
    const/high16 v1, -0x10000

    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 124
    const v1, 0x7f090138

    const-string v2, "setVisibility"

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 126
    const v1, 0x7f090139

    const-string v2, "setWeightSum"

    invoke-virtual {v0, v1, v2, v10}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 127
    const v1, 0x7f07007a

    new-array v2, v11, [Ljava/lang/Object;

    sub-int v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    const v2, 0x7f09013a

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "com.sonyericsson.smscounter.appwidget.action.WIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 62
    .local v2, "views":Landroid/widget/RemoteViews;
    aget v0, p3, v1

    .line 63
    .local v0, "appWidgetId":I
    if-eqz v2, :cond_0

    .line 64
    aget v3, p3, v1

    invoke-virtual {p2, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "appWidgetId":I
    .end local v1    # "i":I
    .end local v2    # "views":Landroid/widget/RemoteViews;
    :cond_1
    return-void
.end method
