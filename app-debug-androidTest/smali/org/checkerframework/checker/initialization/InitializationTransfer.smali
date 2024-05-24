.class public Lorg/checkerframework/checker/initialization/InitializationTransfer;
.super Lorg/checkerframework/framework/flow/CFAbstractTransfer;
.source "InitializationTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TV;>;T:",
        "Lorg/checkerframework/checker/initialization/InitializationTransfer<",
        "TV;TT;TS;>;S:",
        "Lorg/checkerframework/checker/initialization/InitializationStore<",
        "TV;TS;>;>",
        "Lorg/checkerframework/framework/flow/CFAbstractTransfer<",
        "TV;TS;TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final atypeFactory:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<",
            "****>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 67
    nop

    .line 68
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->atypeFactory:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 69
    return-void
.end method


# virtual methods
.method protected initializedFieldsAfterCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;)Ljava/util/List;
    .locals 11
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<",
            "TV;TS;>;)",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    .local p2, "transferResult":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TV;TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/VariableElement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v1

    .line 94
    .local v1, "tree":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 95
    .local v2, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    const-string v4, "<init>"

    invoke-interface {v3, v4}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 96
    .local v3, "isConstructor":Z
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    .line 97
    .local v4, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "methodString":Ljava/lang/String;
    if-eqz v3, :cond_0

    instance-of v6, v4, Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;

    if-eqz v6, :cond_0

    const-string v6, "this"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v6}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v6

    .line 103
    .local v6, "clazz":Lcom/sun/source/tree/ClassTree;
    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v7

    .line 104
    .local v7, "clazzElem":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p0, v0, v7}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->markInvariantFieldsAsInitialized(Ljava/util/List;Ljavax/lang/model/element/TypeElement;)V

    .line 109
    .end local v6    # "clazz":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "clazzElem":Ljavax/lang/model/element/TypeElement;
    :cond_0
    if-eqz v3, :cond_1

    instance-of v6, v4, Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;

    if-eqz v6, :cond_1

    const-string v6, "super"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v6}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v6

    .line 111
    .restart local v6    # "clazz":Lcom/sun/source/tree/ClassTree;
    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v7

    .line 112
    .restart local v7    # "clazzElem":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v7}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 114
    .local v8, "superClass":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v9

    sget-object v10, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v9, v10, :cond_1

    .line 115
    iget-object v9, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v9}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypes()Ljavax/lang/model/util/Types;

    move-result-object v9

    invoke-interface {v9, v8}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Ljavax/lang/model/element/TypeElement;

    .line 116
    invoke-interface {v7}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 117
    invoke-virtual {p0, v0, v7}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->markInvariantFieldsAsInitialized(Ljava/util/List;Ljavax/lang/model/element/TypeElement;)V

    goto :goto_0

    .line 121
    .end local v6    # "clazz":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "clazzElem":Ljavax/lang/model/element/TypeElement;
    .end local v8    # "superClass":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    return-object v0
.end method

.method protected isNotFullyInitializedReceiver(Lcom/sun/source/tree/MethodTree;)Z
    .locals 4
    .param p1, "methodTree"    # Lcom/sun/source/tree/MethodTree;

    .line 73
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->isNotFullyInitializedReceiver(Lcom/sun/source/tree/MethodTree;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 77
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 78
    .local v0, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 79
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->atypeFactory:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isUnclassified(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->atypeFactory:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFree(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 82
    :cond_3
    return v2
.end method

.method protected markInvariantFieldsAsInitialized(Ljava/util/List;Ljavax/lang/model/element/TypeElement;)V
    .locals 5
    .param p2, "clazzElem"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    .line 132
    .local v2, "field":Ljavax/lang/model/element/VariableElement;
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    sget-object v4, Lcom/sun/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eq v3, v4, :cond_0

    .line 137
    goto :goto_0

    .line 139
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->atypeFactory:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 140
    .local v3, "fieldType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->atypeFactory:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->hasFieldInvariantAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v2    # "field":Ljavax/lang/model/element/VariableElement;
    .end local v3    # "fieldType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    goto :goto_0

    .line 144
    :cond_2
    return-void
.end method

.method public bridge synthetic visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 149
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 154
    .local v1, "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    instance-of v2, v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v2, :cond_0

    .line 156
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 157
    .local v2, "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/checker/initialization/InitializationStore;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/initialization/InitializationStore;->addInitializedField(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;)V

    .line 160
    .end local v2    # "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_0
    return-object v0

    .line 149
    .end local v1    # "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 171
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->containsTwoStores()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/initialization/InitializationStore;

    .line 173
    .local v1, "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TS;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getElement()Ljavax/lang/model/element/VariableElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/initialization/InitializationStore;->isFieldInitialized(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 176
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getElement()Ljavax/lang/model/element/VariableElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 179
    .local v2, "fieldAnno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->atypeFactory:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getFieldInvariantAnnotation()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->atypeFactory:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getFieldInvariantAnnotation()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 181
    .local v3, "inv":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 182
    .local v4, "oldResultValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 184
    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 183
    invoke-virtual {v5, v3, v6}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    .line 185
    .local v5, "refinedResultValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    .line 186
    .local v6, "newResultValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/analysis/TransferResult;->setResultValue(Lorg/checkerframework/dataflow/analysis/AbstractValue;)V

    .line 189
    .end local v2    # "fieldAnno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "inv":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "oldResultValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v5    # "refinedResultValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v6    # "newResultValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_0
    return-object v0

    .line 171
    .end local v1    # "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TS;"
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationTransfer;, "Lorg/checkerframework/checker/initialization/InitializationTransfer<TV;TT;TS;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 196
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 198
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->initializedFieldsAfterCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;)Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, "newlyInitializedFields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 201
    .local v3, "f":Ljavax/lang/model/element/VariableElement;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/initialization/InitializationStore;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/initialization/InitializationStore;->addInitializedField(Ljavax/lang/model/element/VariableElement;)V

    .line 202
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/initialization/InitializationStore;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/initialization/InitializationStore;->addInitializedField(Ljavax/lang/model/element/VariableElement;)V

    .line 203
    .end local v3    # "f":Ljavax/lang/model/element/VariableElement;
    goto :goto_0

    .line 205
    :cond_0
    return-object v0

    .line 196
    .end local v1    # "newlyInitializedFields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/VariableElement;>;"
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
