.class public Lcom/android/settings/StorageInfoGetter;
.super Ljava/lang/Object;
.source "StorageInfoGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/StorageInfoGetter$InternalStorageInfoGetter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public static getStorageInfo(Ljava/lang/String;)Lcom/android/settings/StorageInfoGetter;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "typeStorage":Ljava/lang/String;
    const-string v1, "Emmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lcom/android/settings/StorageInfoGetter$InternalStorageInfoGetter;

    invoke-direct {v1}, Lcom/android/settings/StorageInfoGetter$InternalStorageInfoGetter;-><init>()V

    .line 45
    :goto_0
    return-object v1

    .line 39
    :cond_0
    const-string v1, "SdCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Lcom/android/settings/StorageInfoGetter;

    invoke-direct {v1}, Lcom/android/settings/StorageInfoGetter;-><init>()V

    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "StorageInfoGetter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage type unknown ! path is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Lcom/android/settings/StorageInfoGetter;

    invoke-direct {v1}, Lcom/android/settings/StorageInfoGetter;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getConfirmUnmountText()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f07036c

    return v0
.end method

.method public getConfirmUnmountTitle()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f07036b

    return v0
.end method

.method public getErrorUnmountText()I
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f07036e

    return v0
.end method

.method public getErrorUnmountTitle()I
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f07036d

    return v0
.end method

.method public getFormatPreferenceSummary()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f070369

    return v0
.end method

.method public getFormatPreferenceTitle()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f070368

    return v0
.end method

.method public getGeExplanation()I
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f0703b9

    return v0
.end method

.method public getMediaFormatButton()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0703b5

    return v0
.end method

.method public getMediaFormatFinalText()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f0703b6

    return v0
.end method

.method public getMediaFormatPrimaryText()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f0703b4

    return v0
.end method

.method public getMediaFormatTitle()I
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f0703b2

    return v0
.end method

.method public getMountToggleEjectSummary()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f070364

    return v0
.end method

.method public getMountToggleEjectTitle()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f070363

    return v0
.end method

.method public getMountToggleInsertSummary()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f070365

    return v0
.end method

.method public getMountToggleMountSummary()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f070367

    return v0
.end method

.method public getMountToggleMountTitle()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f070366

    return v0
.end method

.method public getStorageVolumePreferenceTitle()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f070359

    return v0
.end method

.method public getUnmountInformText()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f07036f

    return v0
.end method
