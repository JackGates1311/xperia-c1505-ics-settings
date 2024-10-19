.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$1;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;


# instance fields
.field private mAppsSize:J

.field private mAvailSize:J

.field private mDownloadsSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mMediaSizes:[J

.field private mMiscSize:J

.field public final mPathsExcludedForMisc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const-string v0, "StorageMeasurement"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 93
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageVolume"    # Landroid/os/storage/StorageVolume;
    .param p3, "isPrimary"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    .line 119
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mPathsExcludedForMisc:Ljava/util/Set;

    .line 128
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 129
    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 130
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 136
    return-void

    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    move v1, v3

    .line 129
    goto :goto_0

    :cond_1
    move v2, v3

    .line 130
    goto :goto_1
.end method

.method static synthetic access$1002(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAppsSize:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method private getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 4
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "dir"    # Ljava/lang/String;

    .prologue
    .line 533
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 536
    :goto_0
    return-wide v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 147
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    sput-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 151
    :cond_0
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 159
    :goto_0
    return-object v1

    .line 153
    :cond_1
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    goto :goto_0

    .line 156
    :cond_2
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .line 158
    .local v0, "storageMeasurement":Lcom/android/settings/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 159
    goto :goto_0
.end method

.method private sendExactUpdate()V
    .locals 5

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 200
    .local v1, "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_2

    .line 201
    sget-boolean v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "StorageMeasurement"

    const-string v3, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_1
    return-void

    .line 199
    .end local v1    # "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 207
    .restart local v1    # "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 209
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 210
    const-string v2, "apps_used"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAppsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 211
    const-string v2, "downloads_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    const-string v2, "misc_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    const-string v2, "media_sizes"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 215
    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateExact(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 5

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 187
    .local v1, "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_1

    .line 196
    :goto_1
    return-void

    .line 186
    .end local v1    # "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    .restart local v1    # "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 177
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 179
    return-void
.end method

.method getMiscSize()J
    .locals 2

    .prologue
    .line 541
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 183
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 173
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 167
    :cond_1
    return-void
.end method
