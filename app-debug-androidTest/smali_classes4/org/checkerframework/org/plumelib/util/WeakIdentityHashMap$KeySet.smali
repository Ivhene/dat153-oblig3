.class Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V
    .locals 0

    .line 788
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
    .param p2, "x1"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;

    .line 788
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 816
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->clear()V

    .line 817
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 803
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 791
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 808
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const/4 v0, 0x1

    return v0

    .line 811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 797
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 821
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 822
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
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

    .line 828
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 829
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 830
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
