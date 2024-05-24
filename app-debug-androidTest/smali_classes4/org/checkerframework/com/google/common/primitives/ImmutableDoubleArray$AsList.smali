.class Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)V
    .locals 0
    .param p1, "parent"    # Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    .line 471
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 472
    iput-object p1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    .line 473
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$1;

    .line 468
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .line 489
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    .line 515
    instance-of v0, p1, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;

    if-eqz v0, :cond_0

    .line 516
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;

    .line 517
    .local v0, "that":Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 520
    .end local v0    # "that":Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 521
    return v1

    .line 523
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 524
    .local v0, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 525
    return v1

    .line 527
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->access$100(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)I

    move-result v2

    .line 529
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 530
    .local v4, "element":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v5}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->access$000(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget-wide v7, v5, v2

    move-object v2, v4

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->access$600(DD)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v6

    goto :goto_1

    .line 533
    .end local v4    # "element":Ljava/lang/Object;
    :cond_3
    move v2, v6

    goto :goto_0

    .line 531
    .end local v6    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "element":Ljava/lang/Object;
    :cond_4
    :goto_1
    return v1

    .line 534
    .end local v4    # "element":Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I

    .line 484
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 468
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 494
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 499
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->lastIndexOf(D)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->access$500(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->subArray(II)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
