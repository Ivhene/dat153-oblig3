.class public Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "FunctionalInterfaceNode.java"


# instance fields
.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/LambdaExpressionTree;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/LambdaExpressionTree;

    .line 41
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 42
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/MemberReferenceTree;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/MemberReferenceTree;

    .line 36
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 37
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    .line 38
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

    .line 52
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitMemberReference(Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 70
    return v0

    .line 72
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;

    .line 78
    .local v2, "that":Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    if-eqz v3, :cond_2

    iget-object v0, v2, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 73
    .end local v2    # "that":Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;
    :cond_4
    :goto_1
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

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    instance-of v1, v0, Lcom/sun/source/tree/LambdaExpressionTree;

    const-string v2, "FunctionalInterfaceNode:"

    if-eqz v1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    check-cast v1, Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-interface {v1}, Lcom/sun/source/tree/LambdaExpressionTree;->getBodyKind()Lcom/sun/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    instance-of v0, v0, Lcom/sun/source/tree/MemberReferenceTree;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;->tree:Lcom/sun/source/tree/Tree;

    check-cast v1, Lcom/sun/source/tree/MemberReferenceTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MemberReferenceTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Invalid tree in FunctionalInterfaceNode"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method
