.class public final Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableList;
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
        "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field contents:[Ljava/lang/Object;

.field private forceCopy:Z

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 758
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 759
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 761
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 762
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    .line 763
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    .line 764
    return-void
.end method

.method private add([Ljava/lang/Object;I)V
    .locals 3
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "n"    # I

    .line 808
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->getReadyToExpandTo(I)V

    .line 809
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    .line 811
    return-void
.end method

.method private getReadyToExpandTo(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .line 767
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 768
    array-length v1, v0

    invoke-static {v1, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    .line 769
    iput-boolean v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->forceCopy:Z

    goto :goto_0

    .line 770
    :cond_0
    iget-boolean v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->forceCopy:Z

    if-eqz v1, :cond_1

    .line 771
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    .line 772
    iput-boolean v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->forceCopy:Z

    .line 774
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 748
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 748
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 786
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->getReadyToExpandTo(I)V

    .line 788
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    aput-object p1, v0, v1

    .line 789
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 802
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 803
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;I)V

    .line 804
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 748
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 748
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 823
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 825
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 826
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->getReadyToExpandTo(I)V

    .line 827
    instance-of v1, v0, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    if-eqz v1, :cond_0

    .line 828
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    .line 829
    .local v1, "immutableCollection":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<*>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v2

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    .line 830
    return-object p0

    .line 833
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "immutableCollection":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<*>;"
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 834
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 847
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 848
    return-object p0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1

    .line 748
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 863
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->forceCopy:Z

    .line 864
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 853
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p1, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->size:I

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;I)V

    .line 855
    return-object p0
.end method
