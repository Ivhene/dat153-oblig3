.class public Lorg/checkerframework/dataflow/cfg/node/ThrowNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ThrowNode.java"


# instance fields
.field protected final expression:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/ThrowTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/ThrowTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/ThrowTree;
    .param p2, "expression"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "types"    # Ljavax/lang/model/util/Types;

    .line 25
    sget-object v0, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {p3, v0}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 26
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->tree:Lcom/sun/source/tree/ThrowTree;

    .line 27
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->expression:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 41
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitThrow(Lorg/checkerframework/dataflow/cfg/node/ThrowNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;

    .line 55
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/ThrowNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->expression:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 65
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->expression:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->tree:Lcom/sun/source/tree/ThrowTree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 60
    const-class v0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->expression:Lorg/checkerframework/dataflow/cfg/node/Node;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "throw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->expression:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
