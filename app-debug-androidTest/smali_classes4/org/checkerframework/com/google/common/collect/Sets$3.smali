.class final Lorg/checkerframework/com/google/common/collect/Sets$3;
.super Lorg/checkerframework/com/google/common/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/com/google/common/collect/Sets$SetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Sets$SetView<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Sets$SetView;-><init>(Lorg/checkerframework/com/google/common/collect/Sets$1;)V

    return-void
.end method

.method static synthetic lambda$parallelStream$1(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "set2"    # Ljava/util/Set;
    .param p1, "e"    # Ljava/lang/Object;

    .line 925
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$stream$0(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "set2"    # Ljava/util/Set;
    .param p1, "e"    # Ljava/lang/Object;

    .line 920
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 946
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 941
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 899
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$3;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

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

    .line 902
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Sets$3$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Sets$3$1;-><init>(Lorg/checkerframework/com/google/common/collect/Sets$3;)V

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    new-instance v2, Lorg/checkerframework/com/google/common/collect/Sets$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/google/common/collect/Sets$3$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "size":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 932
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 933
    add-int/lit8 v0, v0, 0x1

    .line 935
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 936
    :cond_1
    return v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    new-instance v2, Lorg/checkerframework/com/google/common/collect/Sets$3$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/google/common/collect/Sets$3$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method