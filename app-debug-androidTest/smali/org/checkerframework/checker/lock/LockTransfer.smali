.class public Lorg/checkerframework/checker/lock/LockTransfer;
.super Lorg/checkerframework/framework/flow/CFAbstractTransfer;
.source "LockTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractTransfer<",
        "Lorg/checkerframework/framework/flow/CFValue;",
        "Lorg/checkerframework/checker/lock/LockStore;",
        "Lorg/checkerframework/checker/lock/LockTransfer;",
        ">;"
    }
.end annotation


# instance fields
.field private final atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/lock/LockAnalysis;Lorg/checkerframework/checker/lock/LockChecker;)V
    .locals 1
    .param p1, "analysis"    # Lorg/checkerframework/checker/lock/LockAnalysis;
    .param p2, "checker"    # Lorg/checkerframework/checker/lock/LockChecker;

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    .line 33
    invoke-virtual {p1}, Lorg/checkerframework/checker/lock/LockAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockTransfer;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 34
    return-void
.end method


# virtual methods
.method public initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/checker/lock/LockStore;
    .locals 9
    .param p1, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/UnderlyingAST;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            ">;)",
            "Lorg/checkerframework/checker/lock/LockStore;"
        }
    .end annotation

    .line 78
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    .line 80
    .local v0, "store":Lorg/checkerframework/checker/lock/LockStore;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v1

    .line 104
    .local v1, "astKind":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;
    sget-object v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v1, v2, :cond_3

    .line 105
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    .line 106
    .local v2, "method":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v3

    .line 108
    .local v3, "methodTree":Lcom/sun/source/tree/MethodTree;
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    .line 110
    .local v4, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/element/Modifier;->SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v5

    .line 112
    .local v5, "classTree":Lcom/sun/source/tree/ClassTree;
    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 114
    .local v6, "classType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    new-instance v7, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v7, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    iget-object v8, p0, Lorg/checkerframework/checker/lock/LockTransfer;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v8, v8, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v7, v8}, Lorg/checkerframework/checker/lock/LockStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v7, p0, Lorg/checkerframework/checker/lock/LockTransfer;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v7, v7, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v7, v6}, Lorg/checkerframework/checker/lock/LockStore;->insertThisValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)V

    goto :goto_0

    .line 120
    .end local v5    # "classTree":Lcom/sun/source/tree/ClassTree;
    .end local v6    # "classType":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v5, v6, :cond_2

    .line 121
    invoke-virtual {v0}, Lorg/checkerframework/checker/lock/LockStore;->setInConstructorOrInitializer()V

    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    goto :goto_1

    .line 123
    .end local v2    # "method":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    .end local v3    # "methodTree":Lcom/sun/source/tree/MethodTree;
    .end local v4    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_3
    sget-object v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->ARBITRARY_CODE:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v1, v2, :cond_4

    .line 124
    invoke-virtual {v0}, Lorg/checkerframework/checker/lock/LockStore;->setInConstructorOrInitializer()V

    goto :goto_2

    .line 123
    :cond_4
    :goto_1
    nop

    .line 127
    :goto_2
    return-object v0
.end method

.method public bridge synthetic initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/checker/lock/LockStore;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/checker/lock/LockStore;

    move-result-object p1

    return-object p1
.end method

.method protected makeLockHeld(Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 2
    .param p1, "store"    # Lorg/checkerframework/checker/lock/LockStore;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 38
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockTransfer;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 39
    .local v0, "internalRepr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockTransfer;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/checker/lock/LockStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 40
    return-void
.end method

.method protected makeLockHeld(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/checker/lock/LockStore;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")V"
        }
    .end annotation

    .line 54
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/checker/lock/LockStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->containsTwoStores()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->makeLockHeld(Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 56
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->makeLockHeld(Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->makeLockHeld(Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 60
    :goto_0
    return-void
.end method

.method protected makeLockPossiblyHeld(Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "store"    # Lorg/checkerframework/checker/lock/LockStore;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 44
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockTransfer;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 49
    .local v0, "internalRepr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p1, v0}, Lorg/checkerframework/checker/lock/LockStore;->insertLockPossiblyHeld(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 50
    return-void
.end method

.method protected makeLockPossiblyHeld(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/checker/lock/LockStore;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")V"
        }
    .end annotation

    .line 67
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/checker/lock/LockStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->containsTwoStores()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->makeLockPossiblyHeld(Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 69
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->makeLockPossiblyHeld(Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->makeLockPossiblyHeld(Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 73
    :goto_0
    return-void
.end method

.method public bridge synthetic visitSynchronized(Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockTransfer;->visitSynchronized(Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/checker/lock/LockStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/checker/lock/LockStore;",
            ">;"
        }
    .end annotation

    .line 134
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/checker/lock/LockStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitSynchronized(Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 137
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/checker/lock/LockStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->getIsStartOfBlock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/lock/LockTransfer;->makeLockHeld(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/lock/LockTransfer;->makeLockPossiblyHeld(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 143
    :goto_0
    return-object v0
.end method
