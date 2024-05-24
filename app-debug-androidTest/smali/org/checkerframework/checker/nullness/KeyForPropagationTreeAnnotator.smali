.class public Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "KeyForPropagationTreeAnnotator.java"


# instance fields
.field private final keyForPropagator:Lorg/checkerframework/checker/nullness/KeyForPropagator;

.field private final keySetMethod:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/checker/nullness/KeyForPropagator;)V
    .locals 4
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "propagationTreeAnnotator"    # Lorg/checkerframework/checker/nullness/KeyForPropagator;

    .line 53
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 54
    iput-object p2, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->keyForPropagator:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    .line 55
    const-class v0, Ljava/util/Map;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    .line 56
    const-string v2, "keySet"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->keySetMethod:Ljavax/lang/model/element/ExecutableElement;

    .line 61
    return-void
.end method


# virtual methods
.method public isCallToKeyset(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 2
    .param p1, "expression"    # Lcom/sun/source/tree/ExpressionTree;

    .line 65
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->keySetMethod:Ljavax/lang/model/element/ExecutableElement;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 66
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    .line 65
    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 104
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->keyForPropagator:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/checker/nullness/KeyForPropagator;->propagateNewClassTree(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;)V

    .line 106
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->visitVariable(Lcom/sun/source/tree/VariableTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 7
    .param p1, "variableTree"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 75
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 81
    .local v0, "initializer":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->isCallToKeyset(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 83
    .local v1, "variableType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 84
    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 88
    .local v2, "initializerType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_0

    .line 89
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->keyForPropagator:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    sget-object v5, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->TO_SUPERTYPE:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    iget-object v6, p0, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, v4, v1, v5, v6}, Lorg/checkerframework/checker/nullness/KeyForPropagator;->propagate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 98
    .end local v0    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    .end local v1    # "variableType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "initializerType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
