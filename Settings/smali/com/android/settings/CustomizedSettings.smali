.class public Lcom/android/settings/CustomizedSettings;
.super Ljava/lang/Object;
.source "CustomizedSettings.java"


# static fields
.field private static mUseCachedValues:Z

.field private static sDisabledSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGeneralSettings:Ljava/util/HashMap;
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

.field private static sRemovedSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/CustomizedSettings;->mUseCachedValues:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizePreferences(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getSettingsToBeDisabled(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    .local v0, "disabledSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getSettingsToBeRemoved(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 111
    .local v1, "removedSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-static {p1, v1, v0}, Lcom/android/settings/CustomizedSettings;->customizePreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 114
    :cond_1
    return-void
.end method

.method private static customizePreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "removedSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "disabledSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 128
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 129
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "key":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    const-string v3, "CustomizedSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing preference "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_0
    :goto_1
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 142
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-static {v2, p1, p2}, Lcom/android/settings/CustomizedSettings;->customizePreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 127
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const-string v3, "CustomizedSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling preference "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 145
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method private static getCustomizedSettings(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 176
    .local v2, "parseInput":Ljava/io/InputStream;
    :try_start_0
    const-string v4, "content://com.sonyericsson.provider.customization/settings/com.android.settings"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 178
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 185
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;

    .line 187
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;

    .line 188
    sget-object v4, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;

    invoke-static {v2, v4, v5, v6}, Lcom/android/settings/CustomizedSettings;->parseSettings(Ljava/io/InputStream;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :goto_0
    if-eqz v2, :cond_0

    .line 194
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 179
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 189
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CustomizedSettings"

    const-string v5, "Failed to apply customized settings"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 196
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CustomizedSettings"

    const-string v5, "Failed to close input stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static declared-synchronized getGeneralCustomizedSettings(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    const-class v1, Lcom/android/settings/CustomizedSettings;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/settings/CustomizedSettings;->mUseCachedValues:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    monitor-exit v1

    return-object v0

    .line 248
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getCustomizedSettings(Landroid/content/Context;)V

    .line 250
    sget-object v0, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getGeneralCustomizedSettings(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 157
    .local v0, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getSettingsToBeDisabled(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    const-class v1, Lcom/android/settings/CustomizedSettings;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/settings/CustomizedSettings;->mUseCachedValues:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit v1

    return-object v0

    .line 215
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getCustomizedSettings(Landroid/content/Context;)V

    .line 217
    sget-object v0, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getSettingsToBeRemoved(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const-class v1, Lcom/android/settings/CustomizedSettings;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/settings/CustomizedSettings;->mUseCachedValues:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_0
    monitor-exit v1

    return-object v0

    .line 234
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getCustomizedSettings(Landroid/content/Context;)V

    .line 236
    sget-object v0, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static parseSettings(Ljava/io/InputStream;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "disabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "generalSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 257
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 291
    :cond_0
    return-void

    .line 262
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 264
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v2, :cond_0

    .line 265
    invoke-interface {v2, p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "eventType":I
    const/4 v4, 0x0

    .line 269
    .local v4, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 271
    .local v3, "setting":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    .line 272
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 273
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 274
    const-string v5, "setting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 275
    const-string v5, "key"

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "action":Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 278
    const-string v5, "remove"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 280
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    const-string v5, "disable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 281
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    :cond_4
    invoke-virtual {p3, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
