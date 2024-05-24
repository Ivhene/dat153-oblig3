.class public abstract Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
.super Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
.source "GenericAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Value:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TValue;>;Store:",
        "Lorg/checkerframework/framework/flow/CFAbstractStore<",
        "TValue;TStore;>;TransferFunction:",
        "Lorg/checkerframework/framework/flow/CFAbstractTransfer<",
        "TValue;TStore;TTransferFunction;>;FlowAnalysis:",
        "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
        "TValue;TStore;TTransferFunction;>;>",
        "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static flowByDefault:Z


# instance fields
.field protected analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFlowAnalysis;"
        }
    .end annotation
.end field

.field protected final cfgVisualizer:Lorg/checkerframework/dataflow/cfg/CFGVisualizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "TValue;TStore;TTransferFunction;>;"
        }
    .end annotation
.end field

.field private defaultQualifierForUseTypeAnnotator:Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;

.field protected defaults:Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

.field protected dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

.field protected emptyStore:Lorg/checkerframework/framework/flow/CFAbstractStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStore;"
        }
    .end annotation
.end field

.field private final everUseFlow:Z

.field protected flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/dataflow/analysis/AnalysisResult<",
            "TValue;TStore;>;"
        }
    .end annotation
.end field

.field protected final flowResultAnalysisCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TValue;TStore;>;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TValue;TStore;>;>;>;"
        }
    .end annotation
.end field

.field protected initializationStaticStore:Lorg/checkerframework/framework/flow/CFAbstractStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStore;"
        }
    .end annotation
.end field

.field protected initializationStore:Lorg/checkerframework/framework/flow/CFAbstractStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStore;"
        }
    .end annotation
.end field

.field protected methodInvocationStores:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "TStore;>;"
        }
    .end annotation
.end field

.field protected poly:Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;

.field protected regularExitStores:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "TStore;>;"
        }
    .end annotation
.end field

.field protected returnStatementStores:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/MethodTree;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TValue;TStore;>;>;>;>;"
        }
    .end annotation
.end field

.field protected final scannedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/ClassTree;",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;",
            ">;"
        }
    .end annotation
.end field

.field private shouldDefaultTypeVarLocals:Z

.field private supportedMonotonicQuals:Ljava/util/Set;
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

.field protected transfer:Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTransferFunction;"
        }
    .end annotation
.end field

.field protected treeAnnotator:Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

.field protected typeAnnotator:Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

.field private useFlow:Z


