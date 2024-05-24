.class public final Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
.super Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$SerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;,
        Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;,
        Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient complement:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private final transient ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 54
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 56
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 57
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ALL:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 56
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "ranges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;-><init>()V

    .line 141
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 142
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "ranges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    .local p2, "complement":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 146
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->complement:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 50
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static all()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 95
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ALL:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static builder()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 709
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 125
    .local p0, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 100
    .local p0, "rangeSet":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/RangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/google/common/collect/RangeSet;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->all()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    if-eqz v0, :cond_2

    .line 108
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 109
    .local v0, "immutableRangeSet":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    return-object v0

    .line 113
    .end local v0    # "immutableRangeSet":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    :cond_2
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method private intersectRanges(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 421
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 423
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->span()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0

    .line 428
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 432
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->upperBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    sget-object v3, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 430
    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .local v0, "fromIndex":I
    goto :goto_0

    .line 437
    .end local v0    # "fromIndex":I
    :cond_2
    const/4 v0, 0x0

    .line 441
    .restart local v0    # "fromIndex":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 445
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 443
    invoke-static {v1, v2, v3, v4, v5}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Comparable;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    .local v1, "toIndex":I
    goto :goto_1

    .line 450
    .end local v1    # "toIndex":I
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 452
    .restart local v1    # "toIndex":I
    :goto_1
    sub-int v2, v1, v0

    .line 453
    .local v2, "length":I
    if-nez v2, :cond_4

    .line 454
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3

    .line 456
    :cond_4
    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;

    invoke-direct {v3, p0, v2, v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$1;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;IILorg/checkerframework/com/google/common/collect/Range;)V

    return-object v3

    .line 422
    .end local v0    # "fromIndex":I
    .end local v1    # "toIndex":I
    .end local v2    # "length":I
    :cond_5
    :goto_2
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static of(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 82
    .local p0, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->all()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static toImmutableRangeSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TE;>;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/CollectCollectors;->toImmutableRangeSet()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static unionOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 137
    .local p0, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->create(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->copyOf(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asDescendingSetOfRanges()Ljava/util/Set;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->asDescendingSetOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asDescendingSetOfRanges()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->rangeLexOrdering()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->asRanges()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asRanges()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->rangeLexOrdering()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public asSet(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 514
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "domain":Lorg/checkerframework/com/google/common/collect/DiscreteDomain;, "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->span()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->canonical(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 519
    .local v0, "span":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 526
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    :goto_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$AsSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V

    return-object v1

    .line 522
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->complement:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    .line 362
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    if-eqz v0, :cond_0

    .line 363
    return-object v0

    .line 364
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->all()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->complement:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    return-object v1

    .line 366
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->all()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->complement:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    return-object v1

    .line 369
    :cond_2
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$ComplementRanges;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)V

    .line 370
    .local v1, "complementRanges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-direct {v2, v1, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;)V

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->complement:Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-object v0, v2

    .line 372
    .end local v1    # "complementRanges":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    return-object v0
.end method

.method public bridge synthetic complement()Lorg/checkerframework/com/google/common/collect/RangeSet;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->complement()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public difference(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->create(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 412
    .local v0, "copy":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/RangeSet;->removeAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V

    .line 413
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->copyOf(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    return-object v1
.end method

.method public encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "otherRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 176
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 178
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 174
    invoke-static/range {v0 .. v5}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 181
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic enclosesAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)Z
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->enclosesAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public intersection(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 397
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeSet;->create(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 398
    .local v0, "copy":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/RangeSet;->complement()Lorg/checkerframework/com/google/common/collect/RangeSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/RangeSet;->removeAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V

    .line 399
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->copyOf(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    return-object v1
.end method

.method public intersects(Lorg/checkerframework/com/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "otherRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 156
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 158
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 154
    invoke-static/range {v0 .. v5}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 161
    .local v0, "ceilingIndex":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 162
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 163
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    return v2

    .line 166
    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    add-int/lit8 v3, v0, -0x1

    .line 167
    invoke-virtual {v1, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    add-int/lit8 v3, v0, -0x1

    .line 168
    invoke-virtual {v1, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 166
    :goto_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 211
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 704
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 189
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundFn()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    .line 190
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v2

    .line 191
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 187
    invoke-static/range {v0 .. v5}, Lorg/checkerframework/com/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lorg/checkerframework/com/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyPresentBehavior;Lorg/checkerframework/com/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 194
    .local v0, "index":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    .line 196
    .local v1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_0
    return-object v2

    .line 198
    .end local v1    # "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_1
    return-object v2
.end method

.method public remove(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/checkerframework/com/google/common/collect/Range<TC;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Lorg/checkerframework/com/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public span()Lorg/checkerframework/com/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeSet(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 483
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->span()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 485
    .local v0, "span":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    return-object p0

    .line 487
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->intersectRanges(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v1

    .line 491
    .end local v0    # "span":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TC;>;"
    :cond_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subRangeSet(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/RangeSet;
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->subRangeSet(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public union(Lorg/checkerframework/com/google/common/collect/RangeSet;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/RangeSet;, "Lorg/checkerframework/com/google/common/collect/RangeSet<TC;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->asRanges()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->unionOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 828
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet<TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$SerializedForm;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet;->ranges:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableRangeSet$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v0
.end method
