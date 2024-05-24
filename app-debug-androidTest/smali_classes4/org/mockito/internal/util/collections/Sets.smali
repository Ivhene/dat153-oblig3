.class public abstract Lorg/mockito/internal/util/collections/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newMockSafeHashSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    .local p0, "mocks":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    invoke-static {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->of(Ljava/lang/Iterable;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p0, "mocks"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->of([Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 22
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    .line 26
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected an array of elements (or empty array) but received a null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
