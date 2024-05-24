.class public Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "TypeCastNode.java"


# instance fields
.field protected final operand:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/Tree;

.field protected final types:Ljavax/lang/model/util/Types;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)V
    .locals 0
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "operand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p4, "types"    # Ljavax/lang/model/util/Types;

    .line 25
    invoke-direct {p0, p3}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 26
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->tree:Lcom/sun/source/tree/Tree;

    .line 27
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->operand:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 28
    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->types:Ljavax/lang/model/util/Types;

    .line 29
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

    .line 42
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitTypeCast(Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 52
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    return v1

    .line 55
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    .line 56
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->types:Ljavax/lang/model/util/Types;

    .line 57
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 56
    :goto_0
    return v1
.end method

.method public getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->operand:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 67
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 62
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
