.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;
.super Ljava/lang/Object;
.source "SwitchNode.java"


# virtual methods
.method public abstract clone()Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;
.end method

.method public abstract getComment()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntry(I)Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method

.method public abstract getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.end method

.method public isEmpty()Z
    .locals 1

    .line 37
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation
.end method

.method public abstract replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation
.end method

.method public abstract setEntries(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;"
        }
    .end annotation
.end method

.method public abstract setSelector(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation
.end method
