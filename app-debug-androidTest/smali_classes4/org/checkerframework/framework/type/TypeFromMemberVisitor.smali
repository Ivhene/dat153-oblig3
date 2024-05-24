.class Lorg/checkerframework/framework/type/TypeFromMemberVisitor;
.super Lorg/checkerframework/framework/type/TypeFromTreeVisitor;
.source "TypeFromMemberVisitor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/checkerframework/framework/type/TypeFromTreeVisitor;-><init>()V

    return-void
.end method

.method private static inferLambdaParamAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 8
    .param p0, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "lambdaParam"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "paramElement"    # Ljavax/lang/model/element/Element;

    .line 88
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 89
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    nop

    .line 96
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 97
    .local v0, "declaredInTree":Lcom/sun/source/tree/Tree;
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v3, :cond_3

    .line 98
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 99
    .local v1, "lambdaDecl":Lcom/sun/source/tree/LambdaExpressionTree;
    invoke-interface {v1}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 100
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFunctionTypeFromTree(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v3

    .line 101
    .local v3, "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 102
    .local v4, "funcTypeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isImplicitlyTypedLambda(Lcom/sun/source/tree/Tree;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    iget-object v5, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    iget-object v6, v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->actualType:Ljavax/lang/model/type/TypeMirror;

    iget-object v7, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->actualType:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v5, v6, v7}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    invoke-static {p0, v4, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    return-object v5

    .line 108
    :cond_1
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 109
    return-object p1

    .line 119
    :cond_2
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 120
    return-object p1

    .line 123
    .end local v1    # "lambdaDecl":Lcom/sun/source/tree/LambdaExpressionTree;
    .end local v2    # "index":I
    .end local v3    # "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v4    # "funcTypeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    return-object v2

    .line 93
    .end local v0    # "declaredInTree":Lcom/sun/source/tree/Tree;
    :cond_4
    :goto_0
    return-object v2
.end method


# virtual methods
.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromMemberVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 64
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 66
    .local v0, "elt":Ljavax/lang/model/element/ExecutableElement;
    nop

    .line 67
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 68
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->setElement(Ljavax/lang/model/element/ExecutableElement;)V

    .line 71
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 79
    invoke-static {v1, v0, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 80
    return-object v1
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromMemberVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 31
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/checkerframework/framework/type/TypeFromTree;->fromTypeTree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 34
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "annoTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 37
    .local v2, "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->innerMostType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 38
    .local v3, "innerType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/AnnotationMirror;

    .line 41
    .local v5, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->isDeclarationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    invoke-static {v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v6

    .line 44
    const-string v7, "org.checkerframework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 46
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 51
    .end local v5    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    goto :goto_0

    .line 54
    .end local v2    # "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v3    # "innerType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v2

    .line 55
    .local v2, "elt":Ljavax/lang/model/element/Element;
    invoke-static {p2, v0, v2}, Lorg/checkerframework/framework/type/TypeFromMemberVisitor;->inferLambdaParamAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 56
    .local v3, "lambdaParamType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v3, :cond_2

    .line 57
    return-object v3

    .line 59
    :cond_2
    return-object v0
.end method
