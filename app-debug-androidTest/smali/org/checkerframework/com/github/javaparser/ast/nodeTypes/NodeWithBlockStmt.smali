.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBlockStmt;
.super Ljava/lang/Object;
.source "NodeWithBlockStmt.java"


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
.method public createBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    .line 36
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBlockStmt;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBlockStmt<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    .line 37
    .local v0, "block":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBlockStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 38
    return-object v0
.end method

.method public abstract getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
.end method

.method public abstract setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "block"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ")TN;"
        }
    .end annotation
.end method
