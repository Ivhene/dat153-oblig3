.class public Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
.super Ljava/lang/Object;
.source "AnnotatedTypeFactory.java"

# interfaces
.implements Lorg/checkerframework/javacutil/AnnotationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANNOTATION_CACHE_SIZE:I = 0x1f4

.field private static final DEFAULT_CACHE_SIZE:I = 0x12c

.field static final minusConstant:Ljava/util/regex/Pattern;

.field static final plusConstant:Ljava/util/regex/Pattern;

.field private static uidCounter:I


# instance fields
.field private final aliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationClassNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

.field private final artificialTreeToEnclosingElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheDeclAnnos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field private final classAndMethodTreeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final declAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private final elementCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final elementToTreeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end field

.field protected final elements:Ljavax/lang/model/util/Elements;

.field protected final fromExpressionTreeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected final fromMemberTreeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected final fromTypeTreeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field public final ignoreUninferredTypeArguments:Z

.field private final infer:Z

.field private final inheritedAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

.field protected final objectGetClass:Ljavax/lang/model/element/ExecutableElement;

.field protected final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field protected qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field protected qualifierUpperBounds:Lorg/checkerframework/framework/type/QualifierUpperBounds;

.field protected reflectionResolver:Lorg/checkerframework/common/reflection/ReflectionResolver;

.field protected root:Lcom/sun/source/tree/CompilationUnitTree;

.field public shouldCache:Z

.field public final stubTypes:Lorg/checkerframework/framework/stub/StubTypes;

.field private final supportedQualNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedQuals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

.field protected final trees:Lcom/sun/source/util/Trees;

.field protected typeArgumentInference:Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;

.field protected final typeFormatter:Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;

.field protected typeHierarchy:Lorg/checkerframework/framework/type/TypeHierarchy;

.field protected typeVarSubstitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

.field public final types:Ljavax/lang/model/util/Types;

.field public final uid:I

.field protected final visitorState:Lorg/checkerframework/framework/type/VisitorState;

