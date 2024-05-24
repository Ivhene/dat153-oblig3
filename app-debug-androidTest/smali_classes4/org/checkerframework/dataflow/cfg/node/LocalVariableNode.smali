.class public Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "LocalVariableNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .param p2, "receiver"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 39
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 42
    if-eqz p1, :cond_2

    .line 43
    instance-of v0, p1, Lcom/sun/source/tree/IdentifierTree;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sun/source/tree/VariableTree;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->tree:Lcom/sun/source/tree/Tree;

    .line 45
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 46
    return-void

    .line 42
    :cond_2
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

    .line 80
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitLocalVariable(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 90
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 94
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getElement()Ljavax/lang/model/element/Element;
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->tree:Lcom/sun/source/tree/Tree;

    instance-of v1, v0, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 52
    .local v0, "itree":Lcom/sun/source/tree/IdentifierTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 54
    .local v0, "el":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 52
    .local v0, "itree":Lcom/sun/source/tree/IdentifierTree;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 55
    .end local v0    # "itree":Lcom/sun/source/tree/IdentifierTree;
    :cond_1
    instance-of v1, v0, Lcom/sun/source/tree/VariableTree;

    if-eqz v1, :cond_2

    .line 56
    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 58
    .local v0, "el":Ljavax/lang/model/element/Element;
    :goto_0
    return-object v0

    .line 55
    .end local v0    # "el":Ljavax/lang/model/element/Element;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->tree:Lcom/sun/source/tree/Tree;

    instance-of v1, v0, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
