.class public Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "MethodInvocationNode.java"


# instance fields
.field protected final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected final target:Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

.field protected final tree:Lcom/sun/source/tree/MethodInvocationTree;

.field protected final treePath:Lcom/sun/source/util/TreePath;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "target"    # Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .param p4, "treePath"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;",
            "Lcom/sun/source/util/TreePath;",
            ")V"
        }
    .end annotation

    .line 41
    .local p3, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 42
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->tree:Lcom/sun/source/tree/MethodInvocationTree;

    .line 43
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->target:Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    .line 44
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->arguments:Ljava/util/List;

    .line 45
    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->treePath:Lcom/sun/source/util/TreePath;

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "i":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 50
    .local v2, "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v3, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodParameterContext;

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    invoke-direct {v3, v4, v0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodParameterContext;-><init>(Ljavax/lang/model/element/ExecutableElement;I)V

    move-object v0, v3

    .line 51
    .local v0, "ctx":Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
    invoke-virtual {v2, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->setAssignmentContext(Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;)V

    .line 52
    .end local v0    # "ctx":Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
    .end local v2    # "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    move v0, v5

    goto :goto_1

    .line 53
    .end local v5    # "i":I
    .local v0, "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V
    .locals 1
    .param p1, "target"    # Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .param p3, "treePath"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;",
            "Lcom/sun/source/util/TreePath;",
            ")V"
        }
    .end annotation

    .line 56
    .local p2, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;-><init>(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V

    .line 57
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

    .line 82
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 109
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "i"    # I

    .line 68
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->arguments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->arguments:Ljava/util/List;

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

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->target:Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->arguments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-object v0
.end method

.method public getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->target:Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/MethodInvocationTree;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->tree:Lcom/sun/source/tree/MethodInvocationTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v0

    return-object v0
.end method

.method public getTreePath()Lcom/sun/source/util/TreePath;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->treePath:Lcom/sun/source/util/TreePath;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->target:Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->arguments:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->target:Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "needComma":Z
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->arguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 92
    .local v3, "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v1, :cond_0

    .line 93
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const/4 v1, 0x1

    .line 97
    .end local v3    # "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 98
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