.field private wholeProgramInference:Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    nop

    .line 310
    const/4 v0, 0x0

    sput v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->uidCounter:I

    .line 3782
    const-string v0, " *\\+ *(-?[0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->plusConstant:Ljava/util/regex/Pattern;

    .line 3783
    const-string v0, " *- *(-?[0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->minusConstant:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    nop

    .line 232
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->inheritedAnnotations:Ljava/util/Set;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->aliases:Ljava/util/Map;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declAliases:Ljava/util/Map;

    .line 402
    sget v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->uidCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->uidCounter:I

    iput v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->uid:I

    .line 403
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 405
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 406
    invoke-static {v0}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->trees:Lcom/sun/source/util/Trees;

    .line 407
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    .line 408
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 409
    new-instance v1, Lorg/checkerframework/framework/type/VisitorState;

    invoke-direct {v1}, Lorg/checkerframework/framework/type/VisitorState;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 411
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQuals:Ljava/util/Set;

    .line 412
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQualNames:Ljava/util/Set;

    .line 413
    new-instance v1, Lorg/checkerframework/framework/stub/StubTypes;

    invoke-direct {v1, p0}, Lorg/checkerframework/framework/stub/StubTypes;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->stubTypes:Lorg/checkerframework/framework/stub/StubTypes;

    .line 415
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->cacheDeclAnnos:Ljava/util/Map;

    .line 417
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->artificialTreeToEnclosingElementMap:Ljava/util/Map;

    .line 419
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTreePathCacher()Lorg/checkerframework/framework/util/TreePathCacher;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    .line 421
    const-string v1, "atfDoNotCache"

    invoke-virtual {p1, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    .line 422
    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getCacheSize()I

    move-result v1

    .line 424
    .local v1, "cacheSize":I
    invoke-static {v1}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->classAndMethodTreeCache:Ljava/util/Map;

    .line 425
    invoke-static {v1}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromExpressionTreeCache:Ljava/util/Map;

    .line 426
    invoke-static {v1}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMemberTreeCache:Ljava/util/Map;

    .line 427
    invoke-static {v1}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTreeCache:Ljava/util/Map;

    .line 428
    invoke-static {v1}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementCache:Ljava/util/Map;

    .line 429
    invoke-static {v1}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementToTreeCache:Ljava/util/Map;

    .line 430
    nop

    .line 432
    const/16 v2, 0x1f4

    invoke-static {v2}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v2

    .line 431
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->annotationClassNames:Ljava/util/Map;

    .line 433
    .end local v1    # "cacheSize":I
    goto :goto_0

    .line 434
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->classAndMethodTreeCache:Ljava/util/Map;

    .line 435
    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromExpressionTreeCache:Ljava/util/Map;

    .line 436
    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMemberTreeCache:Ljava/util/Map;

    .line 437
    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTreeCache:Ljava/util/Map;

    .line 438
    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementCache:Ljava/util/Map;

    .line 439
    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementToTreeCache:Ljava/util/Map;

    .line 440
    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->annotationClassNames:Ljava/util/Map;

    .line 443
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createAnnotatedTypeFormatter()Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeFormatter:Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;

    .line 444
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createAnnotationFormatter()Lorg/checkerframework/framework/util/AnnotationFormatter;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->annotationFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 446
    const-string v1, "infer"

    invoke-virtual {p1, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->infer:Z

    .line 447
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checkInvalidOptionsInferSignatures()V

    .line 449
    new-instance v1, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;

    .line 452
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NullnessAnnotatedTypeFactory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;-><init>(Z)V

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->wholeProgramInference:Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    .line 454
    :cond_1
    const-string v1, "conservativeUninferredTypeArguments"

    invoke-virtual {p1, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    .line 456
    const-string v1, "getClass"

    const/4 v2, 0x0

    const-string v3, "java.lang.Object"

    invoke-static {v3, v1, v2, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->objectGetClass:Ljavax/lang/model/element/ExecutableElement;

    .line 457
    return-void
.end method

.method private addOrMerge(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p2, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")V"
        }
    .end annotation

    .line 3213
    .local p1, "results":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3233
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3235
    :goto_0
    return-void
.end method

.method private checkSupportedQuals()V
    .locals 8

    .line 465
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQuals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 470
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQuals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 472
    .local v1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v2, Ljava/lang/annotation/Target;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Target;

    invoke-interface {v2}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v2

    .line 473
    .local v2, "elements":[Ljava/lang/annotation/ElementType;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, "otherElementTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/ElementType;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 475
    .local v6, "element":Ljava/lang/annotation/ElementType;
    sget-object v7, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    if-eq v6, v7, :cond_0

    sget-object v7, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    if-eq v6, v7, :cond_0

    .line 478
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    .end local v6    # "element":Ljava/lang/annotation/ElementType;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 481
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "The @Target meta-annotation on type qualifier "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v4, " must not contain "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 487
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 488
    const-string v5, " or "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 489
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ne v4, v6, :cond_3

    .line 490
    const-string v5, ", or "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 491
    :cond_3
    if-eqz v4, :cond_4

    .line 492
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_4
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 496
    .end local v4    # "i":I
    :cond_5
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4

    .line 499
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "elements":[Ljava/lang/annotation/ElementType;
    .end local v3    # "otherElementTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/ElementType;>;"
    :cond_6
    goto/16 :goto_0

    .line 500
    :cond_7
    return-void

    .line 468
    :cond_8
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Found no supported qualifiers."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static createQualifierHierarchy(Ljavax/lang/model/util/Elements;Ljava/util/Set;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 8
    .param p0, "elements"    # Ljavax/lang/model/util/Elements;
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;",
            "Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;",
            ")",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;"
        }
    .end annotation

    .line 671
    .local p1, "supportedTypeQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 672
    .local v1, "typeQualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    nop

    .line 673
    invoke-static {p0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 674
    .local v2, "typeQualifierAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->addQualifier(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 677
    const-class v3, Lorg/checkerframework/framework/qual/PolymorphicQualifier;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 678
    const-class v3, Lorg/checkerframework/framework/qual/SubtypeOf;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotatedTypeFactory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is polymorphic and specifies super qualifiers. Remove the @org.checkerframework.framework.qual.SubtypeOf or @org.checkerframework.framework.qual.PolymorphicQualifier annotation from it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_1
    const-class v3, Lorg/checkerframework/framework/qual/SubtypeOf;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 696
    const-class v3, Lorg/checkerframework/framework/qual/SubtypeOf;

    .line 697
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/qual/SubtypeOf;

    invoke-interface {v3}, Lorg/checkerframework/framework/qual/SubtypeOf;->value()[Ljava/lang/Class;

    move-result-object v3

    .line 698
    .local v3, "superQualifiers":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 699
    .local v6, "superQualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 704
    invoke-static {p0, v6}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 705
    .local v7, "superAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2, v7}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->addSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 698
    .end local v6    # "superQualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v7    # "superAnno":Ljavax/lang/model/element/AnnotationMirror;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 700
    .restart local v6    # "superQualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    .line 702
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Found unsupported qualifier in SubTypeOf: %s on qualifier: %s"

    invoke-direct {v0, v5, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 707
    .end local v1    # "typeQualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "typeQualifierAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "superQualifiers":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v6    # "superQualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_3
    goto/16 :goto_0

    .line 690
    .restart local v1    # "typeQualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .restart local v2    # "typeQualifierAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v3, "AnnotatedTypeFactory: %s does not specify its super qualifiers.%nAdd an @org.checkerframework.framework.qual.SubtypeOf annotation to it,%nor if it is an alias, exclude it from `createSupportedTypeQualifiers()`.%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 709
    .end local v1    # "typeQualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "typeQualifierAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    invoke-virtual {p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->build()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 711
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 719
    return-object v0

    .line 712
    :cond_6
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnnotatedTypeFactory: invalid qualifier hierarchy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 714
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fromClass(Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;

    .line 1205
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->fromClassTree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method private fromExpression(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 1251
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromExpressionTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromExpressionTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 1255
    :cond_0
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->fromExpression(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1257
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_1

    .line 1261
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromExpressionTreeCache:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    :cond_1
    return-object v0
.end method

.method private final fromMember(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1219
    instance-of v0, p1, Lcom/sun/source/tree/MethodTree;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sun/source/tree/VariableTree;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypeFactory.fromMember: not a method or variable declaration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1224
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMemberTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1225
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMemberTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 1227
    :cond_2
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->fromMember(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1228
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v1, :cond_3

    .line 1229
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMemberTreeCache:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :cond_3
    return-object v0
.end method

.method private fromNewClassContextHelper(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "ctxtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2248
    sget-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2296
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2294
    :pswitch_0
    goto :goto_1

    .line 2291
    :pswitch_1
    goto :goto_1

    .line 2286
    :pswitch_2
    goto :goto_1

    .line 2250
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2252
    .local v0, "adctx":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2254
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 2255
    .local v1, "oldArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    .line 2256
    .local v2, "newArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2257
    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 2258
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v5, v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->actualType:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v6, v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->actualType:Ljavax/lang/model/type/TypeMirror;

    .line 2257
    invoke-interface {v4, v5, v6}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2260
    return-void

    .line 2256
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2264
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 2276
    .end local v1    # "oldArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v2    # "newArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    nop

    .line 2308
    .end local v0    # "adctx":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_2
    :goto_1
    return-void

    .line 2300
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypeFactory.fromNewClassContextHelper: unexpected context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2304
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;Z)Ljavax/lang/model/element/AnnotationMirror;
    .locals 7
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .param p3, "checkAliases"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 3094
    .local p2, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotations(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v0

    .line 3096
    .local v0, "declAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 3097
    .local v2, "am":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3098
    return-object v2

    .line 3100
    .end local v2    # "am":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 3102
    :cond_1
    if-eqz p3, :cond_4

    .line 3103
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declAliases:Ljava/util/Map;

    .line 3104
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/javacutil/Pair;

    .line 3105
    .local v1, "aliases":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;>;"
    if-eqz v1, :cond_4

    .line 3106
    iget-object v2, v1, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 3107
    .local v3, "alias":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/AnnotationMirror;

    .line 3108
    .local v5, "am":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v5, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3110
    iget-object v2, v1, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    return-object v2

    .line 3112
    .end local v5    # "am":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_2

    .line 3113
    .end local v3    # "alias":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_3
    goto :goto_1

    .line 3117
    .end local v1    # "aliases":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;>;"
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getExpressionAndOffset(Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;
    .locals 7
    .param p0, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3806
    move-object v0, p0

    .line 3807
    .local v0, "expr":Ljava/lang/String;
    const-string v1, "0"

    .line 3811
    .local v1, "offset":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3813
    const-string v2, "^\\([^()]\\)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3814
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3817
    :cond_0
    sget-object v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->plusConstant:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3818
    .local v2, "mPlus":Ljava/util/regex/Matcher;
    sget-object v4, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->minusConstant:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 3819
    .local v4, "mMinus":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 3820
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3821
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3822
    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3823
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3824
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->negateConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3827
    :cond_2
    :goto_0
    const-string v3, "-0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3828
    const-string v1, "0"

    .line 3831
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 3832
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 3834
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v3

    return-object v3
.end method

.method private getFunctionalInterfaceType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 3513
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 3514
    .local v0, "parentTree":Lcom/sun/source/tree/Tree;
    sget-object v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 3632
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find functional interface from assignment context. Unexpected tree type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3635
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " For lambda tree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3607
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/ConditionalExpressionTree;

    .line 3609
    .local v1, "conditionalExpressionTree":Lcom/sun/source/tree/ConditionalExpressionTree;
    nop

    .line 3610
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 3611
    .local v2, "falseType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 3612
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 3626
    .local v3, "trueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 3627
    invoke-static {p0, v3, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 3628
    .local v4, "conditionalType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-direct {p0, v5, v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3629
    return-object v4

    .line 3628
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 3602
    .end local v1    # "conditionalExpressionTree":Lcom/sun/source/tree/ConditionalExpressionTree;
    .end local v2    # "falseType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "trueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "conditionalType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 3603
    .local v1, "enclosingLambda":Lcom/sun/source/tree/LambdaExpressionTree;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFunctionTypeFromTree(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    .line 3604
    .local v2, "methodExe":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    return-object v3

    .line 3585
    .end local v1    # "enclosingLambda":Lcom/sun/source/tree/LambdaExpressionTree;
    .end local v2    # "methodExe":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :pswitch_2
    nop

    .line 3587
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sun/source/tree/Tree$Kind;

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    aput-object v5, v4, v2

    .line 3589
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3586
    invoke-static {v1, v3}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 3592
    .local v1, "enclosing":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    .line 3593
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/MethodTree;

    .line 3594
    .local v2, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    invoke-interface {v2}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    return-object v3

    .line 3596
    .end local v2    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 3597
    .local v2, "enclosingLambda":Lcom/sun/source/tree/LambdaExpressionTree;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFunctionTypeFromTree(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v3

    .line 3598
    .local v3, "methodExe":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    return-object v4

    .line 3580
    .end local v1    # "enclosing":Lcom/sun/source/tree/Tree;
    .end local v2    # "enclosingLambda":Lcom/sun/source/tree/LambdaExpressionTree;
    .end local v3    # "methodExe":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :pswitch_3
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/AssignmentTree;

    .line 3581
    .local v1, "assignmentTree":Lcom/sun/source/tree/AssignmentTree;
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2, v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3582
    invoke-interface {v1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 3581
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3575
    .end local v1    # "assignmentTree":Lcom/sun/source/tree/AssignmentTree;
    :pswitch_4
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/VariableTree;

    .line 3576
    .local v1, "varTree":Lcom/sun/source/tree/VariableTree;
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2, v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3577
    invoke-interface {v1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 3576
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3560
    .end local v1    # "varTree":Lcom/sun/source/tree/VariableTree;
    :pswitch_5
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    .line 3561
    .local v1, "method":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3562
    .local v3, "index":I
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v4

    .line 3563
    .local v4, "exe":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v5, v4, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3564
    invoke-static {v5, v3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getAnnotatedTypeMirrorOfParameter(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;I)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 3565
    .local v5, "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_4

    .line 3567
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 3568
    .local v6, "typeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v6, p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 3569
    invoke-virtual {p0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 3571
    .end local v6    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_4
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2, v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3572
    return-object v5

    .line 3571
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3553
    .end local v1    # "method":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v3    # "index":I
    .end local v4    # "exe":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .end local v5    # "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_6
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/NewArrayTree;

    .line 3554
    .local v1, "newArray":Lcom/sun/source/tree/NewArrayTree;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/NewArrayTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    move-result-object v2

    .line 3555
    .local v2, "newArrayATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 3556
    .local v3, "elementATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-direct {p0, v4, v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3557
    return-object v3

    .line 3556
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3542
    .end local v1    # "newArray":Lcom/sun/source/tree/NewArrayTree;
    .end local v2    # "newArrayATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .end local v3    # "elementATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_7
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/NewClassTree;

    .line 3543
    .local v1, "newClass":Lcom/sun/source/tree/NewClassTree;
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3544
    .local v2, "indexOfLambda":I
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v3

    .line 3545
    .local v3, "con":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v4, v3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3546
    invoke-static {v4, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getAnnotatedTypeMirrorOfParameter(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;I)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 3548
    .local v4, "constructorParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 3549
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 3548
    invoke-direct {p0, v5, v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3550
    return-object v4

    .line 3548
    :cond_7
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 3519
    .end local v1    # "newClass":Lcom/sun/source/tree/NewClassTree;
    .end local v2    # "indexOfLambda":I
    .end local v3    # "con":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .end local v4    # "constructorParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_8
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/TypeCastTree;

    .line 3520
    .local v1, "cast":Lcom/sun/source/tree/TypeCastTree;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->trees:Lcom/sun/source/util/Trees;

    .line 3521
    invoke-interface {v1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/source/util/Trees;->getTypeMirror(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 3520
    invoke-direct {p0, v2, v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3522
    invoke-interface {v1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 3523
    .local v2, "castATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_a

    .line 3524
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 3525
    .local v3, "itype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3526
    .local v5, "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 3527
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v7

    .line 3526
    invoke-static {v6, v7}, Lorg/checkerframework/javacutil/TypesUtils;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3528
    return-object v5

    .line 3530
    .end local v5    # "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_8
    goto :goto_0

    .line 3533
    :cond_9
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    filled-new-array {v2, v1, p1}, [Ljava/lang/Object;

    move-result-object v5

    .line 3534
    const-string v6, "Expected the type of a cast tree in an assignment context to contain a functional interface bound. Found type: %s for tree: %s in lambda tree: %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3539
    .end local v3    # "itype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    :cond_a
    return-object v2

    .line 3520
    .end local v2    # "castATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_b
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3516
    .end local v1    # "cast":Lcom/sun/source/tree/TypeCastTree;
    :pswitch_9
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFunctionalInterfaceType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getMostInnerClassOrMethod(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 2819
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    return-object v0

    .line 2822
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2823
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    return-object v0

    .line 2826
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 2827
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-eqz v0, :cond_5

    .line 2833
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 2834
    .local v2, "pathTree":Lcom/sun/source/tree/Tree;
    instance-of v3, v2, Lcom/sun/source/tree/MethodTree;

    if-eqz v3, :cond_2

    .line 2835
    move-object v1, v2

    check-cast v1, Lcom/sun/source/tree/MethodTree;

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    return-object v1

    .line 2836
    :cond_2
    instance-of v3, v2, Lcom/sun/source/tree/ClassTree;

    if-eqz v3, :cond_3

    .line 2837
    move-object v1, v2

    check-cast v1, Lcom/sun/source/tree/ClassTree;

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    return-object v1

    .line 2839
    .end local v2    # "pathTree":Lcom/sun/source/tree/Tree;
    :cond_3
    goto :goto_0

    .line 2841
    :cond_4
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "AnnotatedTypeFactory.getMostInnerClassOrMethod: cannot be here"

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2828
    :cond_5
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    .line 2831
    invoke-static {v2, p1}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    filled-new-array {v2, v3, p1, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 2829
    const-string v3, "AnnotatedTypeFactory.getMostInnerClassOrMethod: getPath(tree)=>null%n  TreePath.getPath(root, tree)=>%s\n  for tree (%s) = %s%n  root=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private inheritOverriddenDeclAnnos(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Set;)V
    .locals 10
    .param p1, "elt"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 3179
    .local p2, "results":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    .line 3180
    invoke-static {v0, p0, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->overriddenMethods(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Map;

    move-result-object v0

    .line 3182
    .local v0, "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    if-eqz v0, :cond_3

    .line 3183
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 3184
    .local v2, "superElt":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotations(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v3

    .line 3186
    .local v3, "superAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/AnnotationMirror;

    .line 3189
    .local v5, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 3190
    :try_start_0
    invoke-interface {v5}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 3201
    .local v6, "annotationsOnAnnotation":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 3202
    const-class v7, Lorg/checkerframework/framework/qual/InheritedAnnotation;

    invoke-virtual {p0, v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->inheritedAnnotations:Ljava/util/Set;

    .line 3203
    invoke-static {v7, v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3205
    :cond_0
    invoke-direct {p0, p2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addOrMerge(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 3207
    .end local v5    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v6    # "annotationsOnAnnotation":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    goto :goto_1

    .line 3191
    .restart local v5    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v6

    .line 3194
    .local v6, "cf":Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    iget-object v7, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 3197
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8, v5}, [Ljava/lang/Object;

    move-result-object v8

    .line 3195
    const-string v9, "annotation.not.completed"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    .line 3199
    invoke-interface {v5}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v9

    invoke-interface {v9}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v9

    .line 3194
    invoke-virtual {v7, v8, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3200
    goto :goto_1

    .line 3208
    .end local v2    # "superElt":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "superAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v5    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v6    # "cf":Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    :cond_2
    goto :goto_0

    .line 3210
    :cond_3
    return-void
.end method

.method private isExtendsWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z
    .locals 1
    .param p1, "awt"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 3759
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z
    .locals 6
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "contextTree"    # Lcom/sun/source/tree/Tree;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;

    .line 3642
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3644
    return v2

    .line 3646
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3648
    .local v0, "type":Lcom/sun/tools/javac/code/Type;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/TypesUtils;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3649
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v3, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v3, :cond_2

    .line 3650
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/type/IntersectionType;

    .line 3651
    .local v1, "itype":Ljavax/lang/model/type/IntersectionType;
    invoke-interface {v1}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    .line 3652
    .local v4, "t":Ljavax/lang/model/type/TypeMirror;
    iget-object v5, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/TypesUtils;->isFunctionalInterface(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3655
    return v2

    .line 3657
    .end local v4    # "t":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    goto :goto_0

    .line 3659
    .end local v1    # "itype":Ljavax/lang/model/type/IntersectionType;
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    .line 3663
    invoke-interface {p2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    filled-new-array {v2, v0, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3660
    const-string v3, "Expected the type of %s tree in assignment context to be a functional interface. Found type: %s for tree: %s in lambda tree: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3665
    :cond_3
    return v2
.end method

.method private isSubtype(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;)Z
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "a2"    # Ljavax/lang/model/element/TypeElement;

    .line 1879
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 1880
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1879
    :goto_1
    return v0
.end method

.method private isSyntheticArgument(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 2167
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<*nullchk*>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private final varargs loadTypeAnnotationsFromQualDir([Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 878
    .local p1, "explicitlyListedAnnotations":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createAnnotationClassLoader()Lorg/checkerframework/framework/type/AnnotationClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

    .line 880
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getBundledAnnotationClasses()Ljava/util/Set;

    move-result-object v0

    .line 883
    .local v0, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    if-eqz p1, :cond_0

    .line 884
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 887
    :cond_0
    return-object v0
.end method

.method private makeGroundTargetType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/type/DeclaredType;)V
    .locals 13
    .param p1, "functionalType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "groundTargetJavaType"    # Ljavax/lang/model/type/DeclaredType;

    .line 3680
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3681
    return-void

    .line 3684
    :cond_0
    nop

    .line 3687
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 3685
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVariablesFromUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v0

    .line 3689
    .local v0, "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    new-instance v1, Ljava/util/ArrayList;

    .line 3690
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3691
    .local v1, "newTypeArguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    nop

    .line 3692
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 3693
    invoke-interface {p2}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 3695
    .local v2, "sizesDiffer":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 3696
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3697
    .local v5, "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_7

    .line 3698
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 3700
    .local v6, "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 3702
    .local v7, "wildcardUbType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3705
    invoke-interface {v1, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3706
    :cond_2
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isExtendsWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3708
    if-eqz v2, :cond_3

    .line 3710
    nop

    .line 3711
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 3712
    .local v8, "typeParamUbType":Ljavax/lang/model/type/TypeMirror;
    iget-object v9, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 3716
    invoke-virtual {v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v9

    .line 3713
    invoke-static {v8, v7, v9}, Lorg/checkerframework/javacutil/TypesUtils;->greatestLowerBound(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 3717
    .local v8, "correctArgType":Ljavax/lang/model/type/TypeMirror;
    goto :goto_2

    .line 3718
    .end local v8    # "correctArgType":Ljavax/lang/model/type/TypeMirror;
    :cond_3
    invoke-interface {p2}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/type/TypeMirror;

    .line 3722
    .restart local v8    # "correctArgType":Ljavax/lang/model/type/TypeMirror;
    :goto_2
    iget-object v9, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v9, v7, v8}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3723
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    .local v9, "newArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_3

    .line 3724
    .end local v9    # "newArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_4
    invoke-interface {v8}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v9

    sget-object v10, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v9, v10, :cond_5

    .line 3725
    invoke-virtual {p0, v8, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    .line 3726
    .restart local v9    # "newArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v10, v9

    check-cast v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 3727
    .local v10, "newArgAsTypeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    nop

    .line 3728
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v11

    .line 3730
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v12

    invoke-virtual {v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v12

    .line 3729
    invoke-virtual {v11, v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 3731
    nop

    .line 3732
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v11

    .line 3733
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v12

    invoke-virtual {v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 3734
    .end local v10    # "newArgAsTypeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_3

    .line 3735
    .end local v9    # "newArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_5
    invoke-virtual {p0, v8, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    .line 3736
    .restart local v9    # "newArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 3738
    :goto_3
    invoke-interface {v1, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3739
    .end local v8    # "correctArgType":Ljavax/lang/model/type/TypeMirror;
    .end local v9    # "newArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_4

    .line 3740
    :cond_6
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    invoke-interface {v1, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3695
    .end local v5    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v7    # "wildcardUbType":Ljavax/lang/model/type/TypeMirror;
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 3744
    .end local v3    # "i":I
    :cond_8
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 3749
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 3750
    return-void
.end method

.method public static negateConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "constantExpression"    # Ljava/lang/String;

    .line 3845
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3846
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3848
    :cond_0
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3849
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3851
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldTakeFromReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z
    .locals 1
    .param p1, "methodReceiver"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1722
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static final validAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2956
    if-nez p0, :cond_0

    .line 2957
    const/4 v0, 0x0

    return v0

    .line 2959
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->validType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method private static final validType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 2968
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2969
    return v0

    .line 2971
    :cond_0
    sget-object v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2977
    const/4 v0, 0x1

    return v0

    .line 2975
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected adaptGetClassReturnTypeToReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 12
    .param p1, "getClassType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "receiverType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2052
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 2054
    .local v0, "newBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 2055
    .local v1, "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v1, :cond_2

    .line 2056
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2057
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2067
    nop

    .line 2068
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2069
    .local v2, "returnAdt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    .line 2076
    .local v3, "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 2077
    .local v4, "classWildcardArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v5

    .line 2078
    .local v5, "newAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 2079
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v6

    .line 2080
    .local v6, "typeBoundAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 2081
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    .line 2082
    .local v7, "wildcardBoundAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/AnnotationMirror;

    .line 2083
    .local v9, "typeBoundAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v10, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 2084
    invoke-virtual {v10, v7, v9}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v10

    .line 2085
    .local v10, "wildcardAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v11, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v11, v9, v10}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2086
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2088
    :cond_0
    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2090
    .end local v9    # "typeBoundAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v10    # "wildcardAnno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    goto :goto_0

    .line 2091
    :cond_1
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 2093
    invoke-virtual {v4, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 2094
    return-void

    .line 2058
    .end local v2    # "returnAdt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v3    # "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v4    # "classWildcardArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v5    # "newAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v6    # "typeBoundAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v7    # "wildcardBoundAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_2
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type passed to AnnotatedTypes.adaptGetClassReturnTypeToReceiver\ngetClassType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nreceiverType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected varargs addAliasedAnnotation(Ljava/lang/Class;Ljava/lang/Class;Z[Ljava/lang/String;)V
    .locals 3
    .param p3, "copyElements"    # Z
    .param p4, "ignorableElements"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2550
    .local p1, "aliasClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "canonical":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2555
    nop

    .line 2556
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 2555
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 2557
    return-void

    .line 2551
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    .line 2553
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AnnotatedTypeFactory: alias %s should not be in type hierarchy for %s"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 3
    .param p2, "type"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")V"
        }
    .end annotation

    .line 2494
    .local p1, "aliasClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2499
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 2500
    return-void

    .line 2495
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    .line 2497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AnnotatedTypeFactory: alias %s should not be in type hierarchy for %s"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected varargs addAliasedAnnotation(Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V
    .locals 8
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p3, "copyElements"    # Z
    .param p4, "ignorableElements"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2581
    .local p2, "canonicalName":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    .line 2584
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->aliases:Ljava/util/Map;

    new-instance v7, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;

    const/4 v3, 0x0

    .line 2590
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move-object v2, p1

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;-><init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 2584
    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    return-void

    .line 2582
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Do not call with false"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 8
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2515
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->aliases:Ljava/util/Map;

    new-instance v7, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;-><init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;ZLjava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    return-void
.end method

.method protected addAliasedDeclAnnotation(Ljava/lang/Class;Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p3, "annotationToUse"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")V"
        }
    .end annotation

    .line 2632
    .local p1, "alias":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declAliases:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/javacutil/Pair;

    .line 2633
    .local v0, "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;>;"
    if-eqz v0, :cond_1

    .line 2634
    iget-object v1, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p3, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2635
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v2, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    filled-new-array {v2, p3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "annotationToUse should be the same: %s %s"

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 2639
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p3, v1}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 2640
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declAliases:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2642
    :goto_0
    iget-object v1, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 2643
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2644
    return-void
.end method

.method protected addAnnotationFromFieldInvariant(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/VariableElement;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "accessedVia"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "field"    # Ljavax/lang/model/element/VariableElement;

    .line 1393
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 1395
    .local v0, "declaringType":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_4

    .line 1396
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 1403
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 1404
    .local v1, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-static {p3}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1407
    return-void

    .line 1410
    :cond_2
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFieldInvariants(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/util/FieldInvariants;

    move-result-object v2

    .line 1411
    .local v2, "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    if-nez v2, :cond_3

    .line 1412
    return-void

    .line 1414
    :cond_3
    invoke-interface {p3}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/util/FieldInvariants;->getQualifiersFor(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 1415
    .local v3, "invariantAnnos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 1416
    return-void

    .line 1397
    .end local v1    # "typeElement":Ljavax/lang/model/element/TypeElement;
    .end local v2    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .end local v3    # "invariantAnnos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_5

    .line 1398
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/type/WildcardType;

    invoke-interface {v1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    goto :goto_0

    .line 1399
    :cond_5
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 1400
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    goto :goto_0
.end method

.method protected addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1314
    return-void
.end method

.method protected addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1328
    return-void
.end method

.method protected addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1339
    return-void
.end method

.method protected addInheritedAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p1, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2653
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->inheritedAnnotations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2654
    return-void
.end method

.method public areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z
    .locals 3
    .param p1, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 3889
    .local p2, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-nez v0, :cond_0

    .line 3890
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3892
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->annotationClassNames:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3893
    .local v0, "canonicalName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 3894
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 3895
    if-eqz v0, :cond_1

    .line 3896
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->annotationClassNames:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3895
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3898
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2605
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 2606
    .local v0, "elem":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2607
    .local v1, "qualName":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->aliases:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;

    .line 2608
    .local v2, "alias":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;
    if-nez v2, :cond_0

    .line 2609
    const/4 v3, 0x0

    return-object v3

    .line 2611
    :cond_0
    iget-boolean v3, v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->copyElements:Z

    if-eqz v3, :cond_1

    .line 2612
    new-instance v3, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iget-object v5, v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonicalName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 2613
    .local v3, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    iget-object v4, v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->ignorableElements:[Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lorg/checkerframework/javacutil/AnnotationBuilder;->copyElementValuesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;[Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 2616
    .end local v3    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_1
    iget-object v3, v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonical:Ljavax/lang/model/element/AnnotationMirror;

    return-object v3
.end method

.method protected checkInvalidOptionsInferSignatures()V
    .locals 2

    .line 513
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->useUncheckedCodeDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 514
    const-string v1, "bytecode"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->useUncheckedCodeDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    return-void

    .line 515
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/UserError;

    const-string v1, "The option -Ainfer cannot be used together with unchecked code defaults."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;

    .line 2123
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->constructor(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 2124
    .local v0, "ctor":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromNewClass(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 2125
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 2126
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-static {v2, p0, v1, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    .line 2128
    .local v2, "con":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2129
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSyntheticArgument(Lcom/sun/source/tree/Tree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2132
    .local v3, "actualParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2134
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->setParameterTypes(Ljava/util/List;)V

    .line 2137
    .end local v3    # "actualParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2139
    .local v3, "typeargs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 2140
    invoke-static {v4, p0, p1, v0, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findTypeArguments(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Map;

    move-result-object v4

    .line 2142
    .local v4, "typeVarMapping":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2143
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 2144
    .local v6, "tv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    .end local v6    # "tv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 2146
    :cond_1
    iget-object v5, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVarSubstitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-virtual {v5, v4, v2}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 2149
    :cond_2
    new-instance v5, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    invoke-direct {v5, v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)V

    return-object v5
.end method

.method public containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 3914
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotationByClass(Ljava/util/Collection;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected createAnnotatedTypeFormatter()Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;
    .locals 4

    .line 898
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "printVerboseGenerics"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    .line 899
    .local v0, "printVerboseGenerics":Z
    new-instance v1, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 902
    const-string v3, "printAllQualifiers"

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {v1, v0, v2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;-><init>(ZZ)V

    .line 899
    return-object v1
.end method

.method protected createAnnotationClassLoader()Lorg/checkerframework/framework/type/AnnotationClassLoader;
    .locals 2

    .line 782
    new-instance v0, Lorg/checkerframework/framework/type/AnnotationClassLoader;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected createAnnotationFormatter()Lorg/checkerframework/framework/util/AnnotationFormatter;
    .locals 1

    .line 910
    new-instance v0, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;-><init>()V

    return-object v0
.end method

.method protected createQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 3

    .line 647
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    .line 648
    .local v0, "supportedTypeQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    nop

    .line 649
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createQualifierHierarchyFactory()Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    move-result-object v1

    .line 651
    .local v1, "factory":Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v2, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createQualifierHierarchy(Ljavax/lang/model/util/Elements;Ljava/util/Set;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    return-object v2
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 2
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 631
    new-instance v0, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    return-object v0
.end method

.method protected createQualifierHierarchyFactory()Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .locals 1

    .line 622
    new-instance v0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected createQualifierUpperBounds()Lorg/checkerframework/framework/type/QualifierUpperBounds;
    .locals 1

    .line 565
    new-instance v0, Lorg/checkerframework/framework/type/QualifierUpperBounds;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/QualifierUpperBounds;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 1
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

    .line 837
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBundledTypeQualifiers([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected createTypeArgumentInference()Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;
    .locals 1

    .line 769
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected createTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;
    .locals 6

    .line 743
    new-instance v0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 745
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 746
    const-string v4, "ignoreRawTypeArguments"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 747
    const-string v5, "invariantArrays"

    invoke-virtual {v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/QualifierHierarchy;ZZ)V

    .line 743
    return-object v0
.end method

.method protected createTypeVariableSubstitutor()Lorg/checkerframework/framework/type/TypeVariableSubstitutor;
    .locals 1

    .line 758
    new-instance v0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;-><init>()V

    return-object v0
.end method

.method public final declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;
    .locals 2
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 2708
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    if-nez v0, :cond_0

    .line 2709
    const/4 v0, 0x0

    return-object v0

    .line 2711
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementToTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2712
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementToTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    return-object v0

    .line 2716
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;

    if-eqz v0, :cond_2

    .line 2717
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;

    invoke-virtual {v0}, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;->getDeclaration()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    return-object v0

    .line 2725
    :cond_2
    sget-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2737
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    .line 2738
    invoke-static {v0, v1}, Lcom/sun/tools/javac/tree/TreeInfo;->declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .local v0, "fromElt":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 2734
    .end local v0    # "fromElt":Lcom/sun/source/tree/Tree;
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual {v0, p1}, Lcom/sun/source/util/Trees;->getTree(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 2735
    .restart local v0    # "fromElt":Lcom/sun/source/tree/Tree;
    nop

    .line 2743
    :goto_0
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v1, :cond_3

    .line 2744
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementToTreeCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2746
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1
    .param p1, "elt"    # Ljavax/lang/model/element/TypeElement;

    .line 2429
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    return-object v0
.end method

.method public final fromElement(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .locals 1
    .param p1, "elt"    # Ljavax/lang/model/element/ExecutableElement;

    .line 2434
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    return-object v0
.end method

.method public fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 1153
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 1156
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_1

    .line 1157
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 1166
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 1168
    .local v0, "decl":Lcom/sun/source/tree/Tree;
    if-nez v0, :cond_2

    .line 1169
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->stubTypes:Lorg/checkerframework/framework/stub/StubTypes;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/stub/StubTypes;->getAnnotatedTypeMirror(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1170
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v1, :cond_6

    .line 1171
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->isTypeDeclaration(Ljavax/lang/model/element/Element;)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1172
    invoke-static {v1, p1, p0}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    goto :goto_0

    .line 1174
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    instance-of v1, v0, Lcom/sun/source/tree/ClassTree;

    if-eqz v1, :cond_3

    .line 1175
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/ClassTree;

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromClass(Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .restart local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 1176
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    instance-of v1, v0, Lcom/sun/source/tree/VariableTree;

    if-eqz v1, :cond_4

    .line 1177
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMember(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .restart local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 1178
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_4
    instance-of v1, v0, Lcom/sun/source/tree/MethodTree;

    if-eqz v1, :cond_5

    .line 1179
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMember(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .restart local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 1180
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_5
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_8

    .line 1181
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1192
    .restart local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_6
    :goto_0
    iget-boolean v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->stubTypes:Lorg/checkerframework/framework/stub/StubTypes;

    invoke-virtual {v2}, Lorg/checkerframework/framework/stub/StubTypes;->isParsing()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1193
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementCache:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    :cond_7
    return-object v1

    .line 1183
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_8
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnnotatedTypeFactory.fromElement: cannot be here. decl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1185
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " elt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public fromNewClass(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 5
    .param p1, "newClassTree"    # Lcom/sun/source/tree/NewClassTree;

    .line 2185
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2186
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .local v0, "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 2188
    .end local v0    # "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getImplicitReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 2191
    .restart local v0    # "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :goto_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isDiamondTree(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2192
    nop

    .line 2193
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2194
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2196
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getTypeParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2197
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2198
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    .line 2199
    .local v2, "ctx":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    if-eqz v2, :cond_1

    .line 2200
    iget-object v3, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2201
    .local v3, "ctxtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromNewClassContextHelper(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 2202
    .end local v3    # "ctxtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 2203
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v3

    .line 2204
    .local v3, "p":Lcom/sun/source/util/TreePath;
    invoke-static {p0, v3}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->assignedTo(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 2205
    .local v4, "ctxtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v4, :cond_2

    .line 2206
    invoke-direct {p0, v1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromNewClassContextHelper(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_1

    .line 2209
    :cond_2
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setWasRaw()V

    .line 2213
    .end local v2    # "ctx":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v3    # "p":Lcom/sun/source/util/TreePath;
    .end local v4    # "ctxtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    :goto_1
    nop

    .line 2215
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/checkerframework/framework/type/TypeFromTree;->fromTypeTree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2216
    .local v2, "fromTypeTree":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 2217
    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setEnclosingType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 2218
    return-object v1

    .line 2219
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "fromTypeTree":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_4
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2220
    nop

    .line 2221
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2225
    .restart local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 2226
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v2

    .line 2227
    .local v2, "annos":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 2228
    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setEnclosingType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 2229
    return-object v1

    .line 2234
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "annos":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    :cond_5
    nop

    .line 2236
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/checkerframework/framework/type/TypeFromTree;->fromTypeTree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2237
    .restart local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setEnclosingType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 2238
    return-object v1
.end method

.method final fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1279
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 1283
    :cond_0
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->fromTypeTree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1285
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v1, :cond_1

    .line 1286
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTreeCache:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    :cond_1
    return-object v0
.end method

.method public getAnnotatedNullType(Ljava/util/Set;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;"
        }
    .end annotation

    .line 1598
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1600
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/util/Types;->getNullType()Ljavax/lang/model/type/NullType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    .line 1601
    .local v0, "nullType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 1602
    return-object v0
.end method

.method public final getAnnotatedType(Lcom/sun/source/tree/NewArrayTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/NewArrayTree;

    .line 2409
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    return-object v0
.end method

.method public final getAnnotatedType(Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;

    .line 2399
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    return-object v0
.end method

.method public final getAnnotatedType(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;

    .line 2404
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    return-object v0
.end method

.method public final getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1
    .param p1, "elt"    # Ljavax/lang/model/element/TypeElement;

    .line 2419
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    return-object v0
.end method

.method public final getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/MethodTree;

    .line 2414
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    return-object v0
.end method

.method public final getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .locals 1
    .param p1, "elt"    # Ljavax/lang/model/element/ExecutableElement;

    .line 2424
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    return-object v0
.end method

.method public getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1019
    if-eqz p1, :cond_7

    .line 1022
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->classAndMethodTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->classAndMethodTreeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isClassTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ClassTree;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromClass(Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 1029
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_4

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1031
    :cond_2
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isExpressionTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1032
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object p1

    .line 1033
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromExpression(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .restart local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 1035
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypeFactory.getAnnotatedType: query of annotated type for tree "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1037
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMember(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1040
    .restart local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1042
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isClassTree(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_6

    .line 1044
    :cond_5
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v1, :cond_6

    .line 1045
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->classAndMethodTreeCache:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    :cond_6
    return-object v0

    .line 1020
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_7
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AnnotatedTypeFactory.getAnnotatedType: null tree"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 985
    if-eqz p1, :cond_0

    .line 990
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 991
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 992
    return-object v0

    .line 986
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AnnotatedTypeFactory.getAnnotatedType: null element"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnnotatedTypeFormatter()Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;
    .locals 1

    .line 906
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeFormatter:Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;

    return-object v0
.end method

.method public getAnnotatedTypeFromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1093
    if-eqz p1, :cond_0

    .line 1096
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1097
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1098
    return-object v0

    .line 1094
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AnnotatedTypeFactory.getAnnotatedTypeFromTypeTree: null tree"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnnotationByClass(Ljava/util/Collection;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 3930
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 3931
    .local v1, "an":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3932
    return-object v1

    .line 3934
    .end local v1    # "an":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 3935
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotationFormatter()Lorg/checkerframework/framework/util/AnnotationFormatter;
    .locals 1

    .line 914
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->annotationFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    return-object v0
.end method

.method public getAnnotationMirror(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 998
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1000
    .local v0, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 1002
    .end local v0    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotationWithMetaAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation

    .line 3294
    .local p2, "metaAnnotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3295
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 3298
    .local v1, "annotationMirrors":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3301
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotations(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3304
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 3305
    .local v3, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 3306
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v4

    .line 3307
    .local v4, "annotationsOnAnnotation":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 3308
    .local v6, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3309
    invoke-static {v3, v6}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3311
    .end local v6    # "a":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 3312
    .end local v3    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "annotationsOnAnnotation":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    goto :goto_0

    .line 3313
    :cond_2
    return-object v0
.end method

.method public getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    .line 2320
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getUnderlyingType()Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 2321
    .local v0, "typeElt":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 2322
    .local v1, "dt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 2323
    return-object v1
.end method

.method protected final varargs getBundledTypeQualifiers([Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 856
    .local p1, "explicitlyListedAnnotations":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->loadTypeAnnotationsFromQualDir([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getCacheSize()I
    .locals 5

    .line 967
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "atfCacheSize"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "option":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 969
    const/16 v1, 0x12c

    return v1

    .line 972
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 973
    :catch_0
    move-exception v1

    .line 974
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/checkerframework/javacutil/UserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "atfCacheSize was not an integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getContext()Lorg/checkerframework/framework/util/CFContext;
    .locals 1

    .line 3779
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    return-object v0
.end method

.method protected final getCurrentClassTree(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 2757
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2758
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    return-object v0

    .line 2760
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentClassType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 2764
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getCurrentClassTree(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentMethodReceiver(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 2776
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getMethodReceiver()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 2777
    .local v0, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v0, :cond_3

    .line 2778
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 2779
    .local v1, "path":Lcom/sun/source/util/TreePath;
    if-eqz v1, :cond_3

    .line 2780
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v2

    .line 2781
    .local v2, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    .line 2783
    .local v3, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    const/4 v4, 0x0

    .line 2785
    .local v4, "found":Z
    invoke-interface {v3}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 2786
    .local v6, "member":Lcom/sun/source/tree/Tree;
    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_0

    .line 2787
    if-ne v6, v2, :cond_0

    .line 2788
    const/4 v4, 0x1

    .line 2791
    .end local v6    # "member":Lcom/sun/source/tree/Tree;
    :cond_0
    goto :goto_0

    .line 2793
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 2794
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v5

    .line 2795
    .local v5, "method":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 2799
    .end local v5    # "method":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    goto :goto_1

    .line 2801
    :cond_2
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 2805
    .end local v1    # "path":Lcom/sun/source/util/TreePath;
    .end local v2    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v3    # "enclosingClass":Lcom/sun/source/tree/ClassTree;
    .end local v4    # "found":Z
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 3016
    .local p2, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclAnnotationNoAliases(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 3038
    .local p2, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public getDeclAnnotationWithMetaAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation

    .line 3250
    .local p2, "metaAnnotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3251
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotations(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v1

    .line 3254
    .local v1, "annotationMirrors":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 3257
    .local v3, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 3258
    :try_start_0
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 3271
    .local v4, "annotationsOnAnnotation":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 3273
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 3274
    .local v6, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3275
    invoke-static {v3, v6}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3277
    .end local v6    # "a":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 3278
    .end local v3    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "annotationsOnAnnotation":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    goto :goto_0

    .line 3259
    .restart local v3    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v4

    .line 3264
    .local v4, "cf":Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    iget-object v5, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 3267
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v6

    .line 3265
    const-string v7, "annotation.not.completed"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 3269
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v7

    invoke-interface {v7}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v7

    .line 3264
    invoke-virtual {v5, v6, v7}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3270
    goto :goto_0

    .line 3279
    .end local v3    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "cf":Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    :cond_2
    return-object v0
.end method

.method public getDeclAnnotations(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 9
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 3128
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->cacheDeclAnnos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 3129
    .local v0, "cachedValue":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v0, :cond_0

    .line 3131
    return-object v0

    .line 3134
    :cond_0
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 3136
    .local v1, "results":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v2, p1}, Ljavax/lang/model/util/Elements;->getAllAnnotationMirrors(Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v2

    .line 3137
    .local v2, "fromEle":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 3139
    .local v4, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :try_start_0
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 3148
    goto :goto_1

    .line 3140
    :catch_0
    move-exception v5

    .line 3142
    .local v5, "cf":Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    iget-object v6, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 3145
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v7

    .line 3143
    const-string v8, "annotation.not.completed"

    invoke-static {v8, v7}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 3147
    invoke-interface {v4}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v8

    invoke-interface {v8}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v8

    .line 3142
    invoke-virtual {v6, v7, v8}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3149
    .end local v4    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "cf":Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    :goto_1
    goto :goto_0

    .line 3152
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->stubTypes:Lorg/checkerframework/framework/stub/StubTypes;

    invoke-virtual {v3}, Lorg/checkerframework/framework/stub/StubTypes;->isParsing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3155
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->stubTypes:Lorg/checkerframework/framework/stub/StubTypes;

    invoke-virtual {v3, p1}, Lorg/checkerframework/framework/stub/StubTypes;->getDeclAnnotation(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v3

    .line 3156
    .local v3, "stubAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3158
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v4, v5, :cond_2

    .line 3160
    move-object v4, p1

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    invoke-direct {p0, v4, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->inheritOverriddenDeclAnnos(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Set;)V

    .line 3164
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->cacheDeclAnnos:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3167
    .end local v3    # "stubAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    return-object v1
.end method

.method protected getDefaultTypeDeclarationBounds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDummyAssignedTo(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "expressionTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 3875
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementUtils()Ljavax/lang/model/util/Elements;
    .locals 1

    .line 3764
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    return-object v0
.end method

.method public final getEnclosingElementForArtificialTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 2936
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->artificialTreeToEnclosingElementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    return-object v0
.end method

.method public getEnclosingType(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 4
    .param p1, "element"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1851
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getMostInnerClassOrMethod(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 1853
    .local v0, "enclosingElt":Ljavax/lang/model/element/Element;
    :goto_0
    if-eqz v0, :cond_5

    .line 1854
    instance-of v1, v0, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v1, :cond_2

    .line 1855
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 1856
    .local v1, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1857
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, v2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSubtype(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1858
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1861
    :cond_0
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_1

    .line 1863
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    return-object v2

    .line 1865
    :cond_1
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    return-object v2

    .line 1868
    .end local v1    # "method":Ljavax/lang/model/element/ExecutableElement;
    :cond_2
    instance-of v1, v0, Ljavax/lang/model/element/TypeElement;

    if-eqz v1, :cond_3

    .line 1869
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSubtype(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1870
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    return-object v1

    .line 1868
    :cond_3
    :goto_1
    nop

    .line 1873
    :cond_4
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    goto :goto_0

    .line 1875
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFieldInvariantAnnotationTree(Ljava/util/List;)Lcom/sun/source/tree/AnnotationTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;)",
            "Lcom/sun/source/tree/AnnotationTree;"
        }
    .end annotation

    .line 1487
    .local p1, "annoTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1488
    .local v0, "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1489
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFieldInvariantDeclarationAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 1490
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1491
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/AnnotationTree;

    return-object v2

    .line 1493
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    goto :goto_1

    .line 1488
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1495
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getFieldInvariantDeclarationAnnotations()Ljava/util/Set;
    .locals 1
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

    .line 1500
    const-class v0, Lorg/checkerframework/framework/qual/FieldInvariant;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFieldInvariants(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/util/FieldInvariants;
    .locals 9
    .param p1, "element"    # Ljavax/lang/model/element/TypeElement;

    .line 1431
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1432
    return-object v0

    .line 1434
    :cond_0
    const-class v1, Lorg/checkerframework/framework/qual/FieldInvariant;

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 1435
    .local v1, "fieldInvarAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v1, :cond_1

    .line 1436
    return-object v0

    .line 1438
    :cond_1
    const-class v2, Ljava/lang/String;

    .line 1439
    const-string v3, "field"

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 1440
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1441
    const-string v3, "qualifier"

    invoke-static {v1, v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassNames(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljava/util/List;

    move-result-object v3

    .line 1442
    .local v3, "classes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Name;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    .local v5, "qualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/Name;

    .line 1446
    .local v7, "name":Ljavax/lang/model/element/Name;
    iget-object v8, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v8, v7}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    .end local v7    # "name":Ljavax/lang/model/element/Name;
    goto :goto_0

    .line 1448
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 1449
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v4, v6, :cond_3

    .line 1450
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1453
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_4

    .line 1456
    new-instance v0, Lorg/checkerframework/framework/util/FieldInvariants;

    invoke-direct {v0, v2, v5}, Lorg/checkerframework/framework/util/FieldInvariants;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 1461
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .local v4, "supportFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1463
    .local v6, "supportedQualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 1464
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1465
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1469
    .end local v7    # "i":I
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1470
    return-object v0

    .line 1473
    :cond_7
    new-instance v0, Lorg/checkerframework/framework/util/FieldInvariants;

    invoke-direct {v0, v4, v6}, Lorg/checkerframework/framework/util/FieldInvariants;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public getFnInterfaceFromTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/javacutil/Pair;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            ">;"
        }
    .end annotation

    .line 3482
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFunctionalInterfaceType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 3483
    .local v0, "functionalInterfaceType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 3484
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 3486
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    .line 3484
    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->makeGroundTargetType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/type/DeclaredType;)V

    .line 3490
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {p1, v1}, Lorg/checkerframework/javacutil/TreeUtils;->findFunction(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    .line 3493
    .local v1, "fnElement":Ljavax/lang/model/element/Element;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 3495
    invoke-static {v2, p0, v0, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3497
    .local v2, "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v3

    return-object v3
.end method

.method public getFunctionTypeFromTree(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/LambdaExpressionTree;

    .line 3462
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFnInterfaceFromTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    return-object v0
.end method

.method public getFunctionTypeFromTree(Lcom/sun/source/tree/MemberReferenceTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/MemberReferenceTree;

    .line 3447
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFnInterfaceFromTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    return-object v0
.end method

.method protected getImplicitReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 1631
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 1632
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 1633
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 1634
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1631
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tree kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1635
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1637
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 1638
    .local v0, "element":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_e

    .line 1640
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->hasReceiver(Ljavax/lang/model/element/Element;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1641
    return-object v2

    .line 1644
    :cond_2
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 1645
    .local v1, "receiver":Lcom/sun/source/tree/ExpressionTree;
    const-string v3, "AnnotatedTypeFactory.getImplicitReceiver: enclosingClass()==null for element: "

    if-nez v1, :cond_8

    .line 1646
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isMostEnclosingThisDeref(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1652
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    return-object v2

    .line 1654
    :cond_3
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v4

    .line 1655
    .local v4, "path":Lcom/sun/source/util/TreePath;
    if-nez v4, :cond_4

    .line 1658
    return-object v2

    .line 1660
    :cond_4
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v5

    .line 1661
    .local v5, "typeElt":Ljavax/lang/model/element/TypeElement;
    if-eqz v5, :cond_7

    .line 1666
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v6, :cond_6

    .line 1667
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1668
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "typeElt":Ljavax/lang/model/element/TypeElement;
    .local v3, "typeElt":Ljavax/lang/model/element/TypeElement;
    goto :goto_1

    .line 1670
    .end local v3    # "typeElt":Ljavax/lang/model/element/TypeElement;
    .restart local v5    # "typeElt":Ljavax/lang/model/element/TypeElement;
    :cond_5
    const/4 v3, 0x0

    move-object v5, v3

    .line 1672
    :goto_1
    if-nez v5, :cond_6

    .line 1675
    return-object v2

    .line 1679
    :cond_6
    invoke-virtual {p0, v5, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getEnclosingType(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    return-object v2

    .line 1662
    :cond_7
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1683
    .end local v4    # "path":Lcom/sun/source/util/TreePath;
    .end local v5    # "typeElt":Ljavax/lang/model/element/TypeElement;
    :cond_8
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v4

    .line 1684
    .local v4, "rcvelem":Ljavax/lang/model/element/Element;
    if-eqz v4, :cond_d

    .line 1686
    invoke-static {v4}, Lorg/checkerframework/javacutil/ElementUtils;->hasReceiver(Ljavax/lang/model/element/Element;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1687
    return-object v2

    .line 1690
    :cond_9
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v5, :cond_a

    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/IdentifierTree;

    .line 1691
    invoke-interface {v2}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v2

    const-string v5, "this"

    invoke-interface {v2, v5}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1693
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    return-object v2

    .line 1696
    :cond_a
    invoke-static {v4}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 1697
    .local v2, "typeElt":Ljavax/lang/model/element/TypeElement;
    if-eqz v2, :cond_c

    .line 1703
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    .line 1709
    .local v3, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getCurrentMethodReceiver(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    .line 1710
    .local v5, "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-direct {p0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldTakeFromReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1713
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->clearAnnotations()V

    .line 1714
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 1717
    :cond_b
    return-object v3

    .line 1698
    .end local v3    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v5    # "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_c
    new-instance v5, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1684
    .end local v2    # "typeElt":Ljavax/lang/model/element/TypeElement;
    :cond_d
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected null element for receiver: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1638
    .end local v1    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    .end local v4    # "rcvelem":Ljavax/lang/model/element/Element;
    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected null element for tree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getMethodReturnType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "m"    # Lcom/sun/source/tree/MethodTree;

    .line 2154
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 2155
    .local v0, "methodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 2156
    .local v1, "ret":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    return-object v1
.end method

.method public getMethodReturnType(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ReturnTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "m"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "r"    # Lcom/sun/source/tree/ReturnTree;

    .line 2161
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 2162
    .local v0, "methodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 2163
    .local v1, "ret":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    return-object v1
.end method

.method public getNarrowedPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "narrowedTypeMirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 2379
    nop

    .line 2382
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->isDeclaration()Z

    move-result v0

    .line 2381
    invoke-static {p2, p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    .line 2383
    .local v0, "narrowed":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 2384
    return-object v0
.end method

.method public final getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 2856
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    if-eqz v0, :cond_9

    .line 2860
    if-nez p1, :cond_0

    .line 2861
    const/4 v0, 0x0

    return-object v0

    .line 2864
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/util/TreePathCacher;->isCached(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2865
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/framework/util/TreePathCacher;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    return-object v0

    .line 2868
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 2869
    .local v0, "currentPath":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_2

    .line 2870
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-static {v1, p1}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 2871
    .local v1, "path":Lcom/sun/source/util/TreePath;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/framework/util/TreePathCacher;->addPath(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)V

    .line 2872
    return-object v1

    .line 2879
    .end local v1    # "path":Lcom/sun/source/util/TreePath;
    :cond_2
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 2880
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/framework/util/TreePathCacher;->addPath(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)V

    .line 2881
    return-object v0

    .line 2888
    :cond_3
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2889
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 2890
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/framework/util/TreePathCacher;->addPath(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)V

    .line 2891
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 2892
    return-object v0

    .line 2894
    :cond_4
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2895
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 2896
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/framework/util/TreePathCacher;->addPath(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)V

    .line 2897
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 2898
    return-object v0

    .line 2903
    :cond_5
    invoke-static {v0, p1}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 2904
    .local v1, "pathWithinSubtree":Lcom/sun/source/util/TreePath;
    if-eqz v1, :cond_6

    .line 2905
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/framework/util/TreePathCacher;->addPath(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)V

    .line 2906
    return-object v1

    .line 2912
    :cond_6
    move-object v2, v0

    .line 2913
    .local v2, "current":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v2, :cond_8

    .line 2914
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/checkerframework/framework/util/TreePathCacher;->addPath(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)V

    .line 2915
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    if-ne v3, p1, :cond_7

    .line 2916
    return-object v2

    .line 2918
    :cond_7
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    goto :goto_0

    .line 2922
    :cond_8
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->treePathCache:Lorg/checkerframework/framework/util/TreePathCacher;

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/framework/util/TreePathCacher;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v3

    return-object v3

    .line 2856
    .end local v0    # "currentPath":Lcom/sun/source/util/TreePath;
    .end local v1    # "pathWithinSubtree":Lcom/sun/source/util/TreePath;
    .end local v2    # "current":Lcom/sun/source/util/TreePath;
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypeFactory.getPath: root needs to be set when used on trees; factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2858
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1

    .line 3774
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method public final getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1

    .line 731
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    return-object v0
.end method

.method public final getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "expression"    # Lcom/sun/source/tree/ExpressionTree;

    .line 1899
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isAnyEnclosingThisDeref(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getImplicitReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0

    .line 1903
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 1904
    .local v0, "receiver":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v0, :cond_1

    .line 1905
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 1908
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1811
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isClassTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ClassTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0

    .line 1814
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 1815
    .local v0, "path":Lcom/sun/source/util/TreePath;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    .line 1816
    .local v1, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    if-nez v1, :cond_1

    .line 1819
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getCurrentClassTree(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    .line 1821
    :cond_1
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 1823
    .local v2, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v3

    .line 1824
    .local v3, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/Name;->length()I

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 1826
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1830
    nop

    .line 1831
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .local v4, "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 1833
    .end local v4    # "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_2
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v4

    .line 1835
    .restart local v4    # "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :goto_0
    invoke-direct {p0, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldTakeFromReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1838
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->clearAnnotations()V

    .line 1839
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 1842
    .end local v4    # "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_3
    return-object v2
.end method

.method public getStringType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2356
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/javacutil/TypesUtils;->typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 2357
    .local v0, "stringTypeMirror":Ljavax/lang/model/type/TypeMirror;
    nop

    .line 2360
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isDeclaration()Z

    move-result v1

    .line 2359
    invoke-static {v0, p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2361
    .local v1, "stringATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 2362
    return-object v1
.end method

.method public final getSupportedTypeQualifierNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQualNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 950
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQualNames:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 951
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 953
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQualNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedTypeQualifiers()Ljava/util/Set;
    .locals 2
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

    .line 929
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQuals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQuals:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 931
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checkSupportedQuals()V

    .line 933
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->supportedQuals:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTreeUtils()Lcom/sun/source/util/Trees;
    .locals 1

    .line 3769
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->trees:Lcom/sun/source/util/Trees;

    return-object v0
.end method

.method public getTypeArgumentInference()Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeArgumentInference:Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;

    return-object v0
.end method

.method public getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1107
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->qualifierUpperBounds:Lorg/checkerframework/framework/type/QualifierUpperBounds;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/QualifierUpperBounds;->getBoundQualifiers(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;
    .locals 1

    .line 751
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeHierarchy:Lorg/checkerframework/framework/type/TypeHierarchy;

    return-object v0
.end method

.method public getTypeOfExtendsImplements(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "clause"    # Lcom/sun/source/tree/Tree;

    .line 1134
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1135
    .local v0, "fromTypeTree":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v1

    .line 1136
    .local v1, "bound":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 1137
    return-object v0
.end method

.method public getTypeVarSubstitutor()Lorg/checkerframework/framework/type/TypeVariableSubstitutor;
    .locals 1

    .line 762
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVarSubstitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    return-object v0
.end method

.method public getUnboxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2338
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 2339
    .local v0, "primitiveType":Ljavax/lang/model/type/PrimitiveType;
    nop

    .line 2340
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    .line 2341
    .local v1, "pt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 2342
    return-object v1
.end method

.method public getUninferredWildcardType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .locals 6
    .param p1, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 3331
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3332
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 3333
    .local v0, "boundType":Ljavax/lang/model/type/TypeMirror;
    const/4 v1, 0x1

    .local v1, "intersectionType":Z
    goto :goto_0

    .line 3335
    .end local v0    # "boundType":Ljavax/lang/model/type/TypeMirror;
    .end local v1    # "intersectionType":Z
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 3336
    .restart local v0    # "boundType":Ljavax/lang/model/type/TypeMirror;
    const/4 v1, 0x0

    .line 3339
    .restart local v1    # "intersectionType":Z
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Ljavax/lang/model/util/Types;->getWildcardType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;

    move-result-object v3

    .line 3340
    .local v3, "wc":Ljavax/lang/model/type/WildcardType;
    nop

    .line 3341
    invoke-static {v3, p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 3342
    .local v2, "wctype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setTypeVariable(Ljavax/lang/model/type/TypeVariable;)V

    .line 3343
    if-nez v1, :cond_1

    .line 3344
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_1

    .line 3346
    :cond_1
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 3348
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 3349
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 3350
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 3351
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setUninferredTypeArgument()V

    .line 3352
    return-object v2
.end method

.method public getVisitorState()Lorg/checkerframework/framework/type/VisitorState;
    .locals 1

    .line 2389
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    return-object v0
.end method

.method public getWholeProgramInference()Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->wholeProgramInference:Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    return-object v0
.end method

.method protected initializeReflectionResolution()V
    .locals 5

    .line 574
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldResolveReflection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "resolveReflection"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 577
    .local v0, "debug":Z
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-class v2, Lorg/checkerframework/common/reflection/MethodValChecker;

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubchecker(Ljava/lang/Class;)Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/reflection/MethodValChecker;

    .line 578
    .local v1, "methodValChecker":Lorg/checkerframework/common/reflection/MethodValChecker;
    if-eqz v1, :cond_0

    .line 580
    nop

    .line 581
    invoke-virtual {v1}, Lorg/checkerframework/common/reflection/MethodValChecker;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    .line 583
    .local v2, "methodValATF":Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
    new-instance v3, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v3, v4, v2, v0}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Z)V

    iput-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->reflectionResolver:Lorg/checkerframework/common/reflection/ReflectionResolver;

    goto :goto_0

    .line 578
    .end local v2    # "methodValATF":Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "AnnotatedTypeFactory: reflection resolution was requested, but MethodValChecker isn\'t a subchecker."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 585
    .end local v0    # "debug":Z
    .end local v1    # "methodValChecker":Lorg/checkerframework/common/reflection/MethodValChecker;
    :cond_1
    :goto_0
    return-void
.end method

.method public final isAnyEnclosingThisDeref(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 1759
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1760
    return v1

    .line 1762
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 1764
    .local v0, "recv":Lcom/sun/source/tree/ExpressionTree;
    if-nez v0, :cond_4

    .line 1765
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 1767
    .local v2, "element":Ljavax/lang/model/element/Element;
    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->hasReceiver(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1768
    return v1

    .line 1771
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object p1

    .line 1773
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_3

    .line 1774
    move-object v3, p1

    check-cast v3, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v3}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v3

    .line 1775
    .local v3, "n":Ljavax/lang/model/element/Name;
    const-string v4, "this"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "super"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1777
    :cond_2
    return v1

    .line 1781
    .end local v3    # "n":Ljavax/lang/model/element/Name;
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 1782
    .end local v2    # "element":Ljavax/lang/model/element/Element;
    :cond_4
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1784
    return v1

    .line 1791
    :cond_5
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 1793
    .restart local v2    # "element":Ljavax/lang/model/element/Element;
    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->hasReceiver(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1794
    return v1

    .line 1797
    :cond_6
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isExplicitThisDereference(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    return v1
.end method

.method public isFromByteCode(Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 3054
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFromStubFile(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3055
    const/4 v0, 0x0

    return v0

    .line 3057
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCode(Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method public isFromStubFile(Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 3046
    const-class v0, Lorg/checkerframework/framework/qual/FromStubFile;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMostEnclosingThisDeref(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 1734
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isAnyEnclosingThisDeref(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1735
    return v1

    .line 1738
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 1739
    .local v0, "element":Ljavax/lang/model/element/Element;
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 1741
    .local v2, "typeElt":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getCurrentClassTree(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    .line 1742
    .local v3, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    if-eqz v3, :cond_1

    .line 1743
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSubtype(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1744
    const/4 v1, 0x1

    return v1

    .line 1748
    :cond_1
    return v1
.end method

.method public isSupportedQualifier(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 2466
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupportedQualifier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 2478
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifierNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2451
    if-nez p1, :cond_0

    .line 2452
    const/4 v0, 0x0

    return v0

    .line 2454
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isWithinConstructor(Lcom/sun/source/tree/Tree;)Z
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 2809
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getClassType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2810
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 2811
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2810
    :goto_0
    return v1

    .line 2814
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    .line 2815
    .local v0, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public methodFromUse(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "receiverType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1999
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 2000
    invoke-static {v0, p0, p3, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 2001
    .local v0, "methodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2003
    .local v1, "typeargs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 2004
    invoke-static {v2, p0, p1, p2, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findTypeArguments(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Map;

    move-result-object v2

    .line 2006
    .local v2, "typeVarMapping":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2007
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 2008
    .local v4, "tv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2018
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    .end local v4    # "tv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 2009
    .restart local v4    # "tv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :cond_0
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AnnotatedTypeFactory.methodFromUse:mismatch between declared method type variables and the inferred method type arguments. Method type variables: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2013
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; Inferred method type arguments: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2020
    .end local v4    # "tv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVarSubstitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    .line 2022
    invoke-virtual {v3, v2, v0}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 2025
    :cond_2
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->objectGetClass:Ljavax/lang/model/element/ExecutableElement;

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 2026
    invoke-static {p1, v3, v4}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2027
    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->adaptGetClassReturnTypeToReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 2030
    :cond_3
    new-instance v3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    invoke-direct {v3, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)V

    return-object v3
.end method

.method public methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 1954
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 1955
    .local v0, "methodElt":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1957
    .local v1, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v2

    .line 1958
    .local v2, "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldResolveReflection()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->reflectionResolver:Lorg/checkerframework/common/reflection/ReflectionResolver;

    .line 1959
    invoke-interface {v3, p1}, Lorg/checkerframework/common/reflection/ReflectionResolver;->isReflectiveMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1960
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->reflectionResolver:Lorg/checkerframework/common/reflection/ReflectionResolver;

    invoke-interface {v3, p0, p1, v2}, Lorg/checkerframework/common/reflection/ReflectionResolver;->resolveReflectiveCall(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v2

    .line 1963
    :cond_0
    iget-object v3, v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 1964
    .local v3, "method":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_2

    .line 1965
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1968
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 1969
    .local v4, "tm":Ljavax/lang/model/type/TypeMirror;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 1971
    .local v5, "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 1972
    .local v6, "wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    iget-boolean v7, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    if-eqz v7, :cond_1

    .line 1975
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    goto :goto_0

    .line 1977
    :cond_1
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 1979
    :goto_0
    invoke-virtual {v6, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1980
    invoke-virtual {p0, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1983
    .end local v4    # "tm":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :cond_2
    return-object v2
.end method

.method protected parseStubFiles()V
    .locals 1

    .line 3002
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->stubTypes:Lorg/checkerframework/framework/stub/StubTypes;

    invoke-virtual {v0}, Lorg/checkerframework/framework/stub/StubTypes;->parseStubFiles()V

    .line 3003
    return-void
.end method

.method public postAsMemberOf(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "owner"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "element"    # Ljavax/lang/model/element/Element;

    .line 1377
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 1378
    move-object v0, p3

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addAnnotationFromFieldInvariant(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/VariableElement;)V

    .line 1380
    :cond_0
    invoke-virtual {p0, p3, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1381
    return-void
.end method

.method protected postDirectSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 1356
    .local p2, "supertypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 1357
    .local v0, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1358
    .local v2, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1359
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 1361
    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 1363
    .end local v2    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 1364
    :cond_1
    return-void
.end method

.method protected postInit()V
    .locals 4

    .line 527
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 528
    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeHierarchy:Lorg/checkerframework/framework/type/TypeHierarchy;

    .line 532
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createTypeVariableSubstitutor()Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVarSubstitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    .line 533
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createTypeArgumentInference()Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeArgumentInference:Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;

    .line 534
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createQualifierUpperBounds()Lorg/checkerframework/framework/type/QualifierUpperBounds;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->qualifierUpperBounds:Lorg/checkerframework/framework/type/QualifierUpperBounds;

    .line 537
    const-class v0, Lorg/jmlspecs/annotation/Pure;

    const-class v1, Lorg/checkerframework/dataflow/qual/Pure;

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v3, Lorg/checkerframework/dataflow/qual/Pure;

    .line 540
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 537
    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addAliasedDeclAnnotation(Ljava/lang/Class;Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 543
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/dataflow/qual/Pure;

    .line 544
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 543
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addInheritedAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 546
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/dataflow/qual/SideEffectFree;

    .line 547
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 546
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addInheritedAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 549
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/dataflow/qual/Deterministic;

    .line 550
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 549
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addInheritedAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 552
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/dataflow/qual/TerminatesExecution;

    .line 553
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 552
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addInheritedAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 556
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->initializeReflectionResolution()V

    .line 558
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    if-ne v0, v1, :cond_0

    .line 559
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->parseStubFiles()V

    .line 561
    :cond_0
    return-void

    .line 529
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AnnotatedTypeFactory with null qualifier hierarchy not supported."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postProcessClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;

    .line 1072
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0, p0, p1}, Lorg/checkerframework/framework/type/TypesIntoElements;->store(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ClassTree;)V

    .line 1073
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0, p0, p1}, Lorg/checkerframework/framework/type/DeclarationsIntoElements;->store(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ClassTree;)V

    .line 1074
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "infer"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->wholeProgramInference:Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    if-eqz v0, :cond_0

    .line 1078
    invoke-interface {v0}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;->saveResults()V

    .line 1080
    :cond_0
    return-void
.end method

.method public postTypeVarSubstitution(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "varDecl"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "varUse"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "value"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1515
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationsField()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationsField()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationsField()Ljava/util/Set;

    move-result-object v1

    .line 1516
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationsField()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 1520
    :cond_0
    return-void
.end method

.method public preProcessClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 0
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 1061
    return-void
.end method

.method public final setEnclosingElementForArtificialTree(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "enclosing"    # Ljavax/lang/model/element/Element;

    .line 2946
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->artificialTreeToEnclosingElementMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    return-void
.end method

.method public setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 1
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 594
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    .line 597
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->artificialTreeToEnclosingElementMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 599
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elementToTreeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 603
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromExpressionTreeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 604
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromMemberTreeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 605
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTreeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 606
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->classAndMethodTreeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 612
    :cond_0
    return-void
.end method

.method public shouldWarnIfStubRedundantWithBytecode()Z
    .locals 1

    .line 3070
    const/4 v0, 0x1

    return v0
.end method

.method protected final toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "declaration"    # Z

    .line 2665
    invoke-static {p1, p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 2680
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isTypeDeclaration(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    .line 2683
    .local v0, "isDeclaration":Z
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2684
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 2685
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    return-object v1

    .line 2689
    .end local v1    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 2690
    .local v1, "path":Lcom/sun/source/util/TreePath;
    if-eqz v1, :cond_2

    .line 2692
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual {v2, v1}, Lcom/sun/source/util/Trees;->getTypeMirror(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 2693
    .local v2, "t":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->validType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2695
    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    return-object v3

    .line 2693
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for node "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 2690
    .end local v2    # "t":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No path or type in tree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public typeVariablesFromUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
    .locals 12
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "element"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;",
            ">;"
        }
    .end annotation

    .line 1556
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 1557
    .local v0, "generic":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 1558
    .local v1, "targs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    .line 1560
    .local v2, "tvars":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1565
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1567
    .local v3, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    move-object v4, p1

    .line 1568
    .local v4, "enclosing":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :goto_0
    if-eqz v4, :cond_1

    .line 1569
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    .line 1570
    .local v5, "enclosingTArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    nop

    .line 1571
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/TypeElement;

    invoke-virtual {p0, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v6

    .line 1572
    .local v6, "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v7

    .line 1573
    .local v7, "enclosingTVars":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 1574
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1575
    .local v9, "enclosingTVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v10

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    .end local v9    # "enclosingTVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1577
    .end local v8    # "i":I
    :cond_0
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v4

    .line 1578
    .end local v5    # "enclosingTArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v6    # "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v7    # "enclosingTVars":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    goto :goto_0

    .line 1580
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1582
    .local v5, "res":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1583
    .local v7, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1584
    .local v8, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    iget-object v9, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVarSubstitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    .line 1585
    .local v9, "upper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v10, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVarSubstitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    .line 1586
    .local v10, "lower":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v11, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    invoke-direct {v11, v9, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    .end local v7    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v8    # "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v9    # "upper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v10    # "lower":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_2

    .line 1588
    :cond_2
    return-object v5

    .line 1560
    .end local v3    # "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v4    # "enclosing":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v5    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatch in type argument size between "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public widenToUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "annotatedTypeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 3406
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 3407
    .local v0, "toModifyTypeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 3408
    .local v1, "wildcardUBTypeMirror":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-static {v1, v0, v2}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3409
    return-object p1

    .line 3410
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3411
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 3412
    :cond_1
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_2

    .line 3413
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3429
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 3432
    :cond_2
    return-object p1
.end method
