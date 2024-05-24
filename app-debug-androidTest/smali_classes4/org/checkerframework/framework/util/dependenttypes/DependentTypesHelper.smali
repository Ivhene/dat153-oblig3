.class public Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
.super Ljava/lang/Object;
.source "DependentTypesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;,
        Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;,
        Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;,
        Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;
    }
.end annotation


# instance fields
.field private annoToElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 4
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->annoToElements:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 94
    .local v1, "expressionAnno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->getExpressionElementNames(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "elementList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->annoToElements:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v1    # "expressionAnno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "elementList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method static synthetic access$200(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .param p1, "x1"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "x2"    # Lcom/sun/source/util/TreePath;
    .param p3, "x3"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "x4"    # Z

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeAnnotationIfDependentType(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 83
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->isExpressionAnno(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 83
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkForError(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    .line 83
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->annoToElements:Ljava/util/Map;

    return-object v0
.end method

.method private checkForError(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 7
    .param p1, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;",
            ">;"
        }
    .end annotation

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->getListOfExpressionElements(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 728
    .local v2, "element":Ljava/lang/String;
    const-class v3, Ljava/lang/String;

    .line 729
    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    .line 730
    .local v3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 731
    .local v5, "v":Ljava/lang/String;
    invoke-static {v5}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->isExpressionError(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 732
    invoke-static {v5}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->unparse(Ljava/lang/String;)Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    .end local v5    # "v":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 735
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 736
    :cond_2
    return-object v0
.end method

.method private checkTypeVariables(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 795
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 796
    .local v0, "ele":Ljavax/lang/model/element/Element;
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 798
    .local v1, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 800
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v2

    .line 799
    invoke-static {p1, v1, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v2

    .line 801
    .local v2, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 802
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 803
    .local v4, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v5, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v5, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-direct {p0, v2, v5, v4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 804
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 801
    .end local v4    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 806
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private static getExpressionElementNames(Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    .local v0, "methods":[Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 114
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 116
    .local v4, "method":Ljava/lang/reflect/Method;
    const-class v5, Lorg/checkerframework/framework/qual/JavaExpression;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/qual/JavaExpression;

    .line 117
    .local v5, "javaExpression":Lorg/checkerframework/framework/qual/JavaExpression;
    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "javaExpression":Lorg/checkerframework/framework/qual/JavaExpression;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_2
    return-object v1
.end method

.method private getListOfExpressionElements(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 3
    .param p1, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 963
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->annoToElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 964
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->annoToElements:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 967
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    goto :goto_0

    .line 968
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 917
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 918
    return v0

    .line 920
    :cond_0
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;-><init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;)V

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 921
    .local v1, "b":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 922
    return v0

    .line 924
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isExpressionAnno(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "am"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 816
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->annoToElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 817
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    const/4 v0, 0x1

    return v0

    .line 820
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    goto :goto_0

    .line 821
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isVarArgsMethodInvocation(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Z
    .locals 7
    .param p1, "methodCalled"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "typeFromUse"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)Z"
        }
    .end annotation

    .line 259
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 261
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 262
    .local v1, "lastArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    .line 263
    .local v2, "argTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    nop

    .line 264
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 265
    .local v4, "varargsArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v6, :cond_0

    .line 266
    invoke-static {v4}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I

    move-result v5

    move-object v6, v1

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 267
    invoke-static {v6}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    move v0, v3

    .line 265
    :cond_1
    return v0

    .line 269
    .end local v1    # "lastArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "argTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v4    # "varargsArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_2
    return v3

    .line 271
    :cond_3
    return v0
.end method

.method private standardizeAnnotationIfDependentType(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p3, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "useLocalScope"    # Z

    .line 585
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->isExpressionAnno(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const/4 v0, 0x0

    return-object v0

    .line 588
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDependentTypeAnnotation(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method private standardizeAtm(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 7
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "useLocalScope"    # Z

    .line 524
    if-eqz p2, :cond_0

    .line 525
    new-instance v6, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;-><init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;ZLorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;)V

    invoke-virtual {v6, p3}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    .line 527
    :cond_0
    return-void
.end method

.method private standardizeDependentTypeAnnotation(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;
    .locals 8
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p3, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "useLocalScope"    # Z

    .line 597
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 599
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p3}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 601
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->getListOfExpressionElements(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 602
    .local v2, "value":Ljava/lang/String;
    const-class v3, Ljava/lang/String;

    .line 603
    const/4 v4, 0x1

    invoke-static {p3, v2, v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    .line 604
    .local v3, "expressionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v4, "standardizedStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 606
    .local v6, "expression":Ljava/lang/String;
    nop

    .line 607
    invoke-virtual {p0, v6, p1, p2, p4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeString(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Ljava/lang/String;

    move-result-object v7

    .line 606
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v6    # "expression":Ljava/lang/String;
    goto :goto_1

    .line 609
    :cond_0
    invoke-virtual {v0, v2, v4}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 610
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "expressionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "standardizedStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 515
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeAtm(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    .line 516
    return-void
.end method

.method private standardizeUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeAtm(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    .line 511
    return-void
.end method

.method private viewpointAdaptExecutable(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)V
    .locals 11
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "receiverTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "typeFromUse"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p4, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 187
    .local v0, "element":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 188
    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 189
    .local v1, "viewpointAdaptedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    return-void

    .line 194
    :cond_0
    if-nez p2, :cond_1

    .line 195
    nop

    .line 196
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfImplicitReceiver(Ljavax/lang/model/element/Element;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .local v2, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 198
    .end local v2    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v2, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 201
    .restart local v2    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v3, "argReceivers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    const/4 v4, 0x0

    .line 203
    .local v4, "isVarargs":Z
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_4

    .line 204
    move-object v5, p1

    check-cast v5, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v5

    .line 205
    .local v5, "methodCalled":Ljavax/lang/model/element/ExecutableElement;
    invoke-direct {p0, v5, p3, p4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->isVarArgsMethodInvocation(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    const/4 v4, 0x1

    .line 207
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 208
    iget-object v7, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v7, v8}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 210
    .end local v6    # "i":I
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v6, "varargArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 212
    iget-object v8, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v8, v9}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 214
    .end local v7    # "i":I
    :cond_3
    nop

    .line 215
    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/Element;

    .line 216
    .local v7, "varargsElement":Ljavax/lang/model/element/Element;
    invoke-static {v7}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 217
    .local v8, "tm":Ljavax/lang/model/type/TypeMirror;
    new-instance v9, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v8, v10, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;Ljava/util/List;)V

    .line 217
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v5    # "methodCalled":Ljavax/lang/model/element/ExecutableElement;
    .end local v6    # "varargArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v7    # "varargsElement":Ljavax/lang/model/element/Element;
    .end local v8    # "tm":Ljavax/lang/model/type/TypeMirror;
    :cond_4
    if-nez v4, :cond_5

    .line 223
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/ExpressionTree;

    .line 224
    .local v6, "argTree":Lcom/sun/source/tree/ExpressionTree;
    iget-object v7, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v7, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v6    # "argTree":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_3

    .line 228
    :cond_5
    iget-object v5, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v5, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v5

    .line 230
    .local v5, "currentPath":Lcom/sun/source/util/TreePath;
    new-instance v6, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v7, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 231
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v7

    invoke-direct {v6, v2, v3, v7}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 247
    .local v6, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-direct {p0, v6, v5, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 248
    new-instance v7, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;-><init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;)V

    invoke-virtual {v7, v1, p3}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method


# virtual methods
.method public checkAnnotation(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/source/tree/Tree;)V
    .locals 5
    .param p1, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "errorTree"    # Lcom/sun/source/tree/Tree;

    .line 748
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkForError(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 749
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    return-void

    .line 752
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v1

    .line 753
    .local v1, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    const-string v2, "\n"

    invoke-static {v2, v0}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "error":Ljava/lang/String;
    const-string v3, "flowexpr.parse.error"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lorg/checkerframework/framework/source/SourceChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 755
    return-void
.end method

.method public checkClass(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 0
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 769
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 770
    return-void
.end method

.method public checkMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 2
    .param p1, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 783
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkTypeVariables(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 786
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_1

    .line 787
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getMethodReturnType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 789
    .local v0, "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 790
    .local v1, "treeForError":Lcom/sun/source/tree/Tree;
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 792
    .end local v0    # "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "treeForError":Lcom/sun/source/tree/Tree;
    :cond_1
    return-void
.end method

.method public checkType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 8
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "errorTree"    # Lcom/sun/source/tree/Tree;

    .line 686
    new-instance v0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;-><init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 687
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 690
    :cond_0
    invoke-interface {p2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_3

    .line 691
    move-object v1, p2

    check-cast v1, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v1}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v1

    .line 692
    .local v1, "modifiers":Lcom/sun/source/tree/ModifiersTree;
    move-object v2, p2

    check-cast v2, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v2}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object p2

    .line 693
    invoke-interface {v1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/AnnotationTree;

    .line 694
    .local v3, "annoTree":Lcom/sun/source/tree/AnnotationTree;
    iget-object v4, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->annoToElements:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 695
    .local v5, "annoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 696
    move-object p2, v3

    .line 697
    goto :goto_2

    .line 699
    .end local v5    # "annoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    goto :goto_1

    .line 700
    .end local v3    # "annoTree":Lcom/sun/source/tree/AnnotationTree;
    :cond_2
    :goto_2
    goto :goto_0

    .line 702
    .end local v1    # "modifiers":Lcom/sun/source/tree/ModifiersTree;
    :cond_3
    invoke-virtual {p0, p2, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->reportErrors(Lcom/sun/source/tree/Tree;Ljava/util/List;)V

    .line 703
    return-void

    .line 688
    :cond_4
    :goto_3
    return-void
.end method

.method public createDependentTypesTreeAnnotator(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 131
    new-instance v0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;

    invoke-direct {v0, p1, p0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V

    return-object v0
.end method

.method public hasDependentAnnotations()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->annoToElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected reportErrors(Lcom/sun/source/tree/Tree;Ljava/util/List;)V
    .locals 4
    .param p1, "errorTree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;",
            ">;)V"
        }
    .end annotation

    .line 706
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    return-void

    .line 709
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 710
    .local v0, "errorsFormatted":Ljava/util/StringJoiner;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    .line 711
    .local v2, "dte":Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;
    invoke-virtual {v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->format()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 712
    .end local v2    # "dte":Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;
    goto :goto_0

    .line 713
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v1

    .line 714
    .local v1, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    nop

    .line 715
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "expression.unparsable.type.invalid"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 714
    invoke-virtual {v1, v2, p1}, Lorg/checkerframework/framework/source/SourceChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 717
    return-void
.end method

.method public standardizeAnnotation(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p3, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "useLocalScope"    # Z

    .line 573
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->isExpressionAnno(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    return-object p3

    .line 576
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDependentTypeAnnotation(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public standardizeClass(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "ele"    # Ljavax/lang/model/element/Element;

    .line 332
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 336
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_1

    .line 337
    return-void

    .line 339
    :cond_1
    invoke-static {p3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfImplicitReceiver(Ljavax/lang/model/element/Element;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 340
    .local v1, "receiverF":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 341
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 342
    .local v2, "classContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-direct {p0, v2, v0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 343
    return-void
.end method

.method public standardizeExpression(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "annotatedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 450
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 454
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_1

    .line 455
    return-void

    .line 457
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    .line 458
    .local v1, "enclosingClass":Lcom/sun/source/tree/Tree;
    if-nez v1, :cond_2

    .line 459
    return-void

    .line 461
    :cond_2
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 463
    .local v2, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    nop

    .line 464
    invoke-static {v0, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfPseudoReceiver(Lcom/sun/source/util/TreePath;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 466
    .local v3, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v5, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 469
    invoke-static {v5, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->getParametersOfEnclosingMethod(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/util/TreePath;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 470
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 471
    .local v4, "localContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-direct {p0, v4, v0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 472
    return-void
.end method

.method public standardizeFieldAccess(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 430
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isClassLiteral(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    return-void

    .line 437
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 438
    .local v0, "ele":Ljavax/lang/model/element/Element;
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_2

    .line 439
    return-void

    .line 442
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 443
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 444
    .local v1, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 445
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 446
    .local v2, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 447
    return-void
.end method

.method public standardizeNewClassTree(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 281
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 286
    .local v0, "path":Lcom/sun/source/util/TreePath;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    .line 287
    .local v1, "enclosingClass":Lcom/sun/source/tree/Tree;
    if-nez v1, :cond_1

    .line 288
    return-void

    .line 290
    :cond_1
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 291
    .local v2, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    nop

    .line 292
    invoke-static {v0, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfPseudoReceiver(Lcom/sun/source/util/TreePath;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 293
    .local v3, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v5, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 296
    invoke-static {v5, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->getParametersOfEnclosingMethod(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/util/TreePath;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 297
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 298
    .local v4, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-direct {p0, v4, v0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 299
    return-void
.end method

.method public standardizeReturnType(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 4
    .param p1, "m"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 308
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    return-void

    .line 315
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 316
    .local v0, "ele":Ljavax/lang/model/element/Element;
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 318
    .local v1, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 320
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v2

    .line 319
    invoke-static {p1, v1, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v2

    .line 321
    .local v2, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 322
    return-void
.end method

.method protected standardizeString(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Ljava/lang/String;
    .locals 3
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p4, "useLocalScope"    # Z

    .line 534
    invoke-static {p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->isExpressionError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    return-object p1

    .line 538
    :cond_0
    nop

    .line 539
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 540
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-nez v0, :cond_1

    .line 541
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    const-string v2, " "

    invoke-direct {v1, p1, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 543
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 544
    .end local v0    # "result":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;)V

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public standardizeVariable(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "ele"    # Ljavax/lang/model/element/Element;

    .line 353
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 358
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_1

    .line 359
    return-void

    .line 361
    :cond_1
    sget-object v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 419
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected element kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :pswitch_0
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_3

    .line 405
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/IdentifierTree;

    .line 406
    invoke-static {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 408
    .local v1, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    instance-of v2, v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v2, :cond_2

    .line 409
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    goto :goto_0

    .line 410
    :cond_2
    move-object v2, v1

    :goto_0
    move-object v1, v2

    .line 411
    .local v1, "receiverF":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_1

    .line 412
    .end local v1    # "receiverF":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_3
    invoke-static {p3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfImplicitReceiver(Ljavax/lang/model/element/Element;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 414
    .restart local v1    # "receiverF":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_1
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 415
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 416
    .local v2, "fieldContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-direct {p0, v2, v0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 417
    goto :goto_2

    .line 392
    .end local v1    # "receiverF":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v2    # "fieldContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    :pswitch_1
    invoke-static {p3}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 393
    .local v1, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    nop

    .line 394
    invoke-static {v0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfPseudoReceiver(Lcom/sun/source/util/TreePath;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 395
    .local v2, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 396
    invoke-static {v3, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->getParametersOfEnclosingMethod(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/util/TreePath;)Ljava/util/List;

    move-result-object v3

    .line 397
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    new-instance v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v5, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 398
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 399
    .local v4, "localContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-direct {p0, v4, v0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 400
    goto :goto_2

    .line 363
    .end local v1    # "enclosingType":Ljavax/lang/model/type/TypeMirror;
    .end local v2    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v4    # "localContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    :pswitch_2
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    aput-object v4, v2, v3

    .line 366
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 364
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 368
    .local v1, "enclTree":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_4

    .line 370
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/MethodTree;

    .line 371
    .local v2, "methodTree":Lcom/sun/source/tree/MethodTree;
    invoke-static {p3}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 372
    .local v3, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 374
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v4

    .line 373
    invoke-static {v2, v3, v4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v4

    .line 375
    .local v4, "parameterContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-direct {p0, v4, v0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 376
    .end local v2    # "methodTree":Lcom/sun/source/tree/MethodTree;
    .end local v3    # "enclosingType":Ljavax/lang/model/type/TypeMirror;
    .end local v4    # "parameterContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    goto :goto_2

    .line 378
    :cond_4
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 379
    .local v2, "lambdaTree":Lcom/sun/source/tree/LambdaExpressionTree;
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 381
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v3

    .line 380
    invoke-static {v2, v0, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForLambda(Lcom/sun/source/tree/LambdaExpressionTree;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v3

    .line 385
    .local v3, "parameterContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 387
    .end local v2    # "lambdaTree":Lcom/sun/source/tree/LambdaExpressionTree;
    .end local v3    # "parameterContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    nop

    .line 426
    .end local v1    # "enclTree":Lcom/sun/source/tree/Tree;
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public standardizeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "elt"    # Ljavax/lang/model/element/Element;

    .line 475
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    return-void

    .line 479
    :cond_0
    sget-object v0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 485
    .local v0, "tree":Lcom/sun/source/tree/Tree;
    if-nez v0, :cond_2

    .line 486
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_1

    .line 491
    return-void

    .line 493
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": tree not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_2
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    if-nez v1, :cond_3

    .line 498
    return-void

    .line 501
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeVariable(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 502
    nop

    .line 506
    .end local v0    # "tree":Lcom/sun/source/tree/Tree;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public viewpointAdaptConstructor(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 2
    .param p1, "newClassTree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 175
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 176
    .local v0, "receiverTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->viewpointAdaptExecutable(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method public viewpointAdaptMethod(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 2
    .param p1, "methodInvocationTree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "methodDeclType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 161
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 162
    .local v0, "receiverTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    .line 163
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->viewpointAdaptExecutable(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)V

    .line 164
    return-void
.end method

.method public viewpointAdaptTypeVariableBounds(Ljavax/lang/model/element/TypeElement;Ljava/util/List;Lcom/sun/source/util/TreePath;)V
    .locals 5
    .param p1, "classDecl"    # Ljavax/lang/model/element/TypeElement;
    .param p3, "pathToUse"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;",
            ">;",
            "Lcom/sun/source/util/TreePath;",
            ")V"
        }
    .end annotation

    .line 144
    .local p2, "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    invoke-static {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfImplicitReceiver(Ljavax/lang/model/element/Element;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 145
    .local v0, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 146
    .local v1, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    .line 147
    .local v3, "bound":Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v1, p3, v4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 148
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v1, p3, v4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeDoNotUseLocals(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 149
    .end local v3    # "bound":Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;
    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method
