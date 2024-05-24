.class Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;
.super Ljava/lang/Object;
.source "ContrastSwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorHistogram"
.end annotation


# instance fields
.field private final colorHistogram:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->processLuminanceData(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->colorHistogram:Lcom/google/common/collect/ImmutableMap;

    .line 335
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 337
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->colorHistogram:Lcom/google/common/collect/ImmutableMap;

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$1;

    .line 329
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private static processLuminanceData(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/common/collect/ImmutableMap;
    .locals 10
    .param p0, "image"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;",
            ")",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-interface {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getWidth()I

    move-result v0

    .line 373
    .local v0, "width":I
    invoke-interface {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getHeight()I

    move-result v1

    .line 374
    .local v1, "height":I
    mul-int v2, v0, v1

    if-nez v2, :cond_0

    .line 375
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2

    .line 377
    :cond_0
    invoke-interface {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getPixels()[I

    move-result-object v2

    .line 378
    .local v2, "pixels":[I
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 380
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    .line 381
    .local v3, "colorHistogram":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    aget v4, v2, v4

    .line 382
    .local v4, "currentColor":I
    const/4 v5, 0x1

    .line 383
    .local v5, "currentColorCount":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 384
    aget v7, v2, v6

    .line 385
    .local v7, "color":I
    if-ne v7, v4, :cond_1

    .line 386
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 388
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 389
    move v4, v7

    .line 390
    const/4 v5, 0x1

    .line 383
    .end local v7    # "color":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    .end local v6    # "i":I
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 395
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method calculateAverageLuminance()D
    .locals 6

    .line 360
    const-wide/16 v0, 0x0

    .line 361
    .local v0, "luminanceSum":D
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->getColors()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 362
    .local v3, "color":I
    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 363
    .end local v3    # "color":I
    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->getColors()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    return-wide v2
.end method

.method entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->colorHistogram:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getColors()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->colorHistogram:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getCount(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "color"    # I

    .line 352
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$ColorHistogram;->colorHistogram:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
