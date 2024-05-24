.class public final Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;-><init>(Z)V

    .line 438
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    .line 439
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    .line 441
    return-void
.end method

.method private sortAndDedup()V
    .locals 6

    .line 449
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-nez v0, :cond_0

    .line 450
    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 453
    const/4 v0, 0x1

    .line 454
    .local v0, "unique":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-ge v1, v2, :cond_3

    .line 455
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v3, v4

    aget-object v3, v3, v1

    invoke-interface {v2, v4, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 456
    .local v2, "cmp":I
    if-gez v2, :cond_1

    .line 457
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "unique":I
    .local v4, "unique":I
    aget-object v5, v3, v1

    aput-object v5, v3, v0

    move v0, v4

    goto :goto_1

    .line 458
    .end local v4    # "unique":I
    .restart local v0    # "unique":I
    :cond_1
    if-gtz v2, :cond_2

    .line 454
    .end local v2    # "cmp":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .restart local v2    # "cmp":I
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Comparator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " compare method violates its contract"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 463
    .end local v1    # "i":I
    .end local v2    # "cmp":I
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 464
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    .line 465
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->copyIfNecessary()V

    .line 481
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 482
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->sortAndDedup()V

    .line 488
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    .line 489
    .local v0, "newLength":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 490
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 493
    .end local v0    # "newLength":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    aput-object p1, v0, v1

    .line 494
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 508
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 509
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 510
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    .line 509
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 526
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    .line 527
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 541
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    .line 542
    return-object p0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 562
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->sortAndDedup()V

    .line 563
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 566
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->forceCopy:Z

    .line 567
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    .line 568
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 567
    return-object v0
.end method

.method bridge synthetic combine(Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 548
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->copyIfNecessary()V

    .line 549
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    .line 550
    .local v0, "other":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-ge v1, v2, :cond_0

    .line 551
    iget-object v2, v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method copy()V
    .locals 2

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 446
    return-void
.end method
