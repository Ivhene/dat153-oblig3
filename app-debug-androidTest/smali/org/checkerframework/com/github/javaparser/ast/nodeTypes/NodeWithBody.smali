.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody;
.super Ljava/lang/Object;
.source "NodeWithBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$hasEmptyBody$0(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "bs"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bs"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createBlockStatementAsBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    .line 35
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    .line 36
    .local v0, "b":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 37
    return-object v0
.end method

.method public abstract getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.end method

.method public hasEmptyBody()Z
    .locals 3

    .line 44
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    .line 45
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->toBlockStmt()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->isEmptyStmt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 45
    return v1
.end method

.method public abstract setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ")TN;"
        }
    .end annotation
.end method
