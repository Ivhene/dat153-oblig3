.class public final Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableClassToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mapBuilder:Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;->mapBuilder:Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    return-void
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TB;)TT;"
        }
    .end annotation

    .line 120
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TB;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder<TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;->mapBuilder:Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 131
    .local v0, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<Ljava/lang/Class<+TB;>;TB;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap;

    move-result-object v1

    return-object v1

    .line 134
    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$1;)V

    return-object v1
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder<TB;>;"
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;->mapBuilder:Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 99
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Class<",
            "+TT;>;+TT;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder<TB;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Class<+TT;>;+TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Class<+TT;>;+TT;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 113
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 114
    .local v3, "value":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;->mapBuilder:Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableClassToInstanceMap$Builder;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 115
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Class<+TT;>;+TT;>;"
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 116
    :cond_0
    return-object p0
.end method
