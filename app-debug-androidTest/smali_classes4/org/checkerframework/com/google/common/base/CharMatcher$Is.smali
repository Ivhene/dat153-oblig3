.class final Lorg/checkerframework/com/google/common/base/CharMatcher$Is;
.super Lorg/checkerframework/com/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Is"
.end annotation


# instance fields
.field private final match:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "match"    # C

    .line 1606
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1607
    iput-char p1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->match:C

    .line 1608
    return-void
.end method


# virtual methods
.method public and(Lorg/checkerframework/com/google/common/base/CharMatcher;)Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1622
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->match:C

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->none()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1612
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->match:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1602
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->negate()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 1

    .line 1632
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->match:C

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->isNot(C)Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lorg/checkerframework/com/google/common/base/CharMatcher;)Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1627
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->match:C

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher$FastMatcher;->or(Lorg/checkerframework/com/google/common/base/CharMatcher;)Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .line 1617
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->match:C

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .param p1, "table"    # Ljava/util/BitSet;

    .line 1638
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->match:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1639
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Is;->match:C

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method