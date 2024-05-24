.class public Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "InstanceOfNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final operand:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final refType:Ljavax/lang/model/type/TypeMirror;

.field protected final tree:Lcom/sun/source/tree/InstanceOfTree;

.field protected final types:Ljavax/lang/model/util/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "operand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "refType"    # Ljavax/lang/model/type/TypeMirror;
    .param p4, "types"    # Ljavax/lang/model/util/Types;

    .line 34
    sget-object v0, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-interface {p4, v0}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 35
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/InstanceOfTree;

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->tree:Lcom/sun/source/tree/InstanceOfTree;

    .line 37
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->operand:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 38
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->refType:Ljavax/lang/model/type/TypeMirror;

    .line 39
    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->types:Ljavax/lang/model/util/Types;

    .line 40
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    .line 58
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitInstanceOf(Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 68
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    return v1

    .line 71
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;

    .line 74
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->types:Ljavax/lang/model/util/Types;

    .line 75
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getRefType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getRefType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 74
    :goto_0
    return v1
.end method

.method public getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->operand:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 85
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRefType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->refType:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/InstanceOfTree;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->tree:Lcom/sun/source/tree/InstanceOfTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getTree()Lcom/sun/source/tree/InstanceOfTree;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    const-class v0, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instanceof "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getRefType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
