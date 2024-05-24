.class Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoExtraDataExtractor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTextCharacterLocationsRequestBundle(Ljava/lang/CharSequence;)Landroid/os/Bundle;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    return-object v0
.end method


# virtual methods
.method getTextCharacterLocations(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 16
    .param p1, "fromInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 33
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 37
    :cond_0
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;->createTextCharacterLocationsRequestBundle(Ljava/lang/CharSequence;)Landroid/os/Bundle;

    move-result-object v1

    .line 38
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refreshWithExtraData(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 41
    .local v4, "extras":Landroid/os/Bundle;
    nop

    .line 42
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 43
    .local v2, "data":[Landroid/os/Parcelable;
    if-nez v2, :cond_1

    .line 44
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    return-object v5

    .line 47
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    .line 48
    .local v5, "charLocations":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    array-length v6, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v2, v7

    .line 49
    .local v8, "item":Landroid/os/Parcelable;
    instance-of v9, v8, Landroid/graphics/RectF;

    if-eqz v9, :cond_2

    .line 52
    move-object v9, v8

    check-cast v9, Landroid/graphics/RectF;

    .line 53
    .local v9, "rectF":Landroid/graphics/RectF;
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget v11, v9, Landroid/graphics/RectF;->left:F

    float-to-double v11, v11

    .line 55
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    iget v12, v9, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    .line 56
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget v13, v9, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    .line 57
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    .line 58
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    .line 53
    invoke-virtual {v5, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 48
    .end local v8    # "item":Landroid/os/Parcelable;
    .end local v9    # "rectF":Landroid/graphics/RectF;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    return-object v6

    .line 63
    .end local v2    # "data":[Landroid/os/Parcelable;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "charLocations":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    :cond_4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method
