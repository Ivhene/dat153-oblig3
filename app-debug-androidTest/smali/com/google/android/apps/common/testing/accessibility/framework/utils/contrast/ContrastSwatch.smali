.class public Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
.super Ljava/lang/Object;
.source "ContrastSwatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;,
        Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;
    }
.end annotation


# static fields
.field private static final COLOR_CUTOFF_PERCENTAGE:D = 0.01

.field private static final COLOR_DIFFERENCE_LIMIT:D = 2.0

.field private static final COLOR_SIGNIFICANCE_PERCENTAGE:D = 0.03

.field public static final MAX_FOREGROUND_COLOR:I = 0x5


# instance fields
.field private final separatedColors:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Z)V
    .locals 1
    .param p1, "image"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .param p2, "multipleForegroundColors"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->processSwatch(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Z)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->separatedColors:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    .line 58
    return-void
.end method

.method private static extractDominantForegroundColors(ILjava/util/PriorityQueue;DI)Ljava/util/List;
    .locals 18
    .param p0, "backgroundColor"    # I
    .param p2, "averageLuminance"    # D
    .param p4, "imageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/PriorityQueue<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;DI)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 217
    .local p1, "frequencyMaxHeap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateLuminance(I)D

    move-result-wide v0

    .line 218
    .local v0, "backgroundLuminance":D
    cmpg-double v2, v0, p2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 219
    .local v2, "backgroundLuminanceBelowAverage":Z
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v5, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 221
    .local v6, "priorityIndex":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_5

    .line 222
    invoke-virtual/range {p1 .. p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 223
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 224
    .local v8, "newColor":I
    invoke-static {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateLuminance(I)D

    move-result-wide v9

    .line 225
    .local v9, "newLuminance":D
    cmpg-double v11, v9, p2

    if-gtz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    .line 226
    .local v11, "newLuminanceBelowAverage":Z
    :goto_2
    if-eq v2, v11, :cond_2

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    .line 228
    .local v12, "oppositeLuminance":Z
    :goto_3
    if-eqz v12, :cond_3

    .line 229
    add-int/lit8 v13, v6, 0x1

    .end local v6    # "priorityIndex":I
    .local v13, "priorityIndex":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v6, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 v15, p4

    move v6, v13

    goto :goto_4

    .line 230
    .end local v13    # "priorityIndex":I
    .restart local v6    # "priorityIndex":I
    :cond_3
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-double v13, v13

    move/from16 v15, p4

    int-to-double v3, v15

    const-wide v16, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v3, v3, v16

    cmpl-double v3, v13, v3

    if-lez v3, :cond_4

    .line 231
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "newColor":I
    .end local v9    # "newLuminance":D
    .end local v11    # "newLuminanceBelowAverage":Z
    .end local v12    # "oppositeLuminance":Z
    :cond_4
    :goto_4
    goto :goto_1

    .line 221
    :cond_5
    move/from16 v15, p4

    .line 234
    return-object v5
.end method

.method static synthetic lambda$reduceColors$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "a"    # Ljava/util/Map$Entry;
    .param p1, "b"    # Ljava/util/Map$Entry;

    .line 186
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$separateColorsUsingMultipleForegroundMethod$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "a"    # Ljava/util/Map$Entry;
    .param p1, "b"    # Ljava/util/Map$Entry;

    .line 112
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static processSwatch(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Z)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;
    .locals 3
    .param p0, "image"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .param p1, "multipleForegroundColors"    # Z

    .line 62
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V

    .line 63
    .local v0, "colorHistogram":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;
    invoke-interface {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getWidth()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 64
    .local v1, "imageSize":I
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->separateColors(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;IZ)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    move-result-object v2

    return-object v2
.end method

.method private static reduceColors(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;ID)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;
    .locals 12
    .param p0, "colorHistogram"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;
    .param p1, "imageSize"    # I
    .param p2, "cutoff"    # D

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v0, "dominantColorHistogram":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "dominantColorsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 182
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, p1

    mul-double/2addr v6, p2

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    .line 183
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 186
    :cond_1
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 190
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 191
    .local v4, "color":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 192
    .local v5, "colorCount":I
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 193
    .local v7, "dominantColor":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->colorDifference(II)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 194
    move v4, v7

    .line 195
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    .line 196
    goto :goto_3

    .line 198
    .end local v7    # "dominantColor":I
    :cond_2
    goto :goto_2

    .line 199
    :cond_3
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "color":I
    .end local v5    # "colorCount":I
    goto :goto_1

    .line 201
    :cond_4
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;-><init>(Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$1;)V

    return-object v2
.end method

.method private static separateColors(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;IZ)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;
    .locals 3
    .param p0, "colorHistogram"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;
    .param p1, "imageSize"    # I
    .param p2, "multipleForegroundColors"    # Z

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->getColors()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;-><init>(I)V

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->getColors()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->getColors()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, "singleColor":I
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    invoke-direct {v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;-><init>(I)V

    return-object v1

    .line 86
    .end local v0    # "singleColor":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->calculateAverageLuminance()D

    move-result-wide v0

    .line 88
    .local v0, "averageLuminance":D
    if-eqz p2, :cond_2

    .line 89
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->separateColorsUsingMultipleForegroundMethod(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;DI)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    move-result-object v2

    return-object v2

    .line 93
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->separateColorsUsingSingleForegroundMethod(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;D)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    move-result-object v2

    return-object v2
.end method

.method private static separateColorsUsingMultipleForegroundMethod(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;DI)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;
    .locals 5
    .param p0, "colorHistogram"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;
    .param p1, "averageLuminance"    # D
    .param p3, "imageSize"    # I

    .line 100
    nop

    .line 101
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-static {p0, p3, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->reduceColors(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;ID)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;

    move-result-object v0

    .line 105
    .local v0, "dominantColorHistogram":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->getColors()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->getColors()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 107
    .local v1, "singleColor":I
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    invoke-direct {v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;-><init>(I)V

    return-object v2

    .line 110
    .end local v1    # "singleColor":I
    :cond_0
    new-instance v1, Ljava/util/PriorityQueue;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->getColors()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v2

    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 113
    .local v1, "frequencyMaxHeap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 115
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 120
    .local v2, "backgroundColor":I
    nop

    .line 121
    invoke-static {v2, v1, p1, p2, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->extractDominantForegroundColors(ILjava/util/PriorityQueue;DI)Ljava/util/List;

    move-result-object v3

    .line 126
    .local v3, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    invoke-direct {v4, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;-><init>(I)V

    return-object v4

    .line 129
    :cond_2
    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    invoke-direct {v4, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;-><init>(ILjava/util/List;)V

    return-object v4
.end method

.method private static separateColorsUsingSingleForegroundMethod(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;D)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;
    .locals 11
    .param p0, "colorHistogram"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;
    .param p1, "averageLuminance"    # D

    .line 137
    const/4 v0, -0x1

    .line 138
    .local v0, "lowLuminanceColor":I
    const/4 v1, -0x1

    .line 139
    .local v1, "highLuminanceColor":I
    const/4 v2, 0x0

    .line 140
    .local v2, "maxLowLuminanceFrequency":I
    const/4 v3, 0x0

    .line 141
    .local v3, "maxHighLuminanceFrequency":I
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 142
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 143
    .local v6, "color":I
    invoke-static {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateLuminance(I)D

    move-result-wide v7

    .line 144
    .local v7, "luminanceValue":D
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 145
    .local v9, "frequency":I
    cmpg-double v10, v7, p1

    if-gez v10, :cond_0

    if-le v9, v2, :cond_0

    .line 146
    move v2, v9

    .line 147
    move v0, v6

    goto :goto_1

    .line 148
    :cond_0
    cmpl-double v10, v7, p1

    if-ltz v10, :cond_1

    if-le v9, v3, :cond_1

    .line 149
    move v3, v9

    .line 150
    move v1, v6

    .line 152
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "color":I
    .end local v7    # "luminanceValue":D
    .end local v9    # "frequency":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 156
    :cond_2
    if-le v3, v2, :cond_3

    .line 157
    move v4, v1

    .line 158
    .local v4, "backgroundColor":I
    move v5, v0

    .local v5, "foregroundColor":I
    goto :goto_2

    .line 160
    .end local v4    # "backgroundColor":I
    .end local v5    # "foregroundColor":I
    :cond_3
    move v4, v0

    .line 161
    .restart local v4    # "backgroundColor":I
    move v5, v1

    .line 163
    .restart local v5    # "foregroundColor":I
    :goto_2
    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    invoke-direct {v6, v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;-><init>(II)V

    return-object v6
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->separatedColors:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getBackgroundLuminance()D
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getBackgroundColor()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getContrastRatios()Lcom/google/common/collect/ImmutableList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 274
    .local v0, "contrastRatios":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getBackgroundLuminance()D

    move-result-wide v1

    .line 275
    .local v1, "backgroundLuminance":D
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getForegroundLuminances()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 276
    .local v3, "foregroundLuminances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 277
    .local v5, "element":Ljava/lang/Double;
    nop

    .line 278
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateContrastRatio(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 277
    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 280
    .end local v5    # "element":Ljava/lang/Double;
    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    return-object v4
.end method

.method public getForegroundColors()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->separatedColors:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;->getForegroundColors()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundLuminances()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 259
    .local v0, "foregroundLuminances":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getForegroundColors()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 260
    .local v2, "color":Ljava/lang/Integer;
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateLuminance(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 261
    .end local v2    # "color":Ljava/lang/Integer;
    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 287
    nop

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getContrastRatios()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->separatedColors:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    .line 290
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;->getBackgroundColor()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->colorToHexString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->separatedColors:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;

    .line 292
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;->getForegroundColors()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->colorToHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "{contrast:1:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", background:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", foreground:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method
