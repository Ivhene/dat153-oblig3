.class final Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;
.super Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilteredMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lorg/checkerframework/com/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    .local p1, "unfiltered":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p2, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/Multisets$1;)V

    .line 317
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 318
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Predicate;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 319
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 3
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 366
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 367
    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 366
    const-string v2, "Element %s does not match predicate %s"

    invoke-static {v0, v2, p1, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 355
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 356
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 358
    move-object v2, p1

    .line 359
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 361
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v1
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 339
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset$1;-><init>(Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;)V

    .line 338
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 312
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 323
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .line 373
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 374
    if-nez p2, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 377
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
