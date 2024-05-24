.class abstract Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;
.super Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 970
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;, "Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 975
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;, "Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;->multiset()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->clear()V

    .line 976
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 980
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;, "Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;->multiset()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 985
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;, "Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;->multiset()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 990
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;, "Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;->multiset()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method abstract multiset()Lorg/checkerframework/com/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 998
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;, "Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;->multiset()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 1003
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;, "Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;->multiset()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
