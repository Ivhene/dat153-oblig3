.class public final Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;
.super Ljava/lang/Object;
.source "ContrastUtils.java"


# static fields
.field public static final COLOR_SECURE_WINDOW_CENSOR:I = -0x1000000

.field public static final CONTRAST_RATIO_WCAG_LARGE_TEXT:D = 3.0

.field public static final CONTRAST_RATIO_WCAG_NORMAL_TEXT:D = 4.5

.field public static final WCAG_LARGE_BOLD_TEXT_MIN_SIZE:I = 0xe

.field public static final WCAG_LARGE_TEXT_MIN_SIZE:I = 0x12


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static calculateContrastRatio(DD)D
    .locals 6
    .param p0, "lum1"    # D
    .param p2, "lum2"    # D

    .line 137
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_0

    .line 141
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    add-double/2addr v4, v2

    div-double/2addr v0, v4

    return-wide v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Luminance values may not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateContrastRatio(II)D
    .locals 4
    .param p0, "color1"    # I
    .param p1, "color2"    # I

    .line 123
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateLuminance(I)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateLuminance(I)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateContrastRatio(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .locals 10
    .param p0, "color"    # I

    .line 55
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->linearColor(I)D

    move-result-wide v0

    .line 56
    .local v0, "r":D
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->linearColor(I)D

    move-result-wide v2

    .line 57
    .local v2, "g":D
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->linearColor(I)D

    move-result-wide v4

    .line 58
    .local v4, "b":D
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v6, v0

    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    return-wide v6
.end method

.method public static colorDifference(II)D
    .locals 32
    .param p0, "color1"    # I
    .param p1, "color2"    # I

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->rgb2lab(I)[D

    move-result-object v0

    .line 80
    .local v0, "lab1":[D
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->rgb2lab(I)[D

    move-result-object v1

    .line 82
    .local v1, "lab2":[D
    const/4 v2, 0x0

    aget-wide v3, v0, v2

    aget-wide v5, v1, v2

    sub-double/2addr v3, v5

    .line 83
    .local v3, "deltaL":D
    const/4 v2, 0x1

    aget-wide v5, v0, v2

    aget-wide v7, v1, v2

    sub-double/2addr v5, v7

    .line 84
    .local v5, "deltaA":D
    const/4 v7, 0x2

    aget-wide v8, v0, v7

    aget-wide v10, v1, v7

    sub-double/2addr v8, v10

    .line 85
    .local v8, "deltaB":D
    aget-wide v10, v0, v2

    aget-wide v12, v0, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    .line 86
    .local v10, "c1":D
    aget-wide v12, v1, v2

    aget-wide v14, v1, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    .line 87
    .local v12, "c2":D
    sub-double v14, v10, v12

    .line 88
    .local v14, "deltaC":D
    mul-double v16, v5, v5

    mul-double v18, v8, v8

    add-double v16, v16, v18

    mul-double v18, v14, v14

    sub-double v16, v16, v18

    .line 89
    .local v16, "deltaH":D
    const-wide/16 v18, 0x0

    cmpg-double v2, v16, v18

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    :goto_0
    move-wide/from16 v16, v18

    .line 90
    const-wide v18, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double v18, v18, v10

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    .line 91
    .local v18, "sc":D
    const-wide v22, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v22, v22, v10

    add-double v22, v22, v20

    .line 92
    .local v22, "sh":D
    div-double v20, v3, v20

    .line 93
    .local v20, "deltaLKlsl":D
    div-double v24, v14, v18

    .line 94
    .local v24, "deltaCkcsc":D
    div-double v26, v16, v22

    .line 95
    .local v26, "deltaHkhsh":D
    mul-double v28, v20, v20

    mul-double v30, v24, v24

    add-double v28, v28, v30

    mul-double v30, v26, v26

    add-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    return-wide v28
.end method

.method public static colorToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "color"    # I

    .line 151
    const v0, 0xffffff

    and-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "#%06X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static linearColor(I)D
    .locals 6
    .param p0, "component"    # I

    .line 62
    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    .line 63
    .local v0, "sRGB":D
    const-wide v2, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 64
    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    div-double v2, v0, v2

    return-wide v2

    .line 66
    :cond_0
    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v2, v0

    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v2, v4

    const-wide v4, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static rgb2lab(I)[D
    .locals 21
    .param p0, "color"    # I

    .line 107
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->linearColor(I)D

    move-result-wide v0

    .line 108
    .local v0, "r":D
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->linearColor(I)D

    move-result-wide v2

    .line 109
    .local v2, "g":D
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->linearColor(I)D

    move-result-wide v4

    .line 110
    .local v4, "b":D
    const-wide v6, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v6, v0

    const-wide v8, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide v8, 0x3fee6a400fba8827L    # 0.95047

    div-double/2addr v6, v8

    .line 111
    .local v6, "x":D
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v8, v0

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v10

    .line 112
    .local v8, "y":D
    const-wide v10, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v10, v0

    const-wide v12, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    const-wide v12, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    const-wide v12, 0x3ff16bd9018e7579L    # 1.08883

    div-double/2addr v10, v12

    .line 113
    .local v10, "z":D
    const-wide v12, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v14, v6, v12

    const-wide v15, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    const-wide v17, 0x401f25e353f7ced9L    # 7.787

    if-lez v14, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v19

    goto :goto_0

    :cond_0
    mul-double v19, v6, v17

    add-double v19, v19, v15

    :goto_0
    move-wide/from16 v6, v19

    .line 114
    cmpl-double v14, v8, v12

    if-lez v14, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v19

    goto :goto_1

    :cond_1
    mul-double v19, v8, v17

    add-double v19, v19, v15

    :goto_1
    move-wide/from16 v8, v19

    .line 115
    cmpl-double v12, v10, v12

    if-lez v12, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v12

    goto :goto_2

    :cond_2
    mul-double v17, v17, v10

    add-double v12, v17, v15

    :goto_2
    move-wide v10, v12

    .line 116
    const/4 v12, 0x3

    new-array v12, v12, [D

    const-wide/high16 v13, 0x405d000000000000L    # 116.0

    mul-double/2addr v13, v8

    const-wide/high16 v15, 0x4030000000000000L    # 16.0

    sub-double/2addr v13, v15

    const/4 v15, 0x0

    aput-wide v13, v12, v15

    const-wide v13, 0x407f400000000000L    # 500.0

    sub-double v15, v6, v8

    mul-double/2addr v15, v13

    const/4 v13, 0x1

    aput-wide v15, v12, v13

    const-wide/high16 v13, 0x4069000000000000L    # 200.0

    sub-double v15, v8, v10

    mul-double/2addr v15, v13

    const/4 v13, 0x2

    aput-wide v15, v12, v13

    return-object v12
.end method
