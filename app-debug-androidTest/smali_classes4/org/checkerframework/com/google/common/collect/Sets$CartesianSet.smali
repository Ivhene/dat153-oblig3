.class final Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;
.super Lorg/checkerframework/com/google/common/collect/ForwardingCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingCollection<",
        "Ljava/util/List<",
        "TE;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final transient delegate:Lorg/checkerframework/com/google/common/collect/CartesianList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/CartesianList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/CartesianList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TE;>;>;",
            "Lorg/checkerframework/com/google/common/collect/CartesianList<",
            "TE;>;)V"
        }
    .end annotation

    .line 1420
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;, "Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet<TE;>;"
    .local p1, "axes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/ImmutableSet<TE;>;>;"
    .local p2, "delegate":Lorg/checkerframework/com/google/common/collect/CartesianList;, "Lorg/checkerframework/com/google/common/collect/CartesianList<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingCollection;-><init>()V

    .line 1421
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 1422
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->delegate:Lorg/checkerframework/com/google/common/collect/CartesianList;

    .line 1423
    return-void
.end method

.method static create(Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TE;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1391
    .local p0, "sets":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Set<+TE;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 1392
    .local v0, "axesBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Lorg/checkerframework/com/google/common/collect/ImmutableSet<TE;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1393
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 1394
    .local v3, "copy":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1395
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 1397
    :cond_0
    invoke-virtual {v0, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 1398
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .end local v3    # "copy":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<TE;>;"
    goto :goto_0

    .line 1399
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1400
    .local v1, "axes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/ImmutableSet<TE;>;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet$1;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    .line 1417
    .local v2, "listAxes":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Ljava/util/List<TE;>;>;"
    new-instance v3, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;

    new-instance v4, Lorg/checkerframework/com/google/common/collect/CartesianList;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/google/common/collect/CartesianList;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    invoke-direct {v3, v1, v4}, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/CartesianList;)V

    return-object v3
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1385
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;, "Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;, "Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->delegate:Lorg/checkerframework/com/google/common/collect/CartesianList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 1434
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;, "Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet<TE;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;

    if-eqz v0, :cond_0

    .line 1435
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;

    .line 1436
    .local v0, "that":Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;, "Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1438
    .end local v0    # "that":Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;, "Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet<*>;"
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1447
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;, "Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1448
    .local v0, "adjust":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1449
    mul-int/lit8 v0, v0, 0x1f

    .line 1450
    not-int v2, v0

    not-int v0, v2

    .line 1448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    .line 1454
    .local v1, "hash":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->axes:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1455
    .local v3, "axis":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    mul-int/lit8 v4, v1, 0x1f

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$CartesianSet;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    div-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1457
    .end local v1    # "hash":I
    .local v4, "hash":I
    not-int v1, v4

    not-int v1, v1

    .line 1458
    .end local v3    # "axis":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .end local v4    # "hash":I
    .restart local v1    # "hash":I
    goto :goto_1

    .line 1459
    :cond_1
    add-int/2addr v1, v0

    .line 1460
    not-int v2, v1

    not-int v2, v2

    return v2
.end method
