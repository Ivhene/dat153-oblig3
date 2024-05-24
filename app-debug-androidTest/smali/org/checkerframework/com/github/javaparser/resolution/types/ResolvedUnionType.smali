.class public Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;
.super Ljava/lang/Object;
.source "ResolvedUnionType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;->elements:Ljava/util/List;

    .line 40
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An union type should have at least two elements. This has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$getCommonAncestor$0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "a"    # Ljava/util/List;
    .param p1, "b"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v0, "common":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 49
    return-object v0
.end method

.method static synthetic lambda$isAssignableBy$1(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .param p0, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .param p1, "e"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "other",
            "e"
        }
    .end annotation

    .line 76
    invoke-interface {p1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public asUnionType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;
    .locals 0

    .line 86
    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const-string v1, " | "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 56
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;

    .line 61
    .local v0, "that":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;->elements:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;->elements:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 57
    .end local v0    # "that":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCommonAncestor()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType$$ExternalSyntheticLambda0;-><init>()V

    .line 44
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType$$ExternalSyntheticLambda1;-><init>()V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType$$ExternalSyntheticLambda2;-><init>()V

    .line 46
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    .line 51
    .local v0, "reduce":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 66
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;->elements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedUnionType$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isUnionType()Z
    .locals 1

    .line 81
    const/4 v0, 0x1

    return v0
.end method
