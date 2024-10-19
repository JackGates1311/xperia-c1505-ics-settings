.class public Lcom/android/settings/accounts/AccountSyncCustomization;
.super Ljava/lang/Object;
.source "AccountSyncCustomization.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mCustomizationMap:Ljava/util/HashMap;

    .line 45
    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mDefaultMap:Ljava/util/HashMap;

    .line 48
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private getCustomXmlInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "inputStream":Ljava/io/InputStream;
    const-string v3, "content://com.sonyericsson.provider.customization/settings/com.android.providers.subscribedfeeds"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 60
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "SettingCustomizations"

    const-string v4, "Unable to find Customfile - FileNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "SettingCustomizations:Parser is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_0
    const/4 v3, 0x0

    .line 115
    .local v3, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 116
    .local v1, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 118
    .local v4, "value":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v2, "resultingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 121
    .local v0, "eventType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    .line 122
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 123
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string v5, "setting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    const/4 v5, 0x0

    const-string v6, "key"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_1

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 137
    :cond_2
    return-object v2
.end method

.method private readDefaultSettings()V
    .locals 5

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "defaultParser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 94
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncCustomization;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mDefaultMap:Ljava/util/HashMap;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v2, "SettingCustomizations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse default values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 97
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "SettingCustomizations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse default values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 101
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v2
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mDefaultMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mDefaultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mDefaultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mCustomizationMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mCustomizationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mCustomizationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncCustomization;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readCustomization()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncCustomization;->readDefaultSettings()V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncCustomization;->getCustomXmlInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncCustomization;->readCustomizedSettings(Ljava/io/InputStream;)V

    .line 54
    return-void
.end method

.method protected readCustomizedSettings(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string v3, "SettingCustomizations"

    const-string v4, "InputStream is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 73
    .local v0, "customParser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncCustomization;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncCustomization;->mCustomizationMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "SettingCustomizations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to close stream from customfile; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .end local v0    # "customParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 76
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "SettingCustomizations"

    const-string v4, "Unable to parse Customfile - IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 83
    :catch_2
    move-exception v1

    .line 84
    const-string v3, "SettingCustomizations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to close stream from customfile; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 78
    .local v2, "xml":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v3, "SettingCustomizations"

    const-string v4, "Unable to parse Customfile - XmlPullParserException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 83
    :catch_4
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "SettingCustomizations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to close stream from customfile; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "xml":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 82
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 85
    :goto_1
    throw v3

    .line 83
    :catch_5
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "SettingCustomizations"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to close stream from customfile; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
