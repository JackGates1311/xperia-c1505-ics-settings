.class public Lcom/sonyericsson/settings/smscounter/SmsCounterTable;
.super Ljava/lang/Object;
.source "SmsCounterTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "imsi"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "countValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v3, "str":Ljava/lang/StringBuilder;
    const-string v4, "select count(*) as count from counter where sent_time > \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, "\' and sent_time < \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, "\' and imsi = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    if-eqz p0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 56
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    const-string v4, "count"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 59
    .local v2, "index":I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 64
    .end local v2    # "index":I
    :goto_0
    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 69
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_0
    return v0

    .line 61
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public static isRecordIDExist(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "recordID"    # I

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "returnValue":Z
    const/4 v0, 0x0

    .line 77
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "select sms_id from counter where sms_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 85
    :cond_0
    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_1
    return v1

    .line 85
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method
