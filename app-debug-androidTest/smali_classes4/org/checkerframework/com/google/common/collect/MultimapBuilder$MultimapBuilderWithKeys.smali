.class public abstract Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultimapBuilderWithKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_VALUES_PER_KEY:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 276
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arrayListValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public arrayListValues(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .param p1, "expectedValuesPerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 293
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;-><init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method abstract createMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public enumSetValues(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Enum<",
            "TV0;>;>(",
            "Ljava/lang/Class<",
            "TV0;>;)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
            "TK0;TV0;>;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    .local p1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV0;>;"
    const-string v0, "valueClass"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;-><init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;Ljava/lang/Class;)V

    return-object v0
.end method

.method public hashSetValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->hashSetValues(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hashSetValues(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .param p1, "expectedValuesPerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 327
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$3;-><init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method public linkedHashSetValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public linkedHashSetValues(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .param p1, "expectedValuesPerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 350
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;-><init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method public linkedListValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;-><init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;)V

    return-object v0
.end method

.method public treeSetValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->treeSetValues(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public treeSetValues(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TV0;>;)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder<",
            "TK0;TV0;>;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TV0;>;"
    const-string v0, "comparator"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$5;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$5;-><init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;Ljava/util/Comparator;)V

    return-object v0
.end method
