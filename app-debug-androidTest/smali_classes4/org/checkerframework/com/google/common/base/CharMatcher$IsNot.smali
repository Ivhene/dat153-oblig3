.class final Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;
.super Lorg/checkerframework/com/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsNot"
.end annotation


# instance fields
.field private final match:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "match"    # C

    .line 1652
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1653
    iput-char p1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->match:C

    .line 1654
    return-void
.end method


# virtual methods
.method public and(Lorg/checkerframework/com/google/common/base/CharMatcher;)Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1663
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher$FastMatcher;->and(Lorg/checkerframework/com/google/common/base/CharMatcher;)Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1658
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->match:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1648
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->negate()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 1

    .line 1680
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->match:C

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->is(C)Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lorg/checkerframework/com/google/common/base/CharMatcher;)Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1668
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->any()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .param p1, "table"    # Ljava/util/BitSet;

    .line 1674
    const/4 v0, 0x0

    iget-char v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 1675
    iget-char v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->match:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 1676
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.isNot(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$IsNot;->match:C

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
