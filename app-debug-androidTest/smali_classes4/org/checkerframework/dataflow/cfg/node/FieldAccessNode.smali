.class public Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "FieldAccessNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final element:Ljavax/lang/model/element/VariableElement;

.field protected final field:Ljava/lang/String;

.field protected final receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "element"    # Ljavax/lang/model/element/VariableElement;
    .param p3, "receiver"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 50
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 51
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->tree:Lcom/sun/source/tree/Tree;

    .line 52
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->element:Ljavax/lang/model/element/VariableElement;

    .line 53
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 54
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->field:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "receiver"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 31
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 32
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->tree:Lcom/sun/source/tree/Tree;

    .line 34
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 35
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getFieldName(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->field:Ljava/lang/String;

    .line 37
    instance-of v0, p1, Lcom/sun/source/tree/MemberSelectTree;

    const-string v1, "@AssumeAssertion(nullness): tree kind"

    if-eqz v0, :cond_1

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 39
    .local v0, "mstree":Lcom/sun/source/tree/MemberSelectTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    iput-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->element:Ljavax/lang/model/element/VariableElement;

    .line 41
    .end local v0    # "mstree":Lcom/sun/source/tree/MemberSelectTree;
    goto :goto_0

    .line 39
    .restart local v0    # "mstree":Lcom/sun/source/tree/MemberSelectTree;
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 42
    .end local v0    # "mstree":Lcom/sun/source/tree/MemberSelectTree;
    :cond_1
    instance-of v0, p1, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v0, :cond_3

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 44
    .local v0, "itree":Lcom/sun/source/tree/IdentifierTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    iput-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->element:Ljavax/lang/model/element/VariableElement;

    .line 47
    .end local v0    # "itree":Lcom/sun/source/tree/IdentifierTree;
    :goto_0
    return-void

    .line 44
    .restart local v0    # "itree":Lcom/sun/source/tree/IdentifierTree;
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 42
    .end local v0    # "itree":Lcom/sun/source/tree/IdentifierTree;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_4
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

    .line 76
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 91
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    return v1

    .line 94
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 95
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 95
    :goto_0
    return v1
.end method

.method public getElement()Ljavax/lang/model/element/VariableElement;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->element:Ljavax/lang/model/element/VariableElement;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->field:Ljava/lang/String;

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

    .line 106
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->receiver:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getElement()Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->field:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
