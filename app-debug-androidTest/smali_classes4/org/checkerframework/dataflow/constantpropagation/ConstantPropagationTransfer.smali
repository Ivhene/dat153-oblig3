.class public Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;
.super Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;
.source "ConstantPropagationTransfer.java"

# interfaces
.implements Lorg/checkerframework/dataflow/analysis/TransferFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<",
        "Lorg/checkerframework/dataflow/analysis/TransferResult<",
        "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
        "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
        ">;",
        "Lorg/checkerframework/dataflow/analysis/TransferInput<",
        "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
        "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
        ">;>;",
        "Lorg/checkerframework/dataflow/analysis/TransferFunction<",
        "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
        "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;->initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    move-result-object p1

    return-object p1
.end method

.method public initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    .locals 1
    .param p1, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/UnderlyingAST;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            ">;)",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;"
        }
    .end annotation

    .line 27
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;>;"
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;-><init>()V

    .line 28
    .local v0, "store":Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    return-object v0
.end method

.method protected process(Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 2
    .param p1, "p"    # Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    .param p2, "a"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "b"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 81
    invoke-virtual {p1, p2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->getInformation(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object v0

    .line 82
    .local v0, "val":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    instance-of v1, p3, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p1, p3, v0}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->setInformation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;)V

    .line 85
    :cond_0
    return-void
.end method

.method public bridge synthetic visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;"
        }
    .end annotation

    .line 48
    .local p2, "pi":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/dataflow/constantpropagation/Constant;Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    .line 49
    .local v0, "p":Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 50
    .local v1, "target":Lorg/checkerframework/dataflow/cfg/node/Node;
    const/4 v2, 0x0

    .line 51
    .local v2, "info":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    instance-of v3, v1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-eqz v3, :cond_0

    .line 52
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 53
    .local v3, "t":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->getInformation(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->setInformation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;)V

    .line 56
    .end local v3    # "t":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    :cond_0
    new-instance v3, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-direct {v3, v2, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v3
.end method

.method public bridge synthetic visitEqualTo(Lorg/checkerframework/dataflow/cfg/node/EqualToNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;->visitEqualTo(Lorg/checkerframework/dataflow/cfg/node/EqualToNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitEqualTo(Lorg/checkerframework/dataflow/cfg/node/EqualToNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/EqualToNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/EqualToNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;"
        }
    .end annotation

    .line 71
    .local p2, "pi":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/dataflow/constantpropagation/Constant;Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    .line 72
    .local v0, "p":Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->copy()Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    move-result-object v1

    .line 73
    .local v1, "old":Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/EqualToNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 74
    .local v2, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/EqualToNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 75
    .local v3, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v0, v2, v3}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;->process(Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 76
    invoke-virtual {p0, v0, v3, v2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;->process(Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 77
    new-instance v4, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v1}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v4
.end method

.method public bridge synthetic visitIntegerLiteral(Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;->visitIntegerLiteral(Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitIntegerLiteral(Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;"
        }
    .end annotation

    .line 62
    .local p2, "pi":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/dataflow/constantpropagation/Constant;Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    .line 63
    .local v0, "p":Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    new-instance v1, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;->getValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/constantpropagation/Constant;-><init>(Ljava/lang/Integer;)V

    .line 64
    .local v1, "c":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->setInformation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;)V

    .line 65
    new-instance v2, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-direct {v2, v1, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v2
.end method

.method public bridge synthetic visitLocalVariable(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;->visitLocalVariable(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLocalVariable(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;"
        }
    .end annotation

    .line 34
    .local p2, "before":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/dataflow/constantpropagation/Constant;Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    .line 35
    .local v0, "store":Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->getInformation(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object v1

    .line 36
    .local v1, "value":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    new-instance v2, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-direct {v2, v1, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v2
.end method

.method public bridge synthetic visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            ">;"
        }
    .end annotation

    .line 42
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/dataflow/constantpropagation/Constant;Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;>;"
    new-instance v0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v0
.end method
