.class public Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ReturnNode.java"


# instance fields
.field protected final result:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/ReturnTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/ReturnTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;Lcom/sun/source/tree/LambdaExpressionTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/ReturnTree;
    .param p2, "result"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "types"    # Ljavax/lang/model/util/Types;
    .param p4, "lambda"    # Lcom/sun/source/tree/LambdaExpressionTree;
    .param p5, "methodSymbol"    # Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 44
    sget-object v0, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {p3, v0}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 45
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 46
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->tree:Lcom/sun/source/tree/ReturnTree;

    .line 47
    if-eqz p2, :cond_0

    .line 48
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$LambdaReturnContext;

    invoke-direct {v0, p5}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$LambdaReturnContext;-><init>(Ljavax/lang/model/element/ExecutableElement;)V

    invoke-virtual {p2, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->setAssignmentContext(Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;)V

    .line 50
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/ReturnTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;Lcom/sun/source/tree/MethodTree;)V
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/ReturnTree;
    .param p2, "result"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "types"    # Ljavax/lang/model/util/Types;
    .param p4, "methodTree"    # Lcom/sun/source/tree/MethodTree;

    .line 30
    sget-object v0, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {p3, v0}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 31
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 32
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->tree:Lcom/sun/source/tree/ReturnTree;

    .line 33
    if-eqz p2, :cond_0

    .line 34
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodReturnContext;

    invoke-direct {v0, p4}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodReturnContext;-><init>(Lcom/sun/source/tree/MethodTree;)V

    invoke-virtual {p2, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->setAssignmentContext(Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;)V

    .line 36
    :cond_0
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

    .line 64
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 77
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    .line 81
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 91
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/ReturnTree;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->tree:Lcom/sun/source/tree/ReturnTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->getTree()Lcom/sun/source/tree/ReturnTree;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 86
    const-class v0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "return"

    return-object v0
.end method
