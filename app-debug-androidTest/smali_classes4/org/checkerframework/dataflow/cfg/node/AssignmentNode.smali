.class public Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "AssignmentNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final lhs:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final rhs:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "target"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "expression"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 33
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 34
    instance-of v0, p1, Lcom/sun/source/tree/AssignmentTree;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sun/source/tree/VariableTree;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sun/source/tree/CompoundAssignmentTree;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sun/source/tree/UnaryTree;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    :goto_0
    instance-of v0, p2, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    if-nez v0, :cond_3

    instance-of v0, p2, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-nez v0, :cond_3

    instance-of v0, p2, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->tree:Lcom/sun/source/tree/Tree;

    .line 42
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->lhs:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 43
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->rhs:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 44
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$AssignmentLhsContext;

    invoke-direct {v0, p2}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$AssignmentLhsContext;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {p3, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->setAssignmentContext(Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;)V

    .line 45
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

    .line 62
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 72
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    return v1

    .line 75
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 76
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 76
    :goto_0
    return v1
.end method

.method public getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->rhs:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getOperands()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->lhs:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
