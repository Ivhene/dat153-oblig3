.class public abstract Lorg/checkerframework/com/google/common/collect/MultimapBuilder;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$SetMultimapBuilder;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$TreeSetSupplier;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$LinkedListSupplier;,
        Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ArrayListSupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_KEYS:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder<TK0;TV0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/MultimapBuilder$1;

    .line 64
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder<TK0;TV0;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder;-><init>()V

    return-void
.end method

.method public static enumKeys(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Enum<",
            "TK0;>;>(",
            "Ljava/lang/Class<",
            "TK0;>;)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "TK0;>;"
        }
    .end annotation

    .line 171
    .local p0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK0;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$4;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$4;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static hashKeys()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder;->hashKeys(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static hashKeys(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .param p0, "expectedKeys"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 87
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$1;-><init>(I)V

    return-object v0
.end method

.method public static linkedHashKeys()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder;->linkedHashKeys(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static linkedHashKeys(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .param p0, "expectedKeys"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 118
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$2;-><init>(I)V

    return-object v0
.end method

.method public static treeKeys()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder;->treeKeys(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static treeKeys(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "TK0;>;"
        }
    .end annotation

    .line 155
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK0;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$3;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$3;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public abstract build()Lorg/checkerframework/com/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public build(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder<TK0;TV0;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder;->build()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    .line 410
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z

    .line 411
    return-object v0
.end method
