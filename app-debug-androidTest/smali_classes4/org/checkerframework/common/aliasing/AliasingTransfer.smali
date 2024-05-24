.class public Lorg/checkerframework/common/aliasing/AliasingTransfer;
.super Lorg/checkerframework/framework/flow/CFTransfer;
.source "AliasingTransfer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFTransfer;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFTransfer;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 51
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 52
    return-void
.end method


# virtual methods
.method protected bridge synthetic processPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFAbstractStore;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;)V
    .locals 0

    .line 45
    check-cast p2, Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/aliasing/AliasingTransfer;->processPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFStore;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;)V

    return-void
.end method

.method protected processPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFStore;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;)V
    .locals 8
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p3, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .param p4, "tree"    # Lcom/sun/source/tree/Tree;

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/framework/flow/CFTransfer;->processPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFAbstractStore;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;)V

    .line 87
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isEnumSuper(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {p3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 101
    iget-object v2, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    .line 102
    .local v2, "annotatedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 104
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 105
    .local v5, "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 106
    .local v6, "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v7, Lorg/checkerframework/common/aliasing/qual/NonLeaked;

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    const-class v7, Lorg/checkerframework/common/aliasing/qual/LeakedToResult;

    .line 107
    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 108
    iget-object v7, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v7, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/checkerframework/framework/flow/CFStore;->clearValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 103
    .end local v5    # "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    .line 114
    .local v4, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    .line 115
    .local v5, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz v5, :cond_3

    const-class v6, Lorg/checkerframework/common/aliasing/qual/LeakedToResult;

    .line 116
    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    const-class v6, Lorg/checkerframework/common/aliasing/qual/NonLeaked;

    .line 117
    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 118
    iget-object v6, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v6, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/checkerframework/framework/flow/CFStore;->clearValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 120
    :cond_3
    return-void

    .line 93
    .end local v2    # "annotatedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v3    # "paramTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v4    # "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of arguments in the method call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is different from the number of parameters for the method declaration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 99
    invoke-interface {p3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/aliasing/AliasingTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 61
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 62
    .local v0, "rhs":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 63
    .local v1, "treeRhs":Lcom/sun/source/tree/Tree;
    iget-object v2, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 65
    .local v2, "rhsType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v3, Lorg/checkerframework/common/aliasing/qual/Unique;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    if-nez v3, :cond_0

    instance-of v3, v0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v3

    return-object v3

    .line 70
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v3, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 71
    .local v3, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/flow/CFStore;->clearValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 72
    new-instance v4, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFStore;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v4
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/aliasing/AliasingTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 130
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTreePath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 131
    .local v0, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 133
    .local v1, "parentIsStatement":Z
    :goto_0
    if-nez v1, :cond_4

    .line 135
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 136
    .local v2, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArguments()Ljava/util/List;

    move-result-object v3

    .line 137
    .local v3, "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    .line 138
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 145
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFStore;

    .line 147
    .local v5, "store":Lorg/checkerframework/framework/flow/CFStore;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 148
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 149
    .local v7, "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/VariableElement;

    .line 150
    .local v8, "param":Ljavax/lang/model/element/VariableElement;
    iget-object v9, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v9, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    const-class v10, Lorg/checkerframework/common/aliasing/qual/LeakedToResult;

    invoke-virtual {v9, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 153
    iget-object v9, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v9, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/checkerframework/framework/flow/CFStore;->clearValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 147
    .end local v7    # "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "param":Ljavax/lang/model/element/VariableElement;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 158
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 159
    .local v6, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v7, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v7, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v7

    .line 160
    .local v7, "annotatedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v8

    .line 161
    .local v8, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz v8, :cond_4

    const-class v9, Lorg/checkerframework/common/aliasing/qual/LeakedToResult;

    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 162
    iget-object v9, p0, Lorg/checkerframework/common/aliasing/AliasingTransfer;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v9, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/checkerframework/framework/flow/CFStore;->clearValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    goto :goto_2

    .line 138
    .end local v5    # "store":Lorg/checkerframework/framework/flow/CFStore;
    .end local v6    # "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "annotatedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v8    # "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of arguments in the method call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is different from the number of parameters for the method declaration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 144
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 167
    .end local v2    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method
