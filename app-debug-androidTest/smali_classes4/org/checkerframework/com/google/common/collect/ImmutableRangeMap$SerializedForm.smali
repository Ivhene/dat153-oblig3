.class Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mapOfRanges:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;)V"
        }
    .end annotation

    .line 398
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    .local p1, "mapOfRanges":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<Lorg/checkerframework/com/google/common/collect/Range<TK;>;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 400
    return-void
.end method


# virtual methods
.method createRangeMap()Ljava/lang/Object;
    .locals 5

    .line 411
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;-><init>()V

    .line 412
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;->put(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;

    .line 414
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;TV;>;"
    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    move-result-object v1

    return-object v1
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 403
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeMap$SerializedForm;->createRangeMap()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
