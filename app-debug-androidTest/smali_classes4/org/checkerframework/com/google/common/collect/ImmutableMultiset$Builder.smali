.class public Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
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
        "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final contents:Lorg/checkerframework/com/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 466
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V

    .line 467
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 469
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "contents":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 470
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 471
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 458
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 458
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 483
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 484
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 498
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 458
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 458
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 545
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    .line 546
    .local v0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;)V

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->forEachEntry(Ljava/util/function/ObjIntConsumer;)V

    .line 547
    .end local v0    # "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    goto :goto_0

    .line 548
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 550
    :goto_0
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 563
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 564
    return-object p0
.end method

.method public addCopies(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 514
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 515
    return-object p0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1

    .line 458
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method buildJdkBacked()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 578
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0

    .line 581
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/JdkBackedImmutableMultiset;->create(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$addAll$0$org-checkerframework-com-google-common-collect-ImmutableMultiset$Builder(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "n"    # I

    .line 546
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method public setCount(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->contents:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 531
    return-object p0
.end method
