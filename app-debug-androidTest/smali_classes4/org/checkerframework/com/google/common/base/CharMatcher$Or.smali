.class final Lorg/checkerframework/com/google/common/base/CharMatcher$Or;
.super Lorg/checkerframework/com/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Or"
.end annotation


# instance fields
.field final first:Lorg/checkerframework/com/google/common/base/CharMatcher;

.field final second:Lorg/checkerframework/com/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/CharMatcher;Lorg/checkerframework/com/google/common/base/CharMatcher;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/com/google/common/base/CharMatcher;
    .param p2, "b"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1576
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;-><init>()V

    .line 1577
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/CharMatcher;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Or;->first:Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1578
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/CharMatcher;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Or;->second:Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1579
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1571
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1590
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Or;->first:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Or;->second:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

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

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1571
    invoke-super {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->negate()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .param p1, "table"    # Ljava/util/BitSet;

    .line 1584
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Or;->first:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 1585
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Or;->second:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 1586
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Or;->first:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Or;->second:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
