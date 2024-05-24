.class Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V
    .locals 0

    .line 853
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
    .param p2, "x1"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;

    .line 853
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 873
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->clear()V

    .line 874
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 868
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 856
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.Values;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$ValueIterator;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$ValueIterator;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 862
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 878
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 879
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 880
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 885
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 886
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 887
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
