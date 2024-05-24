.class Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableLongArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)V
    .locals 0
    .param p1, "parent"    # Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    .line 468
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 469
    iput-object p1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    .line 470
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$1;

    .line 465
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;-><init>(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .line 486
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->indexOf(Ljava/lang/Object;)I

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

    .line 512
    instance-of v0, p1, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;

    if-eqz v0, :cond_0

    .line 513
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;

    .line 514
    .local v0, "that":Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 517
    .end local v0    # "that":Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 518
    return v1

    .line 520
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 521
    .local v0, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 522
    return v1

    .line 524
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->access$100(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)I

    move-result v2

    .line 526
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 527
    .local v4, "element":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-static {v5}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->access$000(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)[J

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget-wide v7, v5, v2

    move-object v2, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_1

    .line 530
    .end local v4    # "element":Ljava/lang/Object;
    :cond_3
    move v2, v6

    goto :goto_0

    .line 528
    .end local v6    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "element":Ljava/lang/Object;
    :cond_4
    :goto_1
    return v1

    .line 531
    .end local v4    # "element":Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .line 481
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 491
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->indexOf(J)I

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

    .line 496
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->lastIndexOf(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 476
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->access$500(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)Ljava/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->subArray(II)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;->parent:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
