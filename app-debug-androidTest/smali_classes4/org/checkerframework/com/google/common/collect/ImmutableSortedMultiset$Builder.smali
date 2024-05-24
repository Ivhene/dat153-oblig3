.class public Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
.source "ImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<",
        "TE;>;"
    }
.end annotation


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

    .line 454
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/TreeMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V

    .line 455
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    .line 468
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 481
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    .line 482
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    .line 531
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    .line 545
    return-object p0
.end method

.method public bridge synthetic addCopies(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addCopies(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 0
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    .line 500
    return-object p0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 554
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOfSorted(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 0

    .line 448
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->setCount(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCount(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 0
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->setCount(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    .line 517
    return-object p0
.end method
