.class final Lorg/checkerframework/com/google/common/collect/Multisets$1;
.super Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Multisets;->union(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$multiset1:Lorg/checkerframework/com/google/common/collect/Multiset;

.field final synthetic val$multiset2:Lorg/checkerframework/com/google/common/collect/Multiset;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset1:Lorg/checkerframework/com/google/common/collect/Multiset;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset2:Lorg/checkerframework/com/google/common/collect/Multiset;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/Multisets$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset1:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset2:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

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

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset1:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset2:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
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

    .line 430
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset1:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset2:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/com/google/common/collect/Sets$SetView;

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

    .line 435
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset1:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 441
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/google/common/collect/Multiset$Entry<+TE;>;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset2:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 443
    .local v1, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/google/common/collect/Multiset$Entry<+TE;>;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/Multisets$1$1;-><init>(Lorg/checkerframework/com/google/common/collect/Multisets$1;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset1:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$1;->val$multiset2:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method