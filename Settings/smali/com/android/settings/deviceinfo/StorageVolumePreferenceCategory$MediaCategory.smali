.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaCategory"
.end annotation


# instance fields
.field final mCategory:I

.field final mMediaTypes:[I


# direct methods
.method public varargs constructor <init>(I[I)V
    .locals 4
    .param p1, "category"    # I
    .param p2, "mediatypes"    # [I

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mCategory:I

    .line 108
    array-length v1, p2

    .line 109
    .local v1, "length":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mMediaTypes:[I

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mMediaTypes:[I

    aget v3, p2, v0

    aput v3, v2, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method
