.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.super Ljava/lang/Object;
.source "NodeWithSimpleName.java"


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
.method public abstract getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
.end method

.method public getNameAsExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    .locals 2

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    return-object v0
.end method

.method public getNameAsString()Ljava/lang/String;
    .locals 1

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public abstract setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            ")TN;"
        }
    .end annotation
.end method
