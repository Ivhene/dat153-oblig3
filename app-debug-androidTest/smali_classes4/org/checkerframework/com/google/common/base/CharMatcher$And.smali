.class final Lorg/checkerframework/com/google/common/base/CharMatcher$And;
.super Lorg/checkerframework/com/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "And"
.end annotation


# instance fields
.field final first:Lorg/checkerframework/com/google/common/base/CharMatcher;

.field final second:Lorg/checkerframework/com/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/CharMatcher;Lorg/checkerframework/com/google/common/base/CharMatcher;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/com/google/common/base/CharMatcher;
    .param p2, "b"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1543
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;-><init>()V

    .line 1544
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/CharMatcher;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$And;->first:Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1545
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/CharMatcher;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$And;->second:Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1546
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1538
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1550
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$And;->first:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$And;->second:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1538
    invoke-super {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->negate()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 3
    .param p1, "table"    # Ljava/util/BitSet;

    .line 1556
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1557
    .local v0, "tmp1":Ljava/util/BitSet;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$And;->first:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 1558
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 1559
    .local v1, "tmp2":Ljava/util/BitSet;
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$And;->second:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 1560
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 1561
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1562
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.and("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$And;->first:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$And;->second:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
