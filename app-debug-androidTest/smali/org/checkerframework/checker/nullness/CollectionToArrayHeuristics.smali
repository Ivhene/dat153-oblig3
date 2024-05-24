.class public Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;
.super Ljava/lang/Object;
.source "CollectionToArrayHeuristics.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final atypeFactory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

.field private final collectionToArrayE:Ljavax/lang/model/element/ExecutableElement;

.field private final collectionType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final size:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)V
    .locals 3
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "factory"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 51
    iput-object p2, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->atypeFactory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 53
    const-class v0, Ljava/util/Collection;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T[]"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "toArray"

    invoke-static {v0, v2, p1, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;[Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->collectionToArrayE:Ljavax/lang/model/element/ExecutableElement;

    .line 55
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->size:Ljavax/lang/model/element/ExecutableElement;

    .line 56
    nop

    .line 57
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    const-string v1, "java.util.Collection"

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->collectionType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 58
    return-void
.end method

.method private isHandledArrayCreation(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z
    .locals 6
    .param p1, "argument"    # Lcom/sun/source/tree/Tree;
    .param p2, "receiver"    # Ljava/lang/String;

    .line 107
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 108
    return v2

    .line 110
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/NewArrayTree;

    .line 113
    .local v0, "newArr":Lcom/sun/source/tree/NewArrayTree;
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    return v1

    .line 117
    :cond_1
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 121
    .local v1, "dimension":Lcom/sun/source/tree/Tree;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    return v4

    .line 126
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->size:Ljavax/lang/model/element/ExecutableElement;

    iget-object v4, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v1, v3, v4}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/MethodInvocationTree;

    .line 128
    .local v2, "invok":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-interface {v2}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->receiverName(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "invokReceiver":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 132
    .end local v2    # "invok":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v3    # "invokReceiver":Ljava/lang/String;
    :cond_3
    return v2

    .line 117
    .end local v1    # "dimension":Lcom/sun/source/tree/Tree;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private isNonNullReceiver(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 141
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->atypeFactory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 142
    .local v0, "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->atypeFactory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->collectionType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 143
    invoke-static {v1, v0, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 145
    .local v1, "collection":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 147
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    .line 148
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v4, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->atypeFactory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 149
    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 150
    :cond_1
    :goto_0
    return v3
.end method

.method private receiverName(Lcom/sun/source/tree/Tree;)Ljava/lang/String;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 162
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    const-string v0, "this"

    return-object v0
.end method

.method private setComponentNullness(ZLorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "isNonNull"    # Z
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 92
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 93
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 94
    .local v0, "compType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->atypeFactory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    if-eqz p1, :cond_0

    iget-object v1, v1, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    :goto_0
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 95
    return-void

    .line 92
    .end local v0    # "compType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public handle(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "method"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 68
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->collectionToArrayE:Ljavax/lang/model/element/ExecutableElement;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 71
    .local v0, "argument":Lcom/sun/source/tree/Tree;
    nop

    .line 72
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->receiverName(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->isHandledArrayCreation(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z

    move-result v2

    .line 73
    .local v2, "argIsArrayCreation":Z
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->isNonNullReceiver(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v3

    .line 74
    .local v3, "receiverIsNonNull":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->setComponentNullness(ZLorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 78
    if-nez v3, :cond_2

    .line 79
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-direct {p0, v1, v4}, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->setComponentNullness(ZLorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_1

    .line 69
    .end local v0    # "argument":Lcom/sun/source/tree/Tree;
    .end local v2    # "argIsArrayCreation":Z
    .end local v3    # "receiverIsNonNull":Z
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 82
    :cond_2
    :goto_1
    return-void
.end method
