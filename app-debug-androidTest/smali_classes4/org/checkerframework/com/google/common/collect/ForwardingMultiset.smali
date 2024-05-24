.class public abstract Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;
.super Lorg/checkerframework/com/google/common/collect/ForwardingCollection;
.source "ForwardingMultiset.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ForwardingMultiset$StandardElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingCollection<",
        "TE;>;",
        "Lorg/checkerframework/com/google/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 61
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lorg/checkerframework/com/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 88
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .line 73
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->delegate()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardAdd(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->add(Ljava/lang/Object;I)I

    .line 157
    return v0
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "elementsToAdd":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets;->addAllImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .locals 1

    .line 128
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 129
    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 116
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected standardCount(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 140
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 141
    .local v1, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    return v0

    .line 144
    .end local v1    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 289
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets;->equalsImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .locals 1

    .line 300
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected standardIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Multisets;->iteratorImpl(Lorg/checkerframework/com/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 182
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets;->removeAllImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets;->retainAllImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 218
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multisets;->setCountImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/Multisets;->setCountImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardSize()I
    .locals 1

    .line 278
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Multisets;->linearTimeSizeImpl(Lorg/checkerframework/com/google/common/collect/Multiset;)I

    move-result v0

    return v0
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1

    .line 312
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;, "Lorg/checkerframework/com/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
