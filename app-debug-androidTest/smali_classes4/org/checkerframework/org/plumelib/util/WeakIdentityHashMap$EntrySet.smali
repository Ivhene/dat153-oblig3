.class Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V
    .locals 0

    .line 909
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
    .param p2, "x1"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;

    .line 909
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 938
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->clear()V

    .line 939
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 918
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 919
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 920
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 921
    .local v2, "k":Ljava/lang/Object;
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getEntry(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v3

    .line 922
    .local v3, "candidate":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
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

    .line 912
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 927
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->removeMapping(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 933
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 943
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 944
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    new-instance v2, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 946
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 951
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 952
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    new-instance v2, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 954
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