# direct methods
.method public static synthetic $r8$lambda$XefXRPZ6CKxydpVqVd0pq7xfdnI(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 111
    nop

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowByDefault:Z

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 268
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    sget-boolean v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowByDefault:Z

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    .line 269
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "useFlow"    # Z

    .line 201
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 203
    iput-boolean p2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->everUseFlow:Z

    .line 204
    iput-boolean p2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldDefaultTypeVarLocals:Z

    .line 205
    iput-boolean p2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->useFlow:Z

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->scannedClasses:Ljava/util/Map;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    .line 209
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    .line 210
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->methodInvocationStores:Ljava/util/IdentityHashMap;

    .line 211
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->returnStatementStores:Ljava/util/IdentityHashMap;

    .line 213
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 214
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStaticStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 216
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createCFGVisualizer()Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->cfgVisualizer:Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    .line 218
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldCache:Z

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getCacheSize()I

    move-result v0

    .line 220
    .local v0, "cacheSize":I
    invoke-static {v0}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResultAnalysisCaches:Ljava/util/Map;

    .line 221
    .end local v0    # "cacheSize":I
    goto :goto_0

    .line 222
    :cond_0
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResultAnalysisCaches:Ljava/util/Map;

    .line 227
    :goto_0
    return-void
.end method

.method private getCheckerName()Ljava/lang/String;
    .locals 4

    .line 1666
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1667
    .local v0, "checkerName":Ljava/lang/String;
    const-string v1, "Checker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1668
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1669
    :cond_0
    const-string v1, "Subchecker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1670
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1672
    :cond_1
    :goto_0
    return-object v0
.end method

.method private processCFGVisualizerOption([Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "opts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1679
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1681
    .local v0, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 1682
    aget-object v3, p1, v1

    .line 1683
    .local v3, "opt":Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1684
    .local v4, "split":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 1692
    new-instance v2, Lorg/checkerframework/javacutil/UserError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many `=` in cfgviz option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1689
    :pswitch_0
    aget-object v5, v4, v6

    aget-object v6, v4, v2

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    goto :goto_1

    .line 1686
    :pswitch_1
    aget-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    nop

    .line 1681
    .end local v3    # "opt":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1695
    .end local v1    # "i":I
    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addAnnotationsFromDefaultQualifierForUse(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 4
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1712
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    if-eqz p1, :cond_2

    .line 1713
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_2

    .line 1714
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    .line 1717
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1718
    .local v0, "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1719
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaultQualifierForUseTypeAnnotator:Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    .line 1721
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1722
    .local v2, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaultQualifierForUseTypeAnnotator:Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;

    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    .line 1723
    .end local v2    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 1724
    .end local v0    # "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_1
    goto :goto_1

    .line 1725
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaultQualifierForUseTypeAnnotator:Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    .line 1727
    :goto_1
    return-void
.end method

.method protected addCheckedCodeDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V
    .locals 5
    .param p1, "defs"    # Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    .line 567
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 568
    .local v1, "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v2, Lorg/checkerframework/framework/qual/DefaultFor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/qual/DefaultFor;

    .line 569
    .local v2, "defaultFor":Lorg/checkerframework/framework/qual/DefaultFor;
    if-eqz v2, :cond_0

    .line 570
    invoke-interface {v2}, Lorg/checkerframework/framework/qual/DefaultFor;->value()[Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-result-object v3

    .line 571
    .local v3, "locations":[Lorg/checkerframework/framework/qual/TypeUseLocation;
    iget-object v4, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v4, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefaults(Ljavax/lang/model/element/AnnotationMirror;[Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 574
    .end local v3    # "locations":[Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_0
    const-class v3, Lorg/checkerframework/framework/qual/DefaultQualifierInHierarchy;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 575
    iget-object v3, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    .line 576
    invoke-static {v3, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 575
    invoke-virtual {p1, v3, v4}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 578
    .end local v1    # "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "defaultFor":Lorg/checkerframework/framework/qual/DefaultFor;
    :cond_1
    goto :goto_0

    .line 579
    :cond_2
    return-void
.end method

.method protected addCheckedStandardDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V
    .locals 1
    .param p1, "defs"    # Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    .line 587
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->everUseFlow:Z

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addClimbStandardDefaults()V

    .line 590
    :cond_0
    return-void
.end method

.method protected final addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1450
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->useFlow:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    .line 1451
    return-void
.end method

.method protected addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "iUseFlow"    # Z

    .line 1459
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    if-eqz v0, :cond_1

    .line 1464
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addAnnotationsFromDefaultQualifierForUse(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1465
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->treeAnnotator:Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->typeAnnotator:Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaults:Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->annotate(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1469
    if-eqz p3, :cond_0

    .line 1470
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getInferredValueFor(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    .line 1472
    .local v0, "as":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    if-eqz v0, :cond_0

    .line 1473
    invoke-virtual {p0, p2, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->applyInferredAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 1476
    .end local v0    # "as":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    :cond_0
    return-void

    .line 1459
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenericAnnotatedTypeFactory.addComputedTypeAnnotations:  root needs to be set when used on trees; factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1462
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1546
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addAnnotationsFromDefaultQualifierForUse(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1547
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->typeAnnotator:Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaults:Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->annotate(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1549
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {v0, p2, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 1552
    :cond_0
    return-void
.end method

.method public addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1437
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addAnnotationsFromDefaultQualifierForUse(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1438
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->typeAnnotator:Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaults:Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    move-object v2, v0

    check-cast v2, Ljavax/lang/model/element/Element;

    invoke-virtual {v1, v0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->annotate(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1440
    return-void
.end method

.method protected addUncheckedCodeDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V
    .locals 5
    .param p1, "defs"    # Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    .line 613
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 614
    .local v1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v2, Lorg/checkerframework/framework/qual/DefaultInUncheckedCodeFor;

    .line 615
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/qual/DefaultInUncheckedCodeFor;

    .line 617
    .local v2, "defaultInUncheckedCodeFor":Lorg/checkerframework/framework/qual/DefaultInUncheckedCodeFor;
    if-eqz v2, :cond_0

    .line 618
    invoke-interface {v2}, Lorg/checkerframework/framework/qual/DefaultInUncheckedCodeFor;->value()[Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-result-object v3

    .line 619
    .local v3, "locations":[Lorg/checkerframework/framework/qual/TypeUseLocation;
    iget-object v4, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    .line 620
    invoke-static {v4, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 619
    invoke-virtual {p1, v4, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addUncheckedCodeDefaults(Ljavax/lang/model/element/AnnotationMirror;[Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 623
    .end local v3    # "locations":[Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_0
    const-class v3, Lorg/checkerframework/framework/qual/DefaultQualifierInHierarchyInUncheckedCode;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 625
    iget-object v3, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    .line 626
    invoke-static {v3, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 625
    invoke-virtual {p1, v3, v4}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addUncheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 629
    .end local v1    # "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "defaultInUncheckedCodeFor":Lorg/checkerframework/framework/qual/DefaultInUncheckedCodeFor;
    :cond_1
    goto :goto_0

    .line 630
    :cond_2
    return-void
.end method

.method protected addUncheckedStandardDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V
    .locals 0
    .param p1, "defs"    # Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    .line 638
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addUncheckedStandardDefaults()V

    .line 639
    return-void
.end method

.method protected analyze(Ljava/util/Queue;Ljava/util/Queue;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;Lcom/sun/source/tree/ClassTree;ZZZLorg/checkerframework/framework/flow/CFAbstractStore;)V
    .locals 11
    .param p3, "ast"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .param p5, "currentClass"    # Lcom/sun/source/tree/ClassTree;
    .param p6, "isInitializationCode"    # Z
    .param p7, "updateInitializationStore"    # Z
    .param p8, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/ClassTree;",
            "TStore;>;>;",
            "Ljava/util/Queue<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/LambdaExpressionTree;",
            "TStore;>;>;",
            "Lorg/checkerframework/dataflow/cfg/UnderlyingAST;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "TValue;>;>;",
            "Lcom/sun/source/tree/ClassTree;",
            "ZZZTStore;)V"
        }
    .end annotation

    .line 1216
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .local p2, "lambdaQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;>;"
    .local p4, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local p9, "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p9

    iget-object v3, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    iget-object v4, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v5, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v3, p3, v4, p0, v5}, Lorg/checkerframework/framework/flow/CFCFGBuilder;->build(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v3

    .line 1218
    .local v3, "cfg":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    if-eqz p6, :cond_2

    .line 1219
    if-nez p8, :cond_0

    iget-object v4, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStaticStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1220
    .local v4, "initStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :goto_0
    if-eqz v4, :cond_1

    .line 1224
    iget-object v5, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->transfer:Lorg/checkerframework/framework/flow/CFAbstractTransfer;

    invoke-virtual {v5, v4}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->setFixedInitialStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    goto :goto_1

    .line 1226
    :cond_1
    iget-object v5, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->transfer:Lorg/checkerframework/framework/flow/CFAbstractTransfer;

    invoke-virtual {v5, v2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->setFixedInitialStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 1228
    .end local v4    # "initStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :goto_1
    goto :goto_2

    .line 1229
    :cond_2
    iget-object v4, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->transfer:Lorg/checkerframework/framework/flow/CFAbstractTransfer;

    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->setFixedInitialStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 1231
    :goto_2
    iget-object v4, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    move-object v5, p4

    invoke-virtual {v4, v3, p4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->performAnalysis(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Ljava/util/List;)V

    .line 1232
    iget-object v4, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getResult()Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    move-result-object v4

    .line 1235
    .local v4, "result":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TValue;TStore;>;"
    iget-object v6, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v6, v4}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->combine(Lorg/checkerframework/dataflow/analysis/AnalysisResult;)V

    .line 1236
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v6

    sget-object v7, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v6, v7, :cond_4

    .line 1238
    move-object v6, v1

    check-cast v6, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    .line 1239
    .local v6, "mast":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v7

    .line 1240
    .local v7, "method":Lcom/sun/source/tree/MethodTree;
    iget-object v8, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v8}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getRegularExitStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1241
    .local v8, "regularExitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    if-eqz v8, :cond_3

    .line 1242
    iget-object v9, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    :cond_3
    iget-object v9, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->returnStatementStores:Ljava/util/IdentityHashMap;

    iget-object v10, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v10}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getReturnStatementStores()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .end local v6    # "mast":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    .end local v7    # "method":Lcom/sun/source/tree/MethodTree;
    .end local v8    # "regularExitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v6

    sget-object v7, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->ARBITRARY_CODE:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v6, v7, :cond_6

    .line 1246
    move-object v6, v1

    check-cast v6, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;

    .line 1247
    .local v6, "block":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;
    iget-object v7, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getRegularExitStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1248
    .local v7, "regularExitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    if-eqz v7, :cond_5

    .line 1249
    iget-object v8, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;->getCode()Lcom/sun/source/tree/Tree;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .end local v6    # "block":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;
    .end local v7    # "regularExitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :cond_5
    goto :goto_3

    :cond_6
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v6

    sget-object v7, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->LAMBDA:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v6, v7, :cond_e

    .line 1254
    move-object v6, v1

    check-cast v6, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;

    .line 1255
    .local v6, "block":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;
    iget-object v7, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getRegularExitStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1256
    .restart local v7    # "regularExitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    if-eqz v7, :cond_7

    .line 1257
    iget-object v8, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->getCode()Lcom/sun/source/tree/Tree;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    .end local v6    # "block":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;
    .end local v7    # "regularExitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :cond_7
    nop

    .line 1263
    :goto_3
    if-eqz p6, :cond_9

    if-eqz p7, :cond_9

    .line 1264
    iget-object v6, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v6}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getRegularExitStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1265
    .local v6, "newInitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    if-nez p8, :cond_8

    .line 1266
    iput-object v6, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    goto :goto_4

    .line 1268
    :cond_8
    iput-object v6, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStaticStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1272
    .end local v6    # "newInitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :cond_9
    :goto_4
    iget-object v6, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "flowdotdir"

    invoke-virtual {v6, v7}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "cfgviz"

    invoke-virtual {v6, v7}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1273
    :cond_a
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->handleCFGViz()V

    .line 1277
    :cond_b
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getDeclaredClasses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/ClassTree;

    .line 1278
    .local v7, "cls":Lcom/sun/source/tree/ClassTree;
    invoke-virtual {p0, v7}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v8

    move-object v9, p1

    invoke-interface {p1, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1279
    .end local v7    # "cls":Lcom/sun/source/tree/ClassTree;
    goto :goto_5

    .line 1280
    :cond_c
    move-object v9, p1

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getDeclaredLambdas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 1281
    .local v7, "lambda":Lcom/sun/source/tree/LambdaExpressionTree;
    invoke-virtual {p0, v7}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v8

    move-object v10, p2

    invoke-interface {p2, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1282
    .end local v7    # "lambda":Lcom/sun/source/tree/LambdaExpressionTree;
    goto :goto_6

    .line 1283
    :cond_d
    move-object v10, p2

    return-void

    .line 1260
    :cond_e
    move-object v9, p1

    move-object v10, p2

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected AST kind: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method protected applyInferredAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TValue;)V"
        }
    .end annotation

    .line 1530
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p2, "as":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    new-instance v0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;

    .line 1531
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;-><init>(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 1532
    .local v0, "applier":Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;
    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->applyInferredType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V

    .line 1533
    return-void
.end method

.method protected checkAndPerformFlowAnalysis(Lcom/sun/source/tree/Tree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1495
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    instance-of v0, p1, Lcom/sun/source/tree/ClassTree;

    if-eqz v0, :cond_0

    .line 1496
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ClassTree;

    .line 1497
    .local v0, "classTree":Lcom/sun/source/tree/ClassTree;
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->scannedClasses:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1498
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->performFlowAnalysis(Lcom/sun/source/tree/ClassTree;)V

    .line 1501
    .end local v0    # "classTree":Lcom/sun/source/tree/ClassTree;
    :cond_0
    return-void
.end method

.method protected checkForDefaultQualifierInHierarchy(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V
    .locals 3
    .param p1, "defs"    # Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    .line 648
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->hasDefaultsForCheckedCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    return-void

    .line 649
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenericAnnotatedTypeFactory.createQualifierDefaults: @DefaultQualifierInHierarchy or @DefaultFor(TypeUseLocation.OTHERWISE) not found. Every checker must specify a default qualifier. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSortedQualifierNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;

    .line 1408
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    .line 1409
    .local v0, "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 1410
    .local v1, "method":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v2, :cond_0

    .line 1411
    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->viewpointAdaptConstructor(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 1413
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->poly:Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;

    invoke-interface {v2, p1, v1}, Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;->resolve(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 1414
    return-object v0
.end method

.method protected final createAndInitQualifierDefaults()Lorg/checkerframework/framework/util/defaults/QualifierDefaults;
    .locals 1

    .line 501
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createQualifierDefaults()Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    move-result-object v0

    .line 502
    .local v0, "defs":Lorg/checkerframework/framework/util/defaults/QualifierDefaults;
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addCheckedCodeDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V

    .line 503
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addCheckedStandardDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V

    .line 504
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addUncheckedCodeDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V

    .line 505
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addUncheckedStandardDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V

    .line 506
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checkForDefaultQualifierInHierarchy(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V

    .line 508
    return-object v0
.end method

.method protected createCFGVisualizer()Lorg/checkerframework/dataflow/cfg/CFGVisualizer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "TValue;TStore;TTransferFunction;>;"
        }
    .end annotation

    .line 1621
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "flowdotdir"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "checkerName"

    const-string v3, "verbosecfg"

    const-string v4, "verbose"

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1623
    .local v0, "flowdotdir":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    .line 1625
    .local v1, "verbose":Z
    new-instance v3, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1626
    .local v3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "outdir"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    invoke-direct {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getCheckerName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    new-instance v2, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;-><init>()V

    .line 1631
    .local v2, "res":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TValue;TStore;TTransferFunction;>;"
    invoke-interface {v2, v3}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->init(Ljava/util/Map;)V

    .line 1632
    return-object v2

    .line 1633
    .end local v0    # "flowdotdir":Ljava/lang/String;
    .end local v1    # "verbose":Z
    .end local v2    # "res":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TValue;TStore;TTransferFunction;>;"
    .end local v3    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "cfgviz"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 1634
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1635
    .local v0, "cfgviz":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1639
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, "opts":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    .line 1641
    .local v6, "vizClassName":Ljava/lang/String;
    invoke-static {v6}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isBinaryName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1646
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->processCFGVisualizerOption([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 1647
    .local v7, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1648
    iget-object v8, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v8, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    .line 1649
    .local v3, "verbose":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    .end local v3    # "verbose":Z
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getCheckerName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    nop

    .line 1654
    invoke-static {v6, v5, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->invokeConstructorFor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    .line 1655
    .restart local v2    # "res":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TValue;TStore;TTransferFunction;>;"
    invoke-interface {v2, v7}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->init(Ljava/util/Map;)V

    .line 1656
    return-object v2

    .line 1642
    .end local v2    # "res":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TValue;TStore;TTransferFunction;>;"
    .end local v7    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v2, Lorg/checkerframework/javacutil/UserError;

    const-string v3, "Bad -Acfgviz class name \"%s\", should be a binary name."

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 1636
    .end local v1    # "opts":[Ljava/lang/String;
    .end local v6    # "vizClassName":Ljava/lang/String;
    :cond_3
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    const-string v2, "-Acfgviz specified without arguments, should be -Acfgviz=VizClassName[,opts,...]"

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1659
    .end local v0    # "cfgviz":Ljava/lang/String;
    :cond_4
    return-object v5
.end method

.method protected createDefaultForUseTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;
    .locals 1

    .line 377
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    new-instance v0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected createDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .locals 2

    .line 465
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    new-instance v0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 466
    .local v0, "helper":Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    invoke-virtual {v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->hasDependentAnnotations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    return-object v0

    .line 469
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "TValue;>;>;)TFlowAnalysis;"
        }
    .end annotation

    .line 394
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p1, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 396
    .local v0, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    if-eq v0, v1, :cond_1

    .line 397
    nop

    .line 399
    const-string v1, "Analysis"

    invoke-static {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getRelatedClassName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    aput-object v4, v2, v3

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v3, p0, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 398
    invoke-static {v1, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->invokeConstructorFor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 402
    .local v1, "result":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "TFlowAnalysis;"
    if-eqz v1, :cond_0

    .line 403
    return-object v1

    .line 405
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 406
    .end local v1    # "result":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "TFlowAnalysis;"
    goto :goto_0

    .line 410
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v1, "tmp":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/framework/flow/CFValue;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/javacutil/Pair;

    .line 412
    .local v3, "fieldVal":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;"
    iget-object v4, v3, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    instance-of v4, v4, Lorg/checkerframework/framework/flow/CFValue;

    if-eqz v4, :cond_2

    .line 413
    iget-object v4, v3, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljavax/lang/model/element/VariableElement;

    iget-object v5, v3, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v3    # "fieldVal":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;"
    goto :goto_1

    .line 412
    .restart local v3    # "fieldVal":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;"
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 415
    .end local v3    # "fieldVal":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;"
    :cond_3
    new-instance v2, Lorg/checkerframework/framework/flow/CFAnalysis;

    iget-object v3, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v2, v3, p0, v1}, Lorg/checkerframework/framework/flow/CFAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;)V

    return-object v2
.end method

.method public createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TValue;TStore;TTransferFunction;>;)TTransferFunction;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TValue;TStore;TTransferFunction;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 438
    .local v0, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    if-eq v0, v1, :cond_1

    .line 439
    nop

    .line 441
    const-string v1, "Transfer"

    invoke-static {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getRelatedClassName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 440
    invoke-static {v1, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->invokeConstructorFor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractTransfer;

    .line 444
    .local v1, "result":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "TTransferFunction;"
    if-eqz v1, :cond_0

    .line 445
    return-object v1

    .line 447
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 448
    .end local v1    # "result":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "TTransferFunction;"
    goto :goto_0

    .line 453
    :cond_1
    new-instance v1, Lorg/checkerframework/framework/flow/CFTransfer;

    invoke-direct {v1, p1}, Lorg/checkerframework/framework/flow/CFTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 456
    .local v1, "ret":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "TTransferFunction;"
    return-object v1
.end method

.method protected createQualifierDefaults()Lorg/checkerframework/framework/util/defaults/QualifierDefaults;
    .locals 2

    .line 516
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    new-instance v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;-><init>(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected createQualifierPolymorphism()Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    .locals 2

    .line 669
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    new-instance v0, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;

    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 2

    .line 333
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "treeAnnotators":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;>;"
    new-instance v1, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;

    invoke-direct {v1, p0}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v1, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    invoke-direct {v1, p0}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addStandardLiteralQualifiers()Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1, p0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->createDependentTypesTreeAnnotator(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_0
    new-instance v1, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    invoke-direct {v1, v0}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    .locals 5

    .line 360
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, "typeAnnotators":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 362
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/checkerframework/framework/qual/RelevantJavaTypes;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/qual/RelevantJavaTypes;

    .line 363
    .local v1, "relevantJavaTypes":Lorg/checkerframework/framework/qual/RelevantJavaTypes;
    if-eqz v1, :cond_0

    .line 364
    invoke-interface {v1}, Lorg/checkerframework/framework/qual/RelevantJavaTypes;->value()[Ljava/lang/Class;

    move-result-object v2

    .line 366
    .local v2, "relevantClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v3, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;

    .line 368
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;[Ljava/lang/Class;)V

    .line 366
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v2    # "relevantClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    new-instance v2, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v2, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v2, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;

    invoke-direct {v2, v0}, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public fromNewClass(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 2
    .param p1, "newClassTree"    # Lcom/sun/source/tree/NewClassTree;

    .line 478
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromNewClass(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 479
    .local v0, "superResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeNewClassTree(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 482
    :cond_0
    return-object v0
.end method

.method public getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 6
    .param p1, "lhsTree"    # Lcom/sun/source/tree/Tree;

    .line 1326
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    const/4 v0, 0x0

    .line 1327
    .local v0, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->useFlow:Z

    .line 1328
    .local v1, "oldUseFlow":Z
    iget-boolean v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldCache:Z

    .line 1329
    .local v2, "oldShouldCache":Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->useFlow:Z

    .line 1332
    iput-boolean v3, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldCache:Z

    .line 1333
    sget-object v3, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1344
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isTypeTree(Lcom/sun/source/tree/Tree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1347
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    goto :goto_0

    .line 1341
    :sswitch_0
    move-object v3, p1

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1342
    goto :goto_0

    .line 1338
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1339
    nop

    .line 1357
    :goto_0
    iput-boolean v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->useFlow:Z

    .line 1358
    iput-boolean v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldCache:Z

    .line 1359
    return-object v0

    .line 1349
    :cond_0
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GenericAnnotatedTypeFactory: Unexpected tree passed to getAnnotatedTypeLhs. lhsTree: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Tree.Kind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1354
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public getAnnotatedTypeLhsNoTypeVarDefault(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "lhsTree"    # Lcom/sun/source/tree/Tree;

    .line 1309
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldDefaultTypeVarLocals:Z

    .line 1310
    .local v0, "old":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldDefaultTypeVarLocals:Z

    .line 1311
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1312
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iput-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldDefaultTypeVarLocals:Z

    .line 1313
    return-object v1
.end method

.method public getAnnotatedTypeRhsUnaryAssign(Lcom/sun/source/tree/UnaryTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/UnaryTree;

    .line 1399
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->useFlow:Z

    if-nez v0, :cond_0

    .line 1400
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 1402
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getAssignForUnaryTree(Lcom/sun/source/tree/UnaryTree;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    move-result-object v0

    .line 1403
    .local v0, "n":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method public getAnnotatedTypeVarargsArray(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1370
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->useFlow:Z

    if-nez v0, :cond_0

    .line 1371
    const/4 v0, 0x0

    return-object v0

    .line 1375
    :cond_0
    sget-object v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1383
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected kind of tree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :pswitch_0
    const-class v0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFirstNodeOfKindForTree(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 1381
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    goto :goto_0

    .line 1377
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :pswitch_1
    const-class v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFirstNodeOfKindForTree(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 1378
    .restart local v0    # "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    nop

    .line 1386
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1387
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1388
    .local v1, "varargsArray":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 1389
    .local v2, "varargtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    return-object v2

    .line 1386
    .end local v1    # "varargsArray":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v2    # "varargtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Arguments are empty"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnnotationFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/sun/source/util/TreePath;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 741
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1, p3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 742
    .local v0, "expressionObj":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p0, v0, p2, p4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 755
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    .line 756
    .local v0, "annotationMirror":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v1

    .line 758
    .local v1, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 759
    .local v2, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    if-eqz v2, :cond_0

    .line 760
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotationByClass(Ljava/util/Collection;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 764
    .end local v1    # "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v2    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    :cond_0
    if-nez v0, :cond_3

    .line 765
    instance-of v1, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v1, :cond_2

    .line 766
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 772
    .local v1, "ele":Ljavax/lang/model/element/Element;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 773
    .end local v1    # "ele":Ljavax/lang/model/element/Element;
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v1, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v1, :cond_1

    .line 774
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    .line 775
    .restart local v1    # "ele":Ljavax/lang/model/element/Element;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 778
    .end local v1    # "ele":Ljavax/lang/model/element/Element;
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getAnnotationMirrorFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;
    .param p3, "currentPath"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 836
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-virtual {p0, p1, p3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 837
    .local v0, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v2

    .line 841
    .local v2, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    .line 842
    .local v3, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    :cond_1
    return-object v1

    .line 838
    .end local v2    # "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v3    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getCFGVisualizer()Lorg/checkerframework/dataflow/cfg/CFGVisualizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "TValue;TStore;TTransferFunction;>;"
        }
    .end annotation

    .line 1700
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->cfgVisualizer:Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    return-object v0
.end method

.method public getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .locals 1

    .line 473
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    return-object v0
.end method

.method public getEmptyStore()Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TStore;"
        }
    .end annotation

    .line 1577
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->emptyStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    return-object v0
.end method

.method public getFinalLocalValues()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljavax/lang/model/element/Element;",
            "TValue;>;"
        }
    .end annotation

    .line 1016
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getFinalLocalValues()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getFirstNodeOfKindForTree(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">(",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1005
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p2, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;

    move-result-object v0

    .line 1006
    .local v0, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1007
    .local v2, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 1008
    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v1

    .line 1010
    .end local v2    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    goto :goto_0

    .line 1011
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInferredValueFor(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")TValue;"
        }
    .end annotation

    .line 1507
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    if-eqz p1, :cond_2

    .line 1511
    const/4 v0, 0x0

    .line 1512
    .local v0, "as":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1513
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getValue(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 1515
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    if-eqz v1, :cond_1

    .line 1520
    invoke-virtual {v1, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getValue(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 1522
    :cond_1
    return-object v0

    .line 1508
    .end local v0    # "as":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GenericAnnotatedTypeFactory.getInferredValueFor called with null tree"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethodReturnType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "m"    # Lcom/sun/source/tree/MethodTree;

    .line 1419
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getMethodReturnType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1420
    .local v0, "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeReturnType(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1423
    :cond_0
    return-object v0
.end method

.method public getMethodReturnType(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ReturnTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "m"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "r"    # Lcom/sun/source/tree/ReturnTree;

    .line 1428
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getMethodReturnType(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ReturnTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1429
    .local v0, "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v1, :cond_0

    .line 1430
    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeReturnType(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1432
    :cond_0
    return-object v0
.end method

.method public getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 987
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getQualifierPolymorphism()Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    .locals 1

    .line 679
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->poly:Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;

    return-object v0
.end method

.method public getReceiverAndOffsetFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/Pair;
    .locals 3
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "currentPath"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/source/util/TreePath;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 814
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getExpressionAndOffset(Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 815
    .local v0, "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 816
    .local v1, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v2, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    return-object v2
.end method

.method public getReceiverFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 5
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "currentPath"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 790
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 792
    .local v0, "enclosingClass":Ljavax/lang/model/type/TypeMirror;
    invoke-static {p2, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfPseudoReceiver(Lcom/sun/source/util/TreePath;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 793
    .local v1, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 796
    invoke-static {p0, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->getParametersOfEnclosingMethod(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/util/TreePath;)Ljava/util/List;

    move-result-object v3

    .line 797
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 799
    .local v2, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    const/4 v3, 0x1

    invoke-static {p1, v2, p2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    return-object v3
.end method

.method public getRegularExitStore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")TStore;"
        }
    .end annotation

    .line 895
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    return-object v0
.end method

.method public getResultingTypeOfConstructorMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "memberReferenceTree"    # Lcom/sun/source/tree/MemberReferenceTree;
    .param p2, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 707
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getMode()Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;

    if-ne v0, v1, :cond_0

    .line 714
    nop

    .line 715
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getQualifierExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 718
    .local v0, "constructorReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-static {p0, v0, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->copyOnlyExplicitConstructorAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 722
    nop

    .line 723
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getQualifierExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 722
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 724
    return-object v0

    .line 707
    .end local v0    # "constructorReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getReturnStatementStores(Lcom/sun/source/tree/MethodTree;)Ljava/util/List;
    .locals 1
    .param p1, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TValue;TStore;>;>;>;"
        }
    .end annotation

    .line 901
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->returnStatementStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->returnStatementStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 901
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getShouldDefaultTypeVarLocals()Z
    .locals 1

    .line 1614
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldDefaultTypeVarLocals:Z

    return v0
.end method

.method protected final getSortedQualifierNames()Ljava/lang/String;
    .locals 6

    .line 527
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    .line 528
    .local v0, "stq":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const-string v1, "No qualifiers examined"

    return-object v1

    .line 531
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 qualifier examined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 537
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 538
    .local v1, "sortedSupportedQuals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    new-instance v2, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    const-string v3, " qualifiers examined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 550
    .local v4, "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .end local v4    # "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getStoreAfter(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")TStore;"
        }
    .end annotation

    .line 949
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getStoreAfter(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    return-object v0

    .line 952
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;

    move-result-object v0

    .line 953
    .local v0, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreAfter(Ljava/util/Set;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v1

    return-object v1
.end method

.method public getStoreAfter(Ljava/util/Set;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;)TStore;"
        }
    .end annotation

    .line 958
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    const/4 v0, 0x0

    .line 959
    .local v0, "merge":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 960
    .local v2, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreAfter(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v3

    .line 961
    .local v3, "s":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    if-nez v0, :cond_0

    .line 962
    move-object v0, v3

    goto :goto_1

    .line 963
    :cond_0
    if-eqz v3, :cond_1

    .line 964
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/flow/CFAbstractStore;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    .line 966
    .end local v2    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "s":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 967
    :cond_2
    return-object v0
.end method

.method public getStoreAfter(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TStore;"
        }
    .end annotation

    .line 972
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 976
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getBlock()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getInput(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 977
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getNodeValues()Ljava/util/IdentityHashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResultAnalysisCaches:Ljava/util/Map;

    .line 973
    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->runAnalysisFor(Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferInput;Ljava/util/IdentityHashMap;Ljava/util/Map;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 979
    .local v0, "res":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    return-object v0
.end method

.method public getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")TStore;"
        }
    .end annotation

    .line 907
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    return-object v0

    .line 910
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;

    move-result-object v0

    .line 911
    .local v0, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreBefore(Ljava/util/Set;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v1

    return-object v1

    .line 914
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v1, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractStore;

    return-object v1
.end method

.method public getStoreBefore(Ljava/util/Set;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;)TStore;"
        }
    .end annotation

    .line 920
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    const/4 v0, 0x0

    .line 921
    .local v0, "merge":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 922
    .local v2, "aNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreBefore(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v3

    .line 923
    .local v3, "s":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    if-nez v0, :cond_0

    .line 924
    move-object v0, v3

    goto :goto_1

    .line 925
    :cond_0
    if-eqz v3, :cond_1

    .line 926
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/flow/CFAbstractStore;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    .line 928
    .end local v2    # "aNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "s":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 929
    :cond_2
    return-object v0
.end method

.method public getStoreBefore(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TStore;"
        }
    .end annotation

    .line 934
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getStoreBefore(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    return-object v0

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getBlock()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getInput(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v0

    .line 938
    .local v0, "prevStore":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TValue;TStore;>;"
    if-nez v0, :cond_1

    .line 939
    const/4 v1, 0x0

    return-object v1

    .line 941
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 943
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getNodeValues()Ljava/util/IdentityHashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResultAnalysisCaches:Ljava/util/Map;

    .line 942
    const/4 v3, 0x1

    invoke-static {p1, v3, v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->runAnalysisFor(Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferInput;Ljava/util/IdentityHashMap;Ljava/util/Map;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 944
    .local v1, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    return-object v1
.end method

.method public final getSupportedMonotonicTypeQualifiers()Ljava/util/Set;
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

    .line 299
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->supportedMonotonicQuals:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->supportedMonotonicQuals:Ljava/util/Set;

    .line 301
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

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

    .line 302
    .local v1, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v2, Lorg/checkerframework/framework/qual/MonotonicQualifier;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/qual/MonotonicQualifier;

    .line 303
    .local v2, "mono":Lorg/checkerframework/framework/qual/MonotonicQualifier;
    if-eqz v2, :cond_0

    .line 304
    iget-object v3, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->supportedMonotonicQuals:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v1    # "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "mono":Lorg/checkerframework/framework/qual/MonotonicQualifier;
    :cond_0
    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->supportedMonotonicQuals:Ljava/util/Set;

    return-object v0
.end method

.method public getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "****>;U:",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)TT;"
        }
    .end annotation

    .line 1591
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p1, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    .line 1592
    .local v0, "subFactory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "TT;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1594
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v1

    .line 1595
    .local v1, "subFactoryVisitorState":Lorg/checkerframework/framework/type/VisitorState;
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setPath(Lcom/sun/source/util/TreePath;)V

    .line 1596
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 1597
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getClassType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setClassType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1598
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 1599
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getMethodReceiver()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1601
    .end local v1    # "subFactoryVisitorState":Lorg/checkerframework/framework/type/VisitorState;
    :cond_0
    return-object v0
.end method

.method protected handleCFGViz()V
    .locals 1

    .line 1290
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->visualizeCFG()V

    .line 1291
    return-void
.end method

.method public methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 1556
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    .line 1557
    .local v0, "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 1558
    .local v1, "method":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v2, :cond_0

    .line 1559
    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->viewpointAdaptMethod(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 1561
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->poly:Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;

    invoke-interface {v2, p1, v1}, Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;->resolve(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 1562
    return-object v0
.end method

.method protected performFlowAnalysis(Lcom/sun/source/tree/ClassTree;)V
    .locals 31
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 1024
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    .line 1026
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->returnStatementStores:Ljava/util/IdentityHashMap;

    .line 1027
    new-instance v0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResultAnalysisCaches:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;-><init>(Ljava/util/Map;)V

    iput-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    .line 1031
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/ClassTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 1033
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->scannedClasses:Ljava/util/Map;

    sget-object v1, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;->FINISHED:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    return-void

    .line 1037
    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    move-object v13, v0

    .line 1038
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1041
    .local v11, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    const/4 v0, 0x0

    invoke-static {v15, v0}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1043
    :goto_0
    invoke-interface {v13}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1044
    invoke-interface {v13}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/checkerframework/javacutil/Pair;

    .line 1045
    .local v12, "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    iget-object v1, v12, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lcom/sun/source/tree/ClassTree;

    .line 1046
    .local v10, "ct":Lcom/sun/source/tree/ClassTree;
    iget-object v1, v12, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1047
    .local v9, "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->scannedClasses:Ljava/util/Map;

    sget-object v2, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;->IN_PROGRESS:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    .line 1050
    .local v8, "preTreePath":Lcom/sun/source/util/TreePath;
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getClassType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v7

    .line 1051
    .local v7, "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v6

    .line 1052
    .local v6, "preClassTree":Lcom/sun/source/tree/ClassTree;
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getMethodReceiver()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    .line 1053
    .local v5, "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v4

    .line 1056
    .local v4, "preMT":Lcom/sun/source/tree/MethodTree;
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    iget-object v2, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-static {v2, v10}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setPath(Lcom/sun/source/util/TreePath;)V

    .line 1057
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-static {v10}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setClassType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1058
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1, v10}, Lorg/checkerframework/framework/type/VisitorState;->setClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 1059
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1060
    iget-object v1, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 1063
    iput-object v9, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStaticStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1064
    iput-object v9, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1066
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 1069
    .local v3, "lambdaQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 1070
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    invoke-interface {v10}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    if-eqz v1, :cond_7

    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    move-object/from16 v17, v1

    .line 1071
    .local v17, "m":Lcom/sun/source/tree/Tree;
    sget-object v1, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface/range {v17 .. v17}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v18

    aget v1, v1, v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    packed-switch v1, :pswitch_data_0

    .line 1140
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v20, v7

    move-object/from16 v27, v8

    move-object v1, v9

    move-object v15, v10

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object v12, v2

    move-object v13, v11

    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .end local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v1, "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .local v12, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .local v13, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v15, "ct":Lcom/sun/source/tree/ClassTree;
    .local v19, "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v20, "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v21, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .local v24, "preMT":Lcom/sun/source/tree/MethodTree;
    .local v25, "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v26, "preClassTree":Lcom/sun/source/tree/ClassTree;
    .local v27, "preTreePath":Lcom/sun/source/util/TreePath;
    goto/16 :goto_4

    .line 1127
    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v12, "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    :pswitch_0
    :try_start_2
    move-object/from16 v1, v17

    check-cast v1, Lcom/sun/source/tree/BlockTree;

    .line 1128
    .local v1, "b":Lcom/sun/source/tree/BlockTree;
    new-instance v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;

    invoke-direct {v0, v1, v10}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;-><init>(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ClassTree;)V

    const/16 v19, 0x1

    const/16 v20, 0x1

    .line 1136
    invoke-interface {v1}, Lcom/sun/source/tree/BlockTree;->isStatic()Z

    move-result v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1128
    move-object/from16 v22, v1

    .end local v1    # "b":Lcom/sun/source/tree/BlockTree;
    .local v22, "b":Lcom/sun/source/tree/BlockTree;
    move-object/from16 v1, p0

    move-object/from16 v23, v2

    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .local v23, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    move-object v2, v13

    move-object/from16 v24, v4

    .end local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    move-object v4, v0

    move-object/from16 v25, v5

    .end local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    move-object v5, v11

    move-object/from16 v26, v6

    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    move-object v6, v10

    move-object v15, v7

    .end local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v15, "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    move/from16 v7, v19

    move-object/from16 v27, v8

    .end local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    move/from16 v8, v20

    move-object/from16 v19, v9

    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .local v19, "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    move/from16 v9, v21

    move-object/from16 v20, v15

    move-object v15, v10

    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .local v15, "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    move-object/from16 v10, v19

    :try_start_3
    invoke-virtual/range {v1 .. v10}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analyze(Ljava/util/Queue;Ljava/util/Queue;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;Lcom/sun/source/tree/ClassTree;ZZZLorg/checkerframework/framework/flow/CFAbstractStore;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1138
    move-object/from16 v21, v13

    move-object/from16 v1, v19

    move-object v13, v11

    move-object/from16 v19, v12

    move-object/from16 v12, v23

    goto/16 :goto_3

    .line 1185
    .end local v17    # "m":Lcom/sun/source/tree/Tree;
    .end local v22    # "b":Lcom/sun/source/tree/BlockTree;
    .end local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :catchall_0
    move-exception v0

    move-object v2, v11

    move-object/from16 v21, v13

    move-object/from16 v1, v19

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    move-object/from16 v19, v12

    goto/16 :goto_8

    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v20, v7

    move-object/from16 v27, v8

    move-object/from16 v19, v9

    move-object v15, v10

    move-object v2, v11

    move-object/from16 v21, v13

    move-object/from16 v1, v19

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v4, v27

    move-object/from16 v19, v12

    .end local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v19    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    goto/16 :goto_8

    .line 1124
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v17    # "m":Lcom/sun/source/tree/Tree;
    :pswitch_1
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v20, v7

    move-object/from16 v27, v8

    move-object/from16 v19, v9

    move-object v15, v10

    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .end local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v19    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    :try_start_4
    move-object/from16 v0, v17

    check-cast v0, Lcom/sun/source/tree/ClassTree;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v1, v19

    .end local v19    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .local v1, "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :try_start_5
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1125
    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object/from16 v12, v23

    move-object v13, v11

    goto/16 :goto_3

    .line 1185
    .end local v17    # "m":Lcom/sun/source/tree/Tree;
    .end local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :catchall_2
    move-exception v0

    move-object v2, v11

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    goto/16 :goto_8

    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v19    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    :catchall_3
    move-exception v0

    move-object/from16 v1, v19

    move-object v2, v11

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    .end local v19    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    goto/16 :goto_8

    .line 1093
    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v17    # "m":Lcom/sun/source/tree/Tree;
    :pswitch_2
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v20, v7

    move-object/from16 v27, v8

    move-object v1, v9

    move-object v15, v10

    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .end local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    :try_start_6
    move-object/from16 v0, v17

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    .line 1094
    .local v0, "vt":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 1096
    .local v2, "initializer":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v2, :cond_3

    .line 1097
    nop

    .line 1098
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v19, v12

    .end local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v19, "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    move v12, v4

    .line 1099
    .local v12, "isStatic":Z
    :try_start_7
    new-instance v7, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;

    invoke-direct {v7, v0, v15}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;-><init>(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ClassTree;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/4 v10, 0x1

    const/16 v21, 0x1

    move-object/from16 v4, p0

    move-object v5, v13

    move-object v6, v3

    move-object v8, v11

    move-object/from16 v9, p1

    move-object/from16 v28, v11

    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v28, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    move/from16 v11, v21

    move-object/from16 v21, v13

    .end local v13    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    move-object v13, v1

    :try_start_8
    invoke-virtual/range {v4 .. v13}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analyze(Ljava/util/Queue;Ljava/util/Queue;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;Lcom/sun/source/tree/ClassTree;ZZZLorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 1109
    iget-object v4, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    invoke-virtual {v4, v2}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getValue(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 1110
    .local v4, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v5

    invoke-interface {v5}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 1113
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v5

    .line 1114
    .local v5, "element":Ljavax/lang/model/element/VariableElement;
    invoke-static {v5, v4}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v13, v28

    .end local v28    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v13, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    :try_start_9
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1110
    .end local v5    # "element":Ljavax/lang/model/element/VariableElement;
    .end local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v28    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    :cond_2
    move-object/from16 v13, v28

    .line 1116
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    .end local v12    # "isStatic":Z
    .end local v28    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    :goto_2
    move-object/from16 v12, v23

    goto/16 :goto_3

    .line 1185
    .end local v0    # "vt":Lcom/sun/source/tree/VariableTree;
    .end local v2    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    .end local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v17    # "m":Lcom/sun/source/tree/Tree;
    .end local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v28    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v13, v28

    move-object v2, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    .end local v28    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    goto/16 :goto_8

    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v21, v13

    move-object v13, v11

    move-object v2, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v13, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    goto/16 :goto_8

    .line 1096
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v0    # "vt":Lcom/sun/source/tree/VariableTree;
    .restart local v2    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v12, "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v17    # "m":Lcom/sun/source/tree/Tree;
    .restart local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :cond_3
    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object v13, v11

    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    move-object/from16 v12, v23

    goto/16 :goto_3

    .line 1185
    .end local v0    # "vt":Lcom/sun/source/tree/VariableTree;
    .end local v2    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    .end local v17    # "m":Lcom/sun/source/tree/Tree;
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .end local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    :catchall_6
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object v13, v11

    move-object v2, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    goto/16 :goto_8

    .line 1073
    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .local v4, "preMT":Lcom/sun/source/tree/MethodTree;
    .local v5, "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v17    # "m":Lcom/sun/source/tree/Tree;
    :pswitch_3
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v20, v7

    move-object/from16 v27, v8

    move-object v1, v9

    move-object v15, v10

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object v13, v11

    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .end local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .local v13, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    move-object/from16 v0, v17

    check-cast v0, Lcom/sun/source/tree/MethodTree;

    .line 1076
    .local v0, "mt":Lcom/sun/source/tree/MethodTree;
    invoke-interface {v0}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v2

    .line 1077
    .local v2, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    sget-object v4, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    .line 1078
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1079
    move-object/from16 v12, v23

    goto :goto_3

    .line 1083
    :cond_4
    invoke-interface {v0}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1084
    move-object/from16 v12, v23

    goto :goto_3

    .line 1089
    :cond_5
    new-instance v4, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    invoke-direct {v4, v0, v15}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;-><init>(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ClassTree;)V

    .line 1090
    .local v4, "met":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    move-object/from16 v12, v23

    .end local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .local v12, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    goto :goto_3

    .line 1077
    .end local v4    # "met":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    .end local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :cond_6
    move-object/from16 v12, v23

    .line 1143
    .end local v0    # "mt":Lcom/sun/source/tree/MethodTree;
    .end local v2    # "flags":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    .end local v17    # "m":Lcom/sun/source/tree/Tree;
    .end local v23    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :goto_3
    move-object v9, v1

    move-object v2, v12

    move-object v11, v13

    move-object v10, v15

    move-object/from16 v12, v19

    move-object/from16 v7, v20

    move-object/from16 v13, v21

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v8, v27

    const/4 v0, 0x0

    move-object/from16 v15, p1

    goto/16 :goto_1

    .line 1185
    .end local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :catchall_7
    move-exception v0

    move-object v2, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    goto/16 :goto_8

    .line 1140
    .restart local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v17    # "m":Lcom/sun/source/tree/Tree;
    :goto_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected member: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v17 .. v17}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v3    # "lambdaQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;>;"
    .end local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local p1    # "classTree":Lcom/sun/source/tree/ClassTree;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1185
    .end local v17    # "m":Lcom/sun/source/tree/Tree;
    .restart local v3    # "lambdaQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;>;"
    .local v4, "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v12, "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local p1    # "classTree":Lcom/sun/source/tree/ClassTree;
    :catchall_8
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v20, v7

    move-object/from16 v27, v8

    move-object v1, v9

    move-object v15, v10

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object v13, v11

    move-object v2, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v4, v27

    .end local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .local v13, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    goto/16 :goto_8

    .line 1148
    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    :cond_7
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v20, v7

    move-object/from16 v27, v8

    move-object v1, v9

    move-object v15, v10

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object v12, v2

    move-object v13, v11

    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .end local v4    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v5    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .local v12, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .local v13, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    :try_start_a
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    if-eqz v2, :cond_8

    :try_start_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    .line 1149
    .local v7, "met":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    nop

    .line 1155
    invoke-virtual {v7}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 1149
    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object v6, v3

    move-object v8, v13

    move-object/from16 v9, p1

    move-object/from16 v16, v12

    .end local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .local v16, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    move v12, v2

    move-object v2, v13

    .end local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v2, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    move-object v13, v1

    :try_start_c
    invoke-virtual/range {v4 .. v13}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analyze(Ljava/util/Queue;Ljava/util/Queue;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;Lcom/sun/source/tree/ClassTree;ZZZLorg/checkerframework/framework/flow/CFAbstractStore;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 1159
    .end local v7    # "met":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    move-object v13, v2

    move-object/from16 v12, v16

    goto :goto_5

    .line 1185
    .end local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v16    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    :catchall_9
    move-exception v0

    move-object v2, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    .end local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    goto/16 :goto_8

    .line 1148
    .end local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .restart local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    :cond_8
    move-object/from16 v16, v12

    move-object v2, v13

    .line 1161
    .end local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    .end local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v16    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :goto_6
    :try_start_d
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-nez v0, :cond_9

    .line 1162
    :try_start_e
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/javacutil/Pair;

    .line 1163
    .local v0, "lambdaPair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;"
    new-instance v7, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;

    iget-object v4, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-direct {v7, v4}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;-><init>(Lcom/sun/source/tree/LambdaExpressionTree;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v4, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object v6, v3

    move-object v8, v2

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v13}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analyze(Ljava/util/Queue;Ljava/util/Queue;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;Lcom/sun/source/tree/ClassTree;ZZZLorg/checkerframework/framework/flow/CFAbstractStore;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 1173
    .end local v0    # "lambdaPair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;"
    goto :goto_6

    .line 1185
    .end local v16    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    goto/16 :goto_8

    .line 1179
    .restart local v16    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :cond_9
    :try_start_f
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStaticStore:Lorg/checkerframework/framework/flow/CFAbstractStore;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-nez v0, :cond_a

    .line 1180
    :try_start_10
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    iget-object v4, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->emptyStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    invoke-virtual {v0, v15, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto :goto_7

    .line 1182
    :cond_a
    :try_start_11
    iget-object v4, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v15, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1185
    .end local v16    # "methods":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;>;"
    :goto_7
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    move-object/from16 v4, v27

    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .local v4, "preTreePath":Lcom/sun/source/util/TreePath;
    invoke-virtual {v0, v4}, Lorg/checkerframework/framework/type/VisitorState;->setPath(Lcom/sun/source/util/TreePath;)V

    .line 1186
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    move-object/from16 v5, v20

    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v5, "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/VisitorState;->setClassType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1187
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    move-object/from16 v6, v26

    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    invoke-virtual {v0, v6}, Lorg/checkerframework/framework/type/VisitorState;->setClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 1188
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    move-object/from16 v7, v25

    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v7, "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v0, v7}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1189
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    move-object/from16 v8, v24

    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .local v8, "preMT":Lcom/sun/source/tree/MethodTree;
    invoke-virtual {v0, v8}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 1190
    nop

    .line 1192
    iget-object v0, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->scannedClasses:Ljava/util/Map;

    sget-object v9, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;->FINISHED:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory$ScanState;

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v3    # "lambdaQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;>;"
    .end local v4    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v5    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    move-object/from16 v15, p1

    move-object v11, v2

    move-object/from16 v13, v21

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1185
    .restart local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v3    # "lambdaQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;>;"
    .restart local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    :catchall_b
    move-exception v0

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v4    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v5    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preMT":Lcom/sun/source/tree/MethodTree;
    goto :goto_8

    .end local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v4    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v5    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    :catchall_c
    move-exception v0

    move-object v2, v13

    move-object/from16 v5, v20

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v27

    .end local v13    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v20    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v24    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v25    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v26    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v27    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v4    # "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v5    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .restart local v7    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v8    # "preMT":Lcom/sun/source/tree/MethodTree;
    goto :goto_8

    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .local v4, "preMT":Lcom/sun/source/tree/MethodTree;
    .local v5, "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v7, "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v8, "preTreePath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v12, "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .local v13, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    :catchall_d
    move-exception v0

    move-object v1, v9

    move-object v15, v10

    move-object v2, v11

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    move-object/from16 v29, v8

    move-object v8, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v7

    move-object v7, v5

    move-object/from16 v5, v30

    .end local v9    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v10    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v12    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v13    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .restart local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .local v4, "preTreePath":Lcom/sun/source/util/TreePath;
    .local v5, "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v7, "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v8, "preMT":Lcom/sun/source/tree/MethodTree;
    .restart local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .restart local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .restart local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    :goto_8
    iget-object v9, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v9, v4}, Lorg/checkerframework/framework/type/VisitorState;->setPath(Lcom/sun/source/util/TreePath;)V

    .line 1186
    iget-object v9, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v9, v5}, Lorg/checkerframework/framework/type/VisitorState;->setClassType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1187
    iget-object v9, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v9, v6}, Lorg/checkerframework/framework/type/VisitorState;->setClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 1188
    iget-object v9, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v9, v7}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1189
    iget-object v9, v14, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v9, v8}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    throw v0

    .line 1194
    .end local v1    # "capturedStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TStore;"
    .end local v2    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .end local v3    # "lambdaQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/LambdaExpressionTree;TStore;>;>;"
    .end local v4    # "preTreePath":Lcom/sun/source/util/TreePath;
    .end local v5    # "preClassType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v6    # "preClassTree":Lcom/sun/source/tree/ClassTree;
    .end local v7    # "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v8    # "preMT":Lcom/sun/source/tree/MethodTree;
    .end local v15    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v19    # "qel":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;"
    .end local v21    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    .restart local v11    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;>;"
    .restart local v13    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ClassTree;TStore;>;>;"
    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected postDirectSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V
    .locals 3
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

    .line 689
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    .local p2, "supertypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->postDirectSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 690
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 691
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 692
    .local v1, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 693
    .local v2, "elt":Ljavax/lang/model/element/Element;
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 694
    .end local v1    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "elt":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 696
    :cond_0
    return-void
.end method

.method protected postInit()V
    .locals 2

    .line 231
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-super {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->postInit()V

    .line 233
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    .line 234
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createAndInitQualifierDefaults()Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaults:Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    .line 235
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->treeAnnotator:Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 236
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->typeAnnotator:Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    .line 237
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createDefaultForUseTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaultQualifierForUseTypeAnnotator:Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;

    .line 239
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createQualifierPolymorphism()Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->poly:Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 242
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTransferFunction()Lorg/checkerframework/dataflow/analysis/TransferFunction;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->transfer:Lorg/checkerframework/framework/flow/CFAbstractTransfer;

    .line 243
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->usesSequentialSemantics()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->emptyStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 245
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->parseStubFiles()V

    .line 246
    return-void
.end method

.method public preProcessClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 1
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 256
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->everUseFlow:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->checkAndPerformFlowAnalysis(Lcom/sun/source/tree/Tree;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 1
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 273
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 274
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->scannedClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResult:Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    .line 276
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->regularExitStores:Ljava/util/IdentityHashMap;

    .line 277
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->methodInvocationStores:Ljava/util/IdentityHashMap;

    .line 278
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->returnStatementStores:Ljava/util/IdentityHashMap;

    .line 279
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 280
    iput-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->initializationStaticStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 282
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->flowResultAnalysisCaches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 284
    iget-object v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->defaultQualifierForUseTypeAnnotator:Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->clearCache()V

    .line 286
    :cond_0
    return-void
.end method

.method public typeVariablesFromUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
    .locals 3
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

    .line 1568
    .local p0, "this":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TValue;TStore;TTransferFunction;TFlowAnalysis;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVariablesFromUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v0

    .line 1569
    .local v0, "f":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v1, :cond_0

    .line 1570
    iget-object v2, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 1571
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 1570
    invoke-virtual {v1, p2, v0, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->viewpointAdaptTypeVariableBounds(Ljavax/lang/model/element/TypeElement;Ljava/util/List;Lcom/sun/source/util/TreePath;)V

    .line 1573
    :cond_0
    return-object v0
.end method
