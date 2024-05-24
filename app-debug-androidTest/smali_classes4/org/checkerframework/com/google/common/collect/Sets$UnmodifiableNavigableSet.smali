.class final Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;
.super Lorg/checkerframework/com/google/common/collect/ForwardingSortedSet;
.source "Sets.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnmodifiableNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final delegate:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient descendingSet:Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final unmodifiableDelegate:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 1777
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "delegate":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingSortedSet;-><init>()V

    .line 1778
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    .line 1779
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->unmodifiableDelegate:Ljava/util/SortedSet;

    .line 1780
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1821
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1772
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 1772
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .line 1772
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1784
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->unmodifiableDelegate:Ljava/util/SortedSet;

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1853
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1843
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->descendingSet:Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;

    .line 1844
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    if-nez v0, :cond_0

    .line 1845
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->descendingSet:Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;

    move-object v0, v1

    .line 1846
    iput-object p0, v0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->descendingSet:Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;

    .line 1848
    :cond_0
    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1816
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 1806
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1807
    return-void
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1865
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1826
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1811
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 1801
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1831
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1836
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1791
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 1796
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1859
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    .line 1860
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 1859
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1870
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;, "Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$UnmodifiableNavigableSet;->delegate:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
