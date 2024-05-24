.class public Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "VariableDeclarationNode.java"


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final tree:Lcom/sun/source/tree/VariableTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/VariableTree;)V
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/VariableTree;

    .line 28
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 29
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->tree:Lcom/sun/source/tree/VariableTree;

    .line 30
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->name:Ljava/lang/String;

    .line 31
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

    .line 44
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitVariableDeclaration(Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    .line 58
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->name:Ljava/lang/String;

    return-object v0
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

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->getTree()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/VariableTree;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->tree:Lcom/sun/source/tree/VariableTree;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->name:Ljava/lang/String;

    return-object v0
.end method
