.class public Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ClassDeclarationNode.java"


# instance fields
.field protected final tree:Lcom/sun/source/tree/ClassTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/ClassTree;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;

    .line 20
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 21
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;->tree:Lcom/sun/source/tree/ClassTree;

    .line 22
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 31
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitClassDeclaration(Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    if-ne p0, p1, :cond_0

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;

    .line 49
    .local v0, "that":Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;->tree:Lcom/sun/source/tree/ClassTree;

    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;->tree:Lcom/sun/source/tree/ClassTree;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 45
    .end local v0    # "that":Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOperands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/ClassTree;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;->tree:Lcom/sun/source/tree/ClassTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;->getTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;->tree:Lcom/sun/source/tree/ClassTree;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;->tree:Lcom/sun/source/tree/ClassTree;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
