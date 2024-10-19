.class public Lcom/android/settings/ApnSettingsCustomizations;
.super Ljava/lang/Object;
.source "ApnSettingsCustomizations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentEvent:I

.field private mCurrentGroupsKey:Ljava/lang/String;

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

.field private mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/ApnSettingsCustomizations$ApnItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionFound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCustomizationMap:Ljava/util/HashMap;

    .line 36
    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations;->mDefaultMap:Ljava/util/HashMap;

    .line 37
    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    .line 81
    iput-object p1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mContext:Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettingsCustomizations;->mVersionFound:Z

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCustomizationMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method private doParse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "p"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "done":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    iput v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentEvent:I

    .line 131
    :goto_0
    iget v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentEvent:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    iput v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentEvent:I

    .line 133
    iget v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentEvent:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 147
    :cond_0
    return-void

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getApnItem(Ljava/lang/String;)Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    iget-object v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    check-cast v0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;

    .line 300
    .restart local v0    # "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    :cond_0
    return-object v0
.end method

.method private getCustomXmlInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "inputStream":Ljava/io/InputStream;
    const-string v3, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.customization.simpaytype"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/ApnSettingsCustomizations;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "ApnSettingCustomizations"

    const-string v4, "Unable to find Customfile - FileNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVersionAttribute(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    const v0, 0x7fffffff

    .line 247
    .local v0, "version":I
    const/4 v2, 0x0

    const-string v3, "version"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "version_str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 250
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2

    .line 252
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 254
    return v0
.end method

.method private handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "p"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    .line 178
    :cond_0
    return-void
.end method

.method private handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "p"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->getVersionAttribute(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 155
    .local v0, "mVersion":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mVersionFound:Z

    .line 169
    .end local v0    # "mVersion":I
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 157
    iget-boolean v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mVersionFound:Z

    if-eqz v2, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->handleTagSetting(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 160
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Bad xml, no version in settings tag"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget-boolean v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mVersionFound:Z

    if-eqz v2, :cond_4

    .line 164
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->handleTagGroups(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 166
    :cond_4
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Bad xml, no version in settings tag"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleTagGroups(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ApnSettingCustomizations:Parser is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_0
    const/4 v3, 0x0

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 220
    new-instance v1, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;-><init>(Lcom/android/settings/ApnSettingsCustomizations;)V

    .line 221
    .local v1, "mCurrentApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    iput-object v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    .line 222
    iget-object v3, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->doParse(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ApnSettingCustomizations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse Groups :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mCurrentApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
.end method

.method private handleTagSetting(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ApnSettingCustomizations:Parser is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_0
    const/4 v5, 0x0

    const-string v6, "key"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 190
    const-string v5, "simvalue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "simValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 193
    iget-object v5, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Lcom/android/settings/ApnSettingsCustomizations;->setSimvalue(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v3    # "simValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    const-string v5, "data"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "mData":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 198
    iget-object v5, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/android/settings/ApnSettingsCustomizations;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v1    # "mData":Ljava/lang/String;
    :cond_3
    const-string v5, "mms"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "mMms":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 203
    iget-object v5, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCurrentGroupsKey:Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/android/settings/ApnSettingsCustomizations;->setMms(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v2    # "mMms":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnSettingsCustomizations;->mCustomizationMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->getApnItem(Ljava/lang/String;)Lcom/android/settings/ApnSettingsCustomizations$ApnItem;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p2}, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->setData(Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method

.method private setMms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->getApnItem(Ljava/lang/String;)Lcom/android/settings/ApnSettingsCustomizations$ApnItem;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p2}, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->setMms(Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method private setSimvalue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsCustomizations;->getApnItem(Ljava/lang/String;)Lcom/android/settings/ApnSettingsCustomizations$ApnItem;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p2}, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->setSimvalue(Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    const/4 v0, 0x0

    .line 272
    .local v0, "Data":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    check-cast v1, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;

    .line 275
    .restart local v1    # "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    invoke-virtual {v1}, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->getData()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_0
    return-object v0
.end method

.method public getMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    const/4 v0, 0x0

    .line 260
    .local v0, "Mms":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/settings/ApnSettingsCustomizations;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    check-cast v1, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;

    .line 263
    .restart local v1    # "mApnItem":Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
    invoke-virtual {v1}, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->getMms()Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_0
    return-object v0
.end method

.method public readCustomization()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/ApnSettingsCustomizations;->getCustomXmlInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettingsCustomizations;->readCustomizedSettings(Ljava/io/InputStream;)V

    .line 89
    return-void
.end method

.method protected readCustomizedSettings(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string v3, "ApnSettingCustomizations"

    const-string v4, "InputStream is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 108
    .local v0, "customParser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/android/settings/ApnSettingsCustomizations;->doParse(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ApnSettingCustomizations"

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

    .line 110
    .end local v0    # "customParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 111
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "ApnSettingCustomizations"

    const-string v4, "Unable to parse Customfile - IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 120
    :catch_2
    move-exception v1

    .line 121
    const-string v3, "ApnSettingCustomizations"

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

    .line 112
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 113
    .local v2, "xml":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v3, "ApnSettingCustomizations"

    const-string v4, "Unable to parse Customfile - XmlPullParserException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 120
    :catch_4
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "ApnSettingCustomizations"

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

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "xml":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "ApnSettingCustomizations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse Customfile :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 120
    :catch_6
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ApnSettingCustomizations"

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

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 119
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 122
    :goto_1
    throw v3

    .line 120
    :catch_7
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "ApnSettingCustomizations"

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
