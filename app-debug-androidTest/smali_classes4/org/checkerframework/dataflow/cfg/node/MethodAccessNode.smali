.class public Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "MethodAccessNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final method:Ljavax/lang/model/element/ExecutableElement;

.field protected final receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/ExpressionTree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "receiver"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 28
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 29
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->tree:Lcom/sun/source/tree/ExpressionTree;

    .line 31
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 33
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 34
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 29
    :cond_1
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

    .line 51
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitMethodAccess(Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 61
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    return v1

    .line 64
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    .line 65
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getMethod()Ljavax/lang/model/element/ExecutableElement;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->method:Ljavax/lang/model/element/ExecutableElement;

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

    .line 75
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->tree:Lcom/sun/source/tree/ExpressionTree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 70
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
