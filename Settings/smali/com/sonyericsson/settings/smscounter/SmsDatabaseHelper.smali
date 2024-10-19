.class public Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SmsDatabaseHelper.java"


# static fields
.field private static mHelper:Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v0, "smscounter.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method

.method private createCounterTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 46
    const-string v0, "CREATE TABLE counter (_id INTEGER PRIMARY KEY AUTOINCREMENT, sms_id INTEGER DEFAULT 0, imsi TEXT, type INTEGER DEFAULT 0, sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-class v1, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->mHelper:Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->mHelper:Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;

    .line 27
    :cond_0
    sget-object v0, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->mHelper:Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->createCounterTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 43
    return-void
.end method
