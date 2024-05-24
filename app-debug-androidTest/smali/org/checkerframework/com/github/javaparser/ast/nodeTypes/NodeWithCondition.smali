.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithCondition;
.super Ljava/lang/Object;
.source "NodeWithCondition.java"


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
.method public abstract getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.end method

.method public abstract setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation
.end method
