.class Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;
.super Ljava/util/ArrayList;
.source "ArraysPlume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/ArraysPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Partitioning"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/util/ArrayList<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x133c6b2L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3460
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<",
            "TT;>;)V"
        }
    .end annotation

    .line 3468
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    .local p1, "other":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3469
    return-void
.end method


# virtual methods
.method addToPart(ILjava/lang/Object;)Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<",
            "TT;>;"
        }
    .end annotation

    .line 3504
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    .local p2, "elt":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;-><init>(Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;)V

    .line 3505
    .local v0, "result":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;->size()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3506
    invoke-static {p2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->access$200(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3507
    .local v1, "newPart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;->add(Ljava/lang/Object;)Z

    .line 3508
    .end local v1    # "newPart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_0

    .line 3509
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3510
    .restart local v1    # "newPart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3511
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3513
    .end local v1    # "newPart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    return-object v0
.end method

.method isPartitioningFor(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 3492
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    .local p1, "elts":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;->partitionedSet()Ljava/util/List;

    move-result-object v0

    .line 3493
    .local v0, "ps":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method partitionedSet()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 3477
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3478
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3479
    .local v2, "part":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3480
    .end local v2    # "part":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_0

    .line 3481
    :cond_0
    return-object v0
.end method
