.class public interface abstract Lorg/checkerframework/com/github/javaparser/HasParentNode;
.super Ljava/lang/Object;
.source "HasParentNode.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$findAncestor$0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "x"
        }
    .end annotation

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$isDescendantOf$1(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p0, "ancestor"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "ancestor",
            "n"
        }
    .end annotation

    .line 91
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public findAncestor(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/HasParentNode;, "Lorg/checkerframework/com/github/javaparser/HasParentNode<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/HasParentNode$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/HasParentNode$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/HasParentNode;->findAncestor(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findAncestor(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Ljava/util/function/Predicate<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/HasParentNode;, "Lorg/checkerframework/com/github/javaparser/HasParentNode<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/HasParentNode;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    .line 72
    .local v0, "possibleParent":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 74
    .local v1, "parent":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 77
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    .line 78
    .end local v1    # "parent":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public abstract getParentNode()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;
.end method

.method public isDescendantOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "ancestor"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ancestor"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/HasParentNode;, "Lorg/checkerframework/com/github/javaparser/HasParentNode<TT;>;"
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/HasParentNode$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/HasParentNode$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/HasParentNode;->findAncestor(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public abstract setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ")TT;"
        }
    .end annotation
.end method
