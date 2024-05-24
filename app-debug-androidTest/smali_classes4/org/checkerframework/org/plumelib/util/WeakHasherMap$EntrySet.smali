.class final Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "WeakHasherMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field hashEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)V
    .locals 0

    .line 407
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 408
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$400(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->hashEntrySet:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .param p2, "x1"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;

    .line 407
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 481
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    .line 482
    .local v0, "h":I
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->hashEntrySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 484
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    .line 486
    .local v3, "wk":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    if-nez v3, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {v3}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->hashCode()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    .local v6, "v":Ljava/lang/Object;
    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    xor-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 488
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;TV;>;"
    .end local v3    # "wk":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    .end local v6    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 489
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;TV;>;>;"
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 451
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 413
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 464
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$500(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)V

    .line 465
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 467
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 468
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 469
    .local v2, "ev":Ljava/lang/Object;
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$600(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    move-result-object v3

    .line 470
    .local v3, "wk":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$400(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 471
    .local v4, "hv":Ljava/lang/Object;
    if-nez v4, :cond_1

    if-nez v2, :cond_2

    iget-object v5, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-static {v5}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$400(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 472
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$400(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const/4 v1, 0x1

    return v1

    .line 475
    :cond_2
    return v1
.end method

.method public size()I
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 457
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    .line 458
    .local v0, "j":I
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 459
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    return v0
.end method
