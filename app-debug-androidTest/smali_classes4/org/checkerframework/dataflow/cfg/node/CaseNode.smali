.class public Lorg/checkerframework/dataflow/cfg/node/CaseNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "CaseNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final caseExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final switchExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/CaseTree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/CaseTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/CaseTree;
    .param p2, "switchExpr"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "caseExpr"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "types"    # Ljavax/lang/model/util/Types;

    .line 38
    sget-object v0, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {p4, v0}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 39
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CASE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 40
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->tree:Lcom/sun/source/tree/CaseTree;

    .line 41
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->switchExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 42
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->caseExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 43
    return-void

    .line 39
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

    .line 60
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 70
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/CaseNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 73
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/CaseNode;

    .line 74
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/CaseNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getSwitchOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getSwitchOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->caseExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getSwitchOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v0
.end method

.method public getSwitchOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->switchExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/CaseTree;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->tree:Lcom/sun/source/tree/CaseTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getTree()Lcom/sun/source/tree/CaseTree;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getSwitchOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
