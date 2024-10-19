.class public Lcom/android/settings/ColorReplacer;
.super Ljava/lang/Object;
.source "ColorReplacer.java"


# instance fields
.field private mColorToReplaceHue:F

.field private mHueDiff:F

.field private mSaturationDiff:F

.field private mValueDiff:F


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "colorToReplace"    # I
    .param p2, "colorizationColor"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v2, [F

    .line 38
    .local v0, "colorToReplaceHSV":[F
    new-array v1, v2, [F

    .line 39
    .local v1, "colorizationColorHSV":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 40
    invoke-static {p2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 42
    aget v2, v0, v3

    iput v2, p0, Lcom/android/settings/ColorReplacer;->mColorToReplaceHue:F

    .line 43
    aget v2, v1, v3

    iget v3, p0, Lcom/android/settings/ColorReplacer;->mColorToReplaceHue:F

    invoke-direct {p0, v2, v3}, Lcom/android/settings/ColorReplacer;->getHueDifference(FF)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/settings/ColorReplacer;->mHueDiff:F

    .line 44
    aget v2, v1, v4

    aget v3, v0, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/settings/ColorReplacer;->mSaturationDiff:F

    .line 45
    aget v2, v1, v5

    aget v3, v0, v5

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/settings/ColorReplacer;->mValueDiff:F

    .line 46
    return-void
.end method

.method private getHueDifference(FF)I
    .locals 2
    .param p1, "hue1"    # F
    .param p2, "hue2"    # F

    .prologue
    .line 49
    sub-float v1, p1, p2

    float-to-int v0, v1

    .line 50
    .local v0, "diff":I
    rem-int/lit16 v1, v0, 0x168

    add-int/lit16 v1, v1, 0x21c

    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, -0xb4

    return v1
.end method

.method private normalize(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 62
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    .line 67
    .end local p1    # "value":F
    :cond_0
    :goto_0
    return p1

    .line 64
    .restart local p1    # "value":F
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    .line 65
    goto :goto_0
.end method

.method private normalizeAngle(F)F
    .locals 2
    .param p1, "angle"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 54
    rem-float/2addr p1, v1

    .line 55
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 56
    add-float/2addr p1, v1

    .line 58
    :cond_0
    return p1
.end method


# virtual methods
.method public replaceColor(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 79
    const/4 v0, 0x3

    new-array v9, v0, [F

    .line 80
    .local v9, "hsv":[F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 81
    .local v1, "pixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 82
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v1

    if-ge v10, v0, :cond_1

    .line 83
    aget v11, v1, v10

    .line 84
    .local v11, "pixel":I
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 85
    .local v8, "alpha":I
    if-lez v8, :cond_0

    .line 86
    invoke-static {v11, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 87
    iget v0, p0, Lcom/android/settings/ColorReplacer;->mColorToReplaceHue:F

    aget v3, v9, v2

    invoke-direct {p0, v0, v3}, Lcom/android/settings/ColorReplacer;->getHueDifference(FF)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_0

    .line 88
    aget v0, v9, v2

    iget v3, p0, Lcom/android/settings/ColorReplacer;->mHueDiff:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/settings/ColorReplacer;->normalizeAngle(F)F

    move-result v0

    aput v0, v9, v2

    .line 89
    aget v0, v9, v12

    iget v3, p0, Lcom/android/settings/ColorReplacer;->mSaturationDiff:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/settings/ColorReplacer;->normalize(F)F

    move-result v0

    aput v0, v9, v12

    .line 90
    aget v0, v9, v13

    iget v3, p0, Lcom/android/settings/ColorReplacer;->mValueDiff:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/settings/ColorReplacer;->normalize(F)F

    move-result v0

    aput v0, v9, v13

    .line 91
    invoke-static {v8, v9}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    aput v0, v1, v10

    .line 82
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 95
    .end local v8    # "alpha":I
    .end local v11    # "pixel":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
