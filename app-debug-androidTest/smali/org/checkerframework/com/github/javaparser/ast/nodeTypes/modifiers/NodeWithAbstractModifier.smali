.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;
.super Ljava/lang/Object;
.source "NodeWithAbstractModifier.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<",
        "TN;>;"
    }
.end annotation


# virtual methods
.method public isAbstract()Z
    .locals 1

    .line 13
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier<TN;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public setAbstract(Z)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TN;"
        }
    .end annotation

    .line 18
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier<TN;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;->setModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Z)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method
