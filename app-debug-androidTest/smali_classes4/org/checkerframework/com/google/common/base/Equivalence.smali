.class public abstract Lorg/checkerframework/com/google/common/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Ljava/util/function/BiPredicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/base/Equivalence$Identity;,
        Lorg/checkerframework/com/google/common/base/Equivalence$Equals;,
        Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;,
        Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiPredicate<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals()Lorg/checkerframework/com/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 322
    sget-object v0, Lorg/checkerframework/com/google/common/base/Equivalence$Equals;->INSTANCE:Lorg/checkerframework/com/google/common/base/Equivalence$Equals;

    return-object v0
.end method

.method public static identity()Lorg/checkerframework/com/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 334
    sget-object v0, Lorg/checkerframework/com/google/common/base/Equivalence$Identity;->INSTANCE:Lorg/checkerframework/com/google/common/base/Equivalence$Identity;

    return-object v0
.end method


# virtual methods
.method protected abstract doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method protected abstract doHash(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_0

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Equivalence;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 63
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equivalentTo(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;-><init>(Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hash(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Equivalence;->doHash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onResultOf(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TF;+TT;>;)",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "TF;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TF;+TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/FunctionalEquivalence;

    invoke-direct {v0, p1, p0}, Lorg/checkerframework/com/google/common/base/FunctionalEquivalence;-><init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Equivalence;)V

    return-object v0
.end method

.method public final pairwise()Lorg/checkerframework/com/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Iterable<",
            "TS;>;>;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/PairwiseEquivalence;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/PairwiseEquivalence;-><init>(Lorg/checkerframework/com/google/common/base/Equivalence;)V

    return-object v0
.end method

.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final wrap(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(TS;)",
            "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<",
            "TS;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    .local p1, "reference":Ljava/lang/Object;, "TS;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;-><init>(Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/lang/Object;Lorg/checkerframework/com/google/common/base/Equivalence$1;)V

    return-object v0
.end method
