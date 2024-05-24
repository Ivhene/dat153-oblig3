.class public Lorg/checkerframework/checker/index/IndexMethodIdentifier;
.super Ljava/lang/Object;
.source "IndexMethodIdentifier.java"


# instance fields
.field private final factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final mathMaxMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mathMinMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mathRandom:Ljavax/lang/model/element/ExecutableElement;

.field private final randomNextDouble:Ljavax/lang/model/element/ExecutableElement;

.field private final randomNextInt:Ljavax/lang/model/element/ExecutableElement;

.field private final stringLength:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 6
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 41
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 42
    .local v0, "processingEnv":Ljavax/annotation/processing/ProcessingEnvironment;
    const-string v1, "java.lang.Math"

    const-string v2, "random"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->mathRandom:Ljavax/lang/model/element/ExecutableElement;

    .line 43
    const-string v2, "nextDouble"

    const-string v4, "java.util.Random"

    invoke-static {v4, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->randomNextDouble:Ljavax/lang/model/element/ExecutableElement;

    .line 44
    const-string v2, "nextInt"

    const/4 v5, 0x1

    invoke-static {v4, v2, v5, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->randomNextInt:Ljavax/lang/model/element/ExecutableElement;

    .line 46
    const-string v2, "java.lang.String"

    const-string v4, "length"

    invoke-static {v2, v4, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->stringLength:Ljavax/lang/model/element/ExecutableElement;

    .line 48
    const-string v2, "min"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethods(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->mathMinMethods:Ljava/util/List;

    .line 49
    const-string v2, "max"

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethods(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->mathMaxMethods:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public isLengthOfMethodInvocation(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 84
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isLengthOfMethodInvocation(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v0

    return v0
.end method

.method public isLengthOfMethodInvocation(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 4
    .param p1, "ele"    # Ljavax/lang/model/element/ExecutableElement;

    .line 97
    iget-object v0, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->stringLength:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/LengthOf;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 104
    .local v0, "len":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 105
    return v1

    .line 107
    :cond_1
    const-class v2, Ljava/lang/String;

    .line 108
    const-string v3, "value"

    invoke-static {v0, v3, v2, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "this"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isLengthOfMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 117
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    if-eqz v0, :cond_0

    .line 118
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 119
    .local v0, "methodInvocationNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v1

    .line 120
    .local v1, "methodAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 122
    .local v2, "ele":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p0, v2}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isLengthOfMethodInvocation(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v3

    return v3

    .line 124
    .end local v0    # "methodInvocationNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .end local v1    # "methodAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .end local v2    # "ele":Ljavax/lang/model/element/ExecutableElement;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMathMax(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "methodTree"    # Lcom/sun/source/tree/Tree;

    .line 60
    iget-object v0, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 61
    .local v0, "processingEnv":Ljavax/annotation/processing/ProcessingEnvironment;
    iget-object v1, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->mathMaxMethods:Ljava/util/List;

    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    return v1
.end method

.method public isMathMin(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "methodTree"    # Lcom/sun/source/tree/Tree;

    .line 54
    iget-object v0, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 55
    .local v0, "processingEnv":Ljavax/annotation/processing/ProcessingEnvironment;
    iget-object v1, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->mathMinMethods:Ljava/util/List;

    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    return v1
.end method

.method public isMathRandom(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 66
    iget-object v0, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->mathRandom:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v0, p2}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method public isRandomNextDouble(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 71
    iget-object v0, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->randomNextDouble:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v0, p2}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method public isRandomNextInt(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 76
    iget-object v0, p0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->randomNextInt:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v0, p2}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method
