.class public Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;
.super Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
.source "KeyForAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;,
        Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForTypeHierarchy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
        "Lorg/checkerframework/checker/nullness/KeyForValue;",
        "Lorg/checkerframework/checker/nullness/KeyForStore;",
        "Lorg/checkerframework/checker/nullness/KeyForTransfer;",
        "Lorg/checkerframework/checker/nullness/KeyForAnalysis;",
        ">;"
    }
.end annotation


# instance fields
.field protected final KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

.field protected final KEYFORBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field protected final KEYFOR_NAME:Ljava/lang/String;

.field protected final UNKNOWNKEYFOR:Ljavax/lang/model/element/AnnotationMirror;

.field private final keyForPropagator:Lorg/checkerframework/checker/nullness/KeyForPropagator;

.field private final mapContainsKey:Ljavax/lang/model/element/ExecutableElement;

.field private final mapGet:Ljavax/lang/model/element/ExecutableElement;

.field private final mapPut:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 6
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    .line 43
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 45
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/nullness/qual/UnknownKeyFor;

    .line 46
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->UNKNOWNKEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 48
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v3, Lorg/checkerframework/checker/nullness/qual/KeyForBottom;

    .line 49
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFORBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 52
    const-class v2, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR_NAME:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 56
    const-string v3, "java.util.Map"

    const-string v4, "containsKey"

    invoke-static {v3, v4, v0, v2}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapContainsKey:Ljavax/lang/model/element/ExecutableElement;

    .line 58
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 59
    const-string v4, "get"

    invoke-static {v3, v4, v0, v2}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapGet:Ljavax/lang/model/element/ExecutableElement;

    .line 61
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 62
    const-string v4, "put"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v2}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapPut:Ljavax/lang/model/element/ExecutableElement;

    .line 64
    new-instance v2, Lorg/checkerframework/checker/nullness/KeyForPropagator;

    invoke-direct {v2, v1}, Lorg/checkerframework/checker/nullness/KeyForPropagator;-><init>(Ljavax/lang/model/element/AnnotationMirror;)V

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->keyForPropagator:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    .line 71
    const-class v1, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "org.checkerframework.checker.nullness.compatqual.KeyForDecl"

    invoke-virtual {p0, v4, v1, v0, v3}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 73
    const-class v1, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "org.checkerframework.checker.nullness.compatqual.KeyForType"

    invoke-virtual {p0, v3, v1, v0, v2}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->postInit()V

    .line 77
    return-void
.end method


# virtual methods
.method public constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;

    .line 88
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    .line 89
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->keyForPropagator:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    iget-object v2, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p0}, Lorg/checkerframework/checker/nullness/KeyForPropagator;->propagateNewClassTree(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;)V

    .line 90
    return-object v0
.end method

.method public createKeyForAnnotationMirrorWithValue(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 159
    .local v0, "values":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->createKeyForAnnotationMirrorWithValue(Ljava/util/LinkedHashSet;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createKeyForAnnotationMirrorWithValue(Ljava/util/LinkedHashSet;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 146
    .local p1, "values":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    const-class v2, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 147
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 150
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 188
    new-instance v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;-><init>(Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/nullness/qual/UnknownKeyFor;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/nullness/qual/KeyForBottom;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/checkerframework/checker/nullness/qual/PolyKeyFor;

    aput-object v3, v1, v2

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 104
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 105
    invoke-super {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;

    iget-object v3, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->keyForPropagator:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    invoke-direct {v2, p0, v3}, Lorg/checkerframework/checker/nullness/KeyForPropagationTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/checker/nullness/KeyForPropagator;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 104
    return-object v0
.end method

.method protected createTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;
    .locals 6

    .line 95
    new-instance v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForTypeHierarchy;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 97
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 98
    const-string v4, "ignoreRawTypeArguments"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 99
    const-string v5, "invariantArrays"

    invoke-virtual {v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForTypeHierarchy;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/QualifierHierarchy;ZZ)V

    .line 95
    return-object v0
.end method

.method public isKeyForMap(Ljava/lang/String;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 6
    .param p1, "mapExpression"    # Ljava/lang/String;
    .param p2, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "maps":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 173
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v2, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 174
    .local v2, "keyForAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 175
    const-string v4, "value"

    const-class v5, Ljava/lang/String;

    invoke-static {v2, v4, v5, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getInferredValueFor(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/nullness/KeyForValue;

    .line 178
    .local v4, "value":Lorg/checkerframework/checker/nullness/KeyForValue;
    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {v4}, Lorg/checkerframework/checker/nullness/KeyForValue;->getKeyForMaps()Ljava/util/Set;

    move-result-object v0

    .line 183
    .end local v4    # "value":Lorg/checkerframework/checker/nullness/KeyForValue;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method isMapContainsKey(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 293
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapContainsKey:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method isMapContainsKey(Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 308
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapContainsKey:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/dataflow/util/NodeUtils;->isMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method isMapGet(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 298
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapGet:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method isMapGet(Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 313
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapGet:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/dataflow/util/NodeUtils;->isMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method isMapPut(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 303
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapPut:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method isMapPut(Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 318
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->mapPut:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/dataflow/util/NodeUtils;->isMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method public shouldWarnIfStubRedundantWithBytecode()Z
    .locals 1

    .line 324
    const/4 v0, 0x0

    return v0
.end method
