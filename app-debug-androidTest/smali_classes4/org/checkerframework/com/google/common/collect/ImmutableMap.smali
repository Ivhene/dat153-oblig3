.class public abstract Lorg/checkerframework/com/google/common/collect/ImmutableMap;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;,
        Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;,
        Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private transient entrySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private transient keySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private transient multimapView:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private transient values:Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Rr5wHpoNM5boD4b5K8greFBFLF8()Ljava/util/LinkedHashMap;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 476
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 515
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 184
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    return-object v0
.end method

.method public static builderWithExpectedSize(I)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 201
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 202
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    return-object v0
.end method

.method static checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 1
    .param p0, "safe"    # Z
    .param p1, "conflictDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .line 207
    .local p2, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .local p3, "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-eqz p0, :cond_0

    .line 210
    return-void

    .line 208
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->conflictException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method static conflictException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "conflictDescription"    # Ljava/lang/String;
    .param p1, "entry1"    # Ljava/lang/Object;
    .param p2, "entry2"    # Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple entries with same "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 451
    .local p0, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    .line 452
    .local v0, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    .line 463
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->fromEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1

    .line 456
    :pswitch_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 457
    .local v1, "onlyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2

    .line 454
    .end local v1    # "onlyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :pswitch_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 425
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/util/SortedMap;

    if-nez v0, :cond_1

    .line 427
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 428
    .local v0, "kvMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    return-object v0

    .line 428
    .end local v0    # "kvMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 431
    :cond_1
    instance-of v0, p0, Ljava/util/EnumMap;

    if-eqz v0, :cond_2

    .line 433
    move-object v0, p0

    check-cast v0, Ljava/util/EnumMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->copyOfEnumMap(Ljava/util/EnumMap;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 434
    .restart local v0    # "kvMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    return-object v0

    .line 431
    .end local v0    # "kvMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    :cond_2
    :goto_0
    nop

    .line 436
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfEnumMap(Ljava/util/EnumMap;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/EnumMap<",
            "TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 469
    .local p0, "original":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    .line 470
    .local v0, "copy":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 471
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_0

    .line 473
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method static entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 175
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 114
    sget-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 123
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 132
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->fromEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 141
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->fromEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 150
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 151
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p6, p7}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 150
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->fromEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 161
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 162
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p6, p7}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p8, p9}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 161
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->fromEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 82
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/CollectCollectors;->toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 99
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$$ExternalSyntheticLambda1;-><init>()V

    .line 103
    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$$ExternalSyntheticLambda2;-><init>()V

    .line 102
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asMultimap()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 787
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0

    .line 790
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->multimapView:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    .line 791
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    if-nez v0, :cond_1

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;)V

    .line 793
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v4

    invoke-direct {v1, v2, v4, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->multimapView:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 791
    :goto_0
    return-object v1
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 684
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 689
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method abstract createKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation
.end method

.method abstract createValues()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 63
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 715
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 716
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 868
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 703
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 704
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 875
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 679
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 879
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method abstract isPartialView()Z
.end method

.method keyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TK;>;"
        }
    .end annotation

    .line 741
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 742
    .local v0, "entryIterator":Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;, "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;)V

    return-object v1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 63
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 729
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 730
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->createKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method keySpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 756
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 626
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 650
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final replaceAll(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 884
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->toStringImpl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 63
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 767
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->values:Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    .line 768
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TV;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->createValues()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->values:Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 923
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
