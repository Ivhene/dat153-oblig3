.class public Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ArrayTypeNode.java"


# instance fields
.field protected final tree:Lcom/sun/source/tree/ArrayTypeTree;

.field protected final types:Ljavax/lang/model/util/Types;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/ArrayTypeTree;Ljavax/lang/model/util/Types;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/ArrayTypeTree;
    .param p2, "types"    # Ljavax/lang/model/util/Types;

    .line 25
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 26
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;->tree:Lcom/sun/source/tree/ArrayTypeTree;

    .line 27
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;->types:Ljavax/lang/model/util/Types;

    .line 28
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

    .line 37
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitArrayType(Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 47
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;

    .line 51
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    return v1
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

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;->tree:Lcom/sun/source/tree/ArrayTypeTree;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;->tree:Lcom/sun/source/tree/ArrayTypeTree;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
