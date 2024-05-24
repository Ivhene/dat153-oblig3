.class public abstract Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "T",
        "L;",
        "TR;>;",
        "Ljava/lang/Comparable<",
        "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<",
        "T",
        "L;",
        "TR;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 59
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    check-cast p1, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->compareTo(Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<",
            "T",
            "L;",
            "TR;>;)I"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    .local p1, "other":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    .line 117
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 129
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 130
    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 133
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    .local v1, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 134
    :goto_0
    return v0

    .line 137
    .end local v1    # "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_2
    return v2
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLeft()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getRight()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 149
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 150
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 149
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .line 175
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;, "Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair<TL;TR;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method