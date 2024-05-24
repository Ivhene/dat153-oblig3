.class public Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "UpperBoundAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;,
        Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundQualifierHierarchy;,
        Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTypeAnnotator;
    }
.end annotation


# instance fields
.field public final BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field public final POLY:Ljavax/lang/model/element/AnnotationMirror;

.field public final UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

.field private final imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 6
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 118
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 105
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/UpperBoundUnknown;

    .line 106
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 108
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/UpperBoundBottom;

    .line 109
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 111
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/PolyUpperBound;

    .line 112
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->POLY:Ljavax/lang/model/element/AnnotationMirror;

    .line 120
    const-class v1, Lorg/checkerframework/checker/index/qual/IndexFor;

    const-class v2, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v2, v5, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 121
    const-class v1, Lorg/checkerframework/checker/index/qual/IndexOrLow;

    const-class v2, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v5, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 122
    const-class v1, Lorg/checkerframework/checker/index/qual/IndexOrHigh;

    const-class v2, Lorg/checkerframework/checker/index/qual/LTEqLengthOf;

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v5, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 123
    const-class v1, Lorg/checkerframework/checker/index/qual/SearchIndexFor;

    const-class v2, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v5, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 124
    const-class v1, Lorg/checkerframework/checker/index/qual/NegativeIndexFor;

    const-class v2, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v5, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 125
    const-class v1, Lorg/checkerframework/checker/index/qual/LengthOf;

    const-class v2, Lorg/checkerframework/checker/index/qual/LTEqLengthOf;

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v5, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 126
    const-class v1, Lorg/checkerframework/checker/index/qual/PolyIndex;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 128
    new-instance v0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    .line 130
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->postInit()V

    .line 131
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 102
    invoke-direct {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getSearchIndexAnnotatedTypeFactory()Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/IndexMethodIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$700(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method private addUpperBoundTypeFromValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 229
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    const-class v1, Lorg/checkerframework/common/value/qual/BottomVal;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 232
    :cond_0
    return-void
.end method

.method private fromLessThanOrEqual(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 11
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "treePath"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/sun/source/util/TreePath;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;"
        }
    .end annotation

    .line 794
    .local p3, "lessThanExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 795
    .local v0, "ubQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 798
    .local v2, "expression":Ljava/lang/String;
    nop

    .line 799
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getReceiverAndOffsetFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v3
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .local v3, "receiverAndOffset":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/lang/String;>;"
    goto :goto_1

    .line 800
    .end local v3    # "receiverAndOffset":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 801
    .local v3, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    const/4 v4, 0x0

    move-object v3, v4

    .line 803
    .local v3, "receiverAndOffset":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/lang/String;>;"
    :goto_1
    if-nez v3, :cond_0

    .line 804
    goto :goto_0

    .line 806
    :cond_0
    iget-object v4, v3, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 807
    .local v4, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v5, v3, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 809
    .local v5, "offset":Ljava/lang/String;
    invoke-static {v4}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 810
    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFStore;

    .line 813
    .local v6, "store":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v6, v4}, Lorg/checkerframework/framework/flow/CFStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFValue;

    .line 814
    .local v7, "value":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 815
    iget-object v8, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 818
    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v9

    iget-object v10, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 817
    invoke-virtual {v8, v9, v10}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 819
    invoke-static {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->negateConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 816
    invoke-static {v8, v9}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v8

    .line 820
    .local v8, "newUBQ":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    if-nez v0, :cond_2

    .line 821
    move-object v0, v8

    goto :goto_2

    .line 823
    :cond_2
    invoke-virtual {v0, v8}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 826
    .end local v2    # "expression":Ljava/lang/String;
    .end local v3    # "receiverAndOffset":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/lang/String;>;"
    .end local v4    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "offset":Ljava/lang/String;
    .end local v6    # "store":Lorg/checkerframework/framework/flow/CFStore;
    .end local v7    # "value":Lorg/checkerframework/framework/flow/CFValue;
    .end local v8    # "newUBQ":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_3
    :goto_2
    goto :goto_0

    .line 827
    :cond_4
    return-object v0
.end method

.method private getSearchIndexAnnotatedTypeFactory()Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;
    .locals 1

    .line 164
    const-class v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    return-object v0
.end method


# virtual methods
.method public addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "iUseFlow"    # Z

    .line 210
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    .line 214
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isExpressionTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 216
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addUpperBoundTypeFromValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 218
    .end local v0    # "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    return-void
.end method

.method public addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 200
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    nop

    .line 203
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 204
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->addUpperBoundTypeFromValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 206
    .end local v0    # "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    return-void
.end method

.method public convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "qualifier"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 757
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 759
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 761
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isPoly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->POLY:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 765
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 766
    .local v0, "ltlQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->convertToAnnotation(Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method protected createDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .locals 1

    .line 276
    new-instance v0, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method varargs createLTEqLengthOfAnnotation([Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;

    .line 315
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    const-class v2, Lorg/checkerframework/checker/index/qual/LTEqLengthOf;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 320
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 321
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 316
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    .line 317
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createLTEqLengthOfAnnotation: bad argument %s"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method varargs createLTLengthOfAnnotation([Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;

    .line 305
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    const-class v2, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 310
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 311
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 306
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    .line 307
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createLTLengthOfAnnotation: bad argument %s"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 342
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundQualifierHierarchy;-><init>(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

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

    .line 141
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/index/qual/UpperBoundUnknown;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/index/qual/LTEqLengthOf;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/checkerframework/checker/index/qual/LTOMLengthOf;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/checkerframework/checker/index/qual/UpperBoundBottom;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lorg/checkerframework/checker/index/qual/PolyUpperBound;

    aput-object v3, v1, v2

    .line 142
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 410
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;-><init>(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 411
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 410
    return-object v0
.end method

.method protected createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    .locals 4

    .line 236
    new-instance v0, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTypeAnnotator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p0, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTypeAnnotator;-><init>(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$1;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 237
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;-><init>([Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;)V

    .line 236
    return-object v0
.end method

.method fromLessThan(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "treePath"    # Lcom/sun/source/util/TreePath;

    .line 770
    nop

    .line 771
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLessThanAnnotatedTypeFactory()Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;

    move-result-object v0

    .line 772
    .local v0, "lessThanExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 773
    return-object v1

    .line 775
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->fromLessThanOrEqual(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 776
    .local v2, "ubQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    if-eqz v2, :cond_1

    .line 777
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    return-object v1

    .line 779
    :cond_1
    return-object v1
.end method

.method fromLessThanOrEqual(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "treePath"    # Lcom/sun/source/util/TreePath;

    .line 783
    nop

    .line 784
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLessThanAnnotatedTypeFactory()Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;

    move-result-object v0

    .line 785
    .local v0, "lessThanExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 786
    const/4 v1, 0x0

    return-object v1

    .line 788
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->fromLessThanOrEqual(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 789
    .local v1, "ubQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    return-object v1
.end method

.method public getLessThanAnnotatedTypeFactory()Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
    .locals 1

    .line 195
    const-class v0, Lorg/checkerframework/checker/index/inequality/LessThanChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    return-object v0
.end method

.method getLowerBoundAnnotatedTypeFactory()Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;
    .locals 1

    .line 190
    const-class v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    return-object v0
.end method

.method getMethodIdentifier()Lorg/checkerframework/checker/index/IndexMethodIdentifier;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    return-object v0
.end method

.method getSameLenAnnotatedTypeFactory()Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;
    .locals 1

    .line 181
    const-class v0, Lorg/checkerframework/checker/index/samelen/SameLenChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    return-object v0
.end method

.method getSubstringIndexAnnotatedTypeFactory()Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;
    .locals 1

    .line 173
    const-class v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    return-object v0
.end method

.method getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .locals 1

    .line 156
    const-class v0, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    return-object v0
.end method

.method public hasLowerBoundTypeByClass(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 333
    .local p2, "classOfType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    nop

    .line 334
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLowerBoundAnnotatedTypeFactory()Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLowerBoundAnnotatedTypeFactory()Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isMathMin(Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "methodTree"    # Lcom/sun/source/tree/Tree;

    .line 291
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isMathMin(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    return v0
.end method

.method public isRandomNextInt(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "methodTree"    # Lcom/sun/source/tree/Tree;

    .line 301
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isRandomNextInt(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method public sameLenAnnotationFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 284
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getSameLenAnnotatedTypeFactory()Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 285
    .local v0, "sameLenType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v1, Lorg/checkerframework/checker/index/qual/SameLen;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method
