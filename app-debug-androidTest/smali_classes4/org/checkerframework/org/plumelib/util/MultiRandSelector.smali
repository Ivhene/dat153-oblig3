.class public Lorg/checkerframework/org/plumelib/util/MultiRandSelector;
.super Ljava/lang/Object;
.source "MultiRandSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private coinTossMode:Z

.field private eq:Lorg/checkerframework/org/plumelib/util/Partitioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/Partitioner<",
            "TT;TT;>;"
        }
    .end annotation
.end field

.field private keepProbability:D

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lorg/checkerframework/org/plumelib/util/RandomSelector<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private numElts:I

.field private r:Ljava/util/Random;


# direct methods
.method public constructor <init>(DLjava/util/Random;Lorg/checkerframework/org/plumelib/util/Partitioner;)V
    .locals 1
    .param p1, "keepProbability"    # D
    .param p3, "r"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Random;",
            "Lorg/checkerframework/org/plumelib/util/Partitioner<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/MultiRandSelector;, "Lorg/checkerframework/org/plumelib/util/MultiRandSelector<TT;>;"
    .local p4, "eq":Lorg/checkerframework/org/plumelib/util/Partitioner;, "Lorg/checkerframework/org/plumelib/util/Partitioner<TT;TT;>;"
    invoke-direct {p0, p3, p4}, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;-><init>(Ljava/util/Random;Lorg/checkerframework/org/plumelib/util/Partitioner;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->coinTossMode:Z

    .line 90
    iput-wide p1, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->keepProbability:D

    .line 91
    return-void
.end method

.method public constructor <init>(DLorg/checkerframework/org/plumelib/util/Partitioner;)V
    .locals 1
    .param p1, "keepProbability"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/checkerframework/org/plumelib/util/Partitioner<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/MultiRandSelector;, "Lorg/checkerframework/org/plumelib/util/MultiRandSelector<TT;>;"
    .local p3, "eq":Lorg/checkerframework/org/plumelib/util/Partitioner;, "Lorg/checkerframework/org/plumelib/util/Partitioner<TT;TT;>;"
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;-><init>(DLjava/util/Random;Lorg/checkerframework/org/plumelib/util/Partitioner;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/util/Random;Lorg/checkerframework/org/plumelib/util/Partitioner;)V
    .locals 1
    .param p1, "numElts"    # I
    .param p2, "r"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Random;",
            "Lorg/checkerframework/org/plumelib/util/Partitioner<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/MultiRandSelector;, "Lorg/checkerframework/org/plumelib/util/MultiRandSelector<TT;>;"
    .local p3, "eq":Lorg/checkerframework/org/plumelib/util/Partitioner;, "Lorg/checkerframework/org/plumelib/util/Partitioner<TT;TT;>;"
    invoke-direct {p0, p2, p3}, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;-><init>(Ljava/util/Random;Lorg/checkerframework/org/plumelib/util/Partitioner;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->coinTossMode:Z

    .line 76
    iput p1, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->numElts:I

    .line 77
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/plumelib/util/Partitioner;)V
    .locals 1
    .param p1, "numElts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/org/plumelib/util/Partitioner<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/MultiRandSelector;, "Lorg/checkerframework/org/plumelib/util/MultiRandSelector<TT;>;"
    .local p2, "eq":Lorg/checkerframework/org/plumelib/util/Partitioner;, "Lorg/checkerframework/org/plumelib/util/Partitioner<TT;TT;>;"
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;-><init>(ILjava/util/Random;Lorg/checkerframework/org/plumelib/util/Partitioner;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/util/Random;Lorg/checkerframework/org/plumelib/util/Partitioner;)V
    .locals 2
    .param p1, "r"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Random;",
            "Lorg/checkerframework/org/plumelib/util/Partitioner<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/MultiRandSelector;, "Lorg/checkerframework/org/plumelib/util/MultiRandSelector<TT;>;"
    .local p2, "eq":Lorg/checkerframework/org/plumelib/util/Partitioner;, "Lorg/checkerframework/org/plumelib/util/Partitioner<TT;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->numElts:I

    .line 35
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->keepProbability:D

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->map:Ljava/util/HashMap;

    .line 100
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->r:Ljava/util/Random;

    .line 101
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->eq:Lorg/checkerframework/org/plumelib/util/Partitioner;

    .line 102
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/MultiRandSelector;, "Lorg/checkerframework/org/plumelib/util/MultiRandSelector<TT;>;"
    .local p1, "next":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->eq:Lorg/checkerframework/org/plumelib/util/Partitioner;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/plumelib/util/Partitioner;->assignToBucket(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "equivClass":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/plumelib/util/RandomSelector;

    .line 126
    .local v1, "delegation":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    if-nez v1, :cond_2

    .line 127
    iget-boolean v2, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->coinTossMode:Z

    if-eqz v2, :cond_1

    new-instance v2, Lorg/checkerframework/org/plumelib/util/RandomSelector;

    iget-wide v3, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->keepProbability:D

    iget-object v5, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->r:Ljava/util/Random;

    invoke-direct {v2, v3, v4, v5}, Lorg/checkerframework/org/plumelib/util/RandomSelector;-><init>(DLjava/util/Random;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/checkerframework/org/plumelib/util/RandomSelector;

    iget v3, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->numElts:I

    iget-object v4, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->r:Ljava/util/Random;

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/org/plumelib/util/RandomSelector;-><init>(ILjava/util/Random;)V

    :goto_0
    move-object v1, v2

    .line 131
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_2
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/plumelib/util/RandomSelector;->accept(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public acceptIter(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/MultiRandSelector;, "Lorg/checkerframework/org/plumelib/util/MultiRandSelector<TT;>;"
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public valuesIter()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/MultiRandSelector;, "Lorg/checkerframework/org/plumelib/util/MultiRandSelector<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/MultiRandSelector;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/util/RandomSelector;

    .line 152
    .local v2, "rs":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    invoke-virtual {v2}, Lorg/checkerframework/org/plumelib/util/RandomSelector;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    .end local v2    # "rs":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
