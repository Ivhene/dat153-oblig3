.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final NATURAL_EMPTY_SET:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    .line 44
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "elements":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 50
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 51
    return-void
.end method

.method private unsafeBinarySearch(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    .line 237
    .local v0, "index":I
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->unsafeBinarySearch(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0

    .line 97
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 110
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_3

    .line 120
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 122
    .local v0, "thisIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    .local v2, "thatIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 126
    return v4

    .line 129
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 130
    .local v3, "target":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 133
    .local v5, "current":Ljava/lang/Object;, "TE;"
    :goto_0
    :try_start_0
    invoke-virtual {p0, v5, v3}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 135
    .local v6, "cmp":I
    if-gez v6, :cond_4

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 137
    return v4

    .line 139
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    goto :goto_1

    .line 140
    :cond_4
    if-nez v6, :cond_6

    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 142
    return v1

    .line 144
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    goto :goto_1

    .line 146
    :cond_6
    if-lez v6, :cond_7

    .line 147
    return v4

    .line 149
    .end local v6    # "cmp":I
    :cond_7
    :goto_1
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_2
    return v4

    .line 113
    .end local v0    # "thisIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "thatIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "target":Ljava/lang/Object;
    .end local v5    # "current":Ljava/lang/Object;, "TE;"
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 166
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedAsList;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    :goto_0
    return-object v0
.end method

.method createDescendingSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 321
    .local v0, "reversedOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 323
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 321
    :goto_0
    return-object v1
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 40
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->descendingIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 171
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 172
    return v0

    .line 174
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 175
    return v2

    .line 178
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 179
    .local v1, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 180
    return v2

    .line 181
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    return v0

    .line 185
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v1}, Lorg/checkerframework/com/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 186
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 188
    .local v3, "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    .line 189
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 190
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 191
    .local v5, "element":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 192
    .local v6, "otherElement":Ljava/lang/Object;
    if-eqz v6, :cond_5

    invoke-virtual {p0, v5, v6}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    goto :goto_1

    .line 195
    .end local v5    # "element":Ljava/lang/Object;
    .end local v6    # "otherElement":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 193
    .restart local v5    # "element":Ljava/lang/Object;
    .restart local v6    # "otherElement":Ljava/lang/Object;
    :cond_5
    :goto_1
    return v2

    .line 196
    .end local v5    # "element":Ljava/lang/Object;
    .end local v6    # "otherElement":Ljava/lang/Object;
    :cond_6
    return v0

    .line 199
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/util/NoSuchElementException;
    return v2

    .line 197
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/ClassCastException;
    return v2

    .line 203
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v3    # "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_7
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    sub-int/2addr v1, v0

    .line 231
    .local v1, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    .line 87
    return-void
.end method

.method getSubSet(II)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;
    .locals 3
    .param p1, "newFromIndex"    # I
    .param p2, "newToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 290
    return-object p0

    .line 291
    :cond_0
    if-ge p1, p2, :cond_1

    .line 292
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 293
    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->subList(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 292
    return-object v0

    .line 295
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method headIndex(Ljava/lang/Object;Z)I
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 253
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 254
    if-eqz p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 256
    :cond_1
    not-int v1, v0

    return v1
.end method

.method headSetImpl(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    .line 243
    .local v0, "index":I
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 301
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 302
    return v0

    .line 306
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .local v1, "position":I
    nop

    .line 310
    if-ltz v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 307
    .end local v1    # "position":I
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    .line 55
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->internalArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->internalArrayEnd()I

    move-result v0

    return v0
.end method

.method internalArrayStart()I
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->internalArrayStart()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 161
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 40
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 225
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 91
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailIndex(Ljava/lang/Object;Z)I
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .line 272
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->elements:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 273
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 274
    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1

    .line 276
    :cond_1
    not-int v1, v0

    return v1
.end method

.method tailSetImpl(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method unsafeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method
