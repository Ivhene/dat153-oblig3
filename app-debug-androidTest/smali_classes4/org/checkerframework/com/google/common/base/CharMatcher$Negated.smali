.class Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;
.super Lorg/checkerframework/com/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Negated"
.end annotation


# instance fields
.field final original:Lorg/checkerframework/com/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/CharMatcher;)V
    .locals 1
    .param p1, "original"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1493
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;-><init>()V

    .line 1494
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/CharMatcher;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->original:Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 1495
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1489
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 1514
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->original:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1499
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->original:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 1504
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->original:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 1509
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->original:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1489
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->negate()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 1

    .line 1528
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->original:Lorg/checkerframework/com/google/common/base/CharMatcher;

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 3
    .param p1, "table"    # Ljava/util/BitSet;

    .line 1520
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1521
    .local v0, "tmp":Ljava/util/BitSet;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->original:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 1522
    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->flip(II)V

    .line 1523
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1524
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$Negated;->original:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
