.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;
.super Ljava/lang/Object;
.source "NodeWithTypeArguments.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getTypeArguments()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;>;"
        }
    .end annotation
.end method

.method public isUsingDiamondOperator()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 62
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeTypeArguments()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<TN;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public setDiamondOperator()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public abstract setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;)TN;"
        }
    .end annotation
.end method

.method public varargs setTypeArguments([Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "typeArguments"    # [Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ")TN;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->nodeList([Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method
