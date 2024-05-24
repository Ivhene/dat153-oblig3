.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST;
.super Ljava/lang/Object;
.source "AssociableToAST.java"


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
.method public toAst()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST;, "Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST<TN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
