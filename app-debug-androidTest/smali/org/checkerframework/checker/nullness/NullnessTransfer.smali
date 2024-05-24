.class public Lorg/checkerframework/checker/nullness/NullnessTransfer;
.super Lorg/checkerframework/checker/initialization/InitializationTransfer;
.source "NullnessTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/checker/initialization/InitializationTransfer<",
        "Lorg/checkerframework/checker/nullness/NullnessValue;",
        "Lorg/checkerframework/checker/nullness/NullnessTransfer;",
        "Lorg/checkerframework/checker/nullness/NullnessStore;",
        ">;"
    }
.end annotation


# instance fields
.field protected final MAP_TYPE:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

.field protected final NONNULL:Ljavax/lang/model/element/AnnotationMirror;

.field protected final NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

.field protected final keyForTypeFactory:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

.field protected final nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            "Lorg/checkerframework/checker/nullness/NullnessTransfer;",
            "+",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            "Lorg/checkerframework/checker/nullness/NullnessTransfer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/nullness/NullnessAnalysis;)V
    .locals 4
    .param p1, "analysis"    # Lorg/checkerframework/checker/nullness/NullnessAnalysis;

    .line 86
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 87
    invoke-virtual {p1}, Lorg/checkerframework/checker/nullness/NullnessAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 88
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    .line 89
    .local v1, "elements":Ljavax/lang/model/util/Elements;
    nop

    .line 90
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-class v3, Lorg/checkerframework/checker/nullness/KeyForSubchecker;

    .line 91
    invoke-virtual {v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->keyForTypeFactory:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    .line 92
    const-class v2, Lorg/checkerframework/checker/nullness/qual/NonNull;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 93
    const-class v2, Lorg/checkerframework/checker/nullness/qual/Nullable;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    .line 95
    const-class v2, Ljava/util/Map;

    .line 98
    invoke-virtual {p1}, Lorg/checkerframework/checker/nullness/NullnessAnalysis;->getTypes()Ljavax/lang/model/util/Types;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/checkerframework/javacutil/TypesUtils;->typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 97
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->MAP_TYPE:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 101
    return-void
.end method

.method private createDummyValue()Lorg/checkerframework/checker/nullness/NullnessValue;
    .locals 4

    .line 321
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 322
    .local v0, "dummy":Ljavax/lang/model/type/TypeMirror;
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 323
    .local v1, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 324
    new-instance v2, Lorg/checkerframework/checker/nullness/NullnessValue;

    iget-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-direct {v2, v3, v1, v0}, Lorg/checkerframework/checker/nullness/NullnessValue;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V

    return-object v2
.end method

.method private hasNullableValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z
    .locals 5
    .param p1, "mapOrSubtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 291
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->MAP_TYPE:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 292
    invoke-static {v0, p1, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 293
    .local v0, "mapType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 294
    .local v1, "numTypeArguments":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 297
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 298
    .local v2, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    return v3

    .line 295
    .end local v2    # "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Wrong number %d of type arguments: %s"

    invoke-direct {v2, v4, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method protected finishValue(Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessValue;
    .locals 1
    .param p1, "value"    # Lorg/checkerframework/checker/nullness/NullnessValue;
    .param p2, "store"    # Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 133
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lorg/checkerframework/checker/nullness/NullnessValue;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p2}, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull()Z

    move-result v0

    iput-boolean v0, p1, Lorg/checkerframework/checker/nullness/NullnessValue;->isPolyNullNull:Z

    .line 137
    :cond_0
    return-object p1
.end method

.method protected bridge synthetic finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0

    .line 57
    check-cast p1, Lorg/checkerframework/checker/nullness/NullnessValue;

    check-cast p2, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->finishValue(Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessValue;

    move-result-object p1

    return-object p1
.end method

.method protected makeNonNull(Lorg/checkerframework/checker/nullness/NullnessStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 2
    .param p1, "store"    # Lorg/checkerframework/checker/nullness/NullnessStore;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 108
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 109
    .local v0, "internalRepr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 110
    return-void
.end method

.method protected makeNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")V"
        }
    .end annotation

    .line 114
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->containsTwoStores()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/checker/nullness/NullnessStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 116
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/checker/nullness/NullnessStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/checker/nullness/NullnessStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 120
    :goto_0
    return-void
.end method

.method protected refineToNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessValue;

    .line 125
    .local v0, "oldResultValue":Lorg/checkerframework/checker/nullness/NullnessValue;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 126
    invoke-virtual {v0}, Lorg/checkerframework/checker/nullness/NullnessValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/nullness/NullnessValue;

    .line 127
    .local v1, "refinedResultValue":Lorg/checkerframework/checker/nullness/NullnessValue;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/checker/nullness/NullnessValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/nullness/NullnessValue;

    .line 128
    .local v2, "newResultValue":Lorg/checkerframework/checker/nullness/NullnessValue;
    invoke-virtual {p1, v2}, Lorg/checkerframework/dataflow/analysis/TransferResult;->setResultValue(Lorg/checkerframework/dataflow/analysis/AbstractValue;)V

    .line 129
    return-void
.end method

.method protected strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p2, "firstNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "secondNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "firstValue"    # Lorg/checkerframework/checker/nullness/NullnessValue;
    .param p5, "secondValue"    # Lorg/checkerframework/checker/nullness/NullnessValue;
    .param p6, "notEqualTo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Z)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;"
        }
    .end annotation

    .line 155
    .local p1, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    nop

    .line 156
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    .line 158
    instance-of v0, p2, Lorg/checkerframework/dataflow/cfg/node/NullLiteralNode;

    if-eqz v0, :cond_9

    .line 159
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 160
    .local v0, "thenStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 162
    .local v1, "elseStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    invoke-virtual {p0, p3}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "secondParts":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 164
    .local v4, "secondPart":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v5, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 165
    invoke-static {v5, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    .line 166
    .local v5, "secondInternal":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-static {v5}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/checker/nullness/NullnessStore;

    goto :goto_1

    :cond_0
    move-object v6, v0

    :goto_1
    move-object v0, v6

    .line 168
    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/checker/nullness/NullnessStore;

    goto :goto_2

    :cond_1
    move-object v6, v1

    :goto_2
    move-object v1, v6

    .line 169
    if-eqz p6, :cond_2

    .line 170
    iget-object v6, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v5, v6}, Lorg/checkerframework/checker/nullness/NullnessStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_3

    .line 172
    :cond_2
    iget-object v6, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v5, v6}, Lorg/checkerframework/checker/nullness/NullnessStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 175
    .end local v4    # "secondPart":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "secondInternal":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_3
    :goto_3
    goto :goto_0

    .line 178
    :cond_4
    if-eqz p5, :cond_5

    .line 179
    invoke-virtual {p5}, Lorg/checkerframework/checker/nullness/NullnessValue;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    goto :goto_4

    .line 180
    :cond_5
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v3

    :goto_4
    nop

    .line 181
    .local v3, "secondAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    const-class v5, Lorg/checkerframework/checker/nullness/qual/PolyNull;

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 182
    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/nullness/NullnessStore;

    goto :goto_5

    :cond_6
    move-object v4, v0

    :goto_5
    move-object v0, v4

    .line 183
    if-nez v1, :cond_7

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/nullness/NullnessStore;

    goto :goto_6

    :cond_7
    move-object v4, v1

    :goto_6
    move-object v1, v4

    .line 184
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/checkerframework/checker/nullness/NullnessStore;->setPolyNullNull(Z)V

    .line 187
    :cond_8
    if-eqz v0, :cond_9

    .line 188
    new-instance v4, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/checker/nullness/NullnessValue;

    invoke-direct {v4, v5, v0, v1}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v4

    .line 191
    .end local v0    # "thenStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    .end local v1    # "elseStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    .end local v2    # "secondParts":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v3    # "secondAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_9
    return-object p1
.end method

.method protected bridge synthetic strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7

    .line 57
    move-object v4, p4

    check-cast v4, Lorg/checkerframework/checker/nullness/NullnessValue;

    move-object v5, p5

    check-cast v5, Lorg/checkerframework/checker/nullness/NullnessValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;"
        }
    .end annotation

    .line 197
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 198
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getArray()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 199
    return-object v0
.end method

.method public bridge synthetic visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;"
        }
    .end annotation

    .line 223
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 224
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 225
    return-object v0
.end method

.method public bridge synthetic visitInstanceOf(Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->visitInstanceOf(Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;"
        }
    .end annotation

    .line 205
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitInstanceOf(Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 206
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 207
    .local v1, "thenStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 208
    .local v2, "elseStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/checker/nullness/NullnessStore;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 209
    new-instance v3, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/nullness/NullnessValue;

    invoke-direct {v3, v4, v1, v2}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v3
.end method

.method public bridge synthetic visitMethodAccess(Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->visitMethodAccess(Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodAccess(Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;"
        }
    .end annotation

    .line 215
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitMethodAccess(Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 216
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 217
    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;"
        }
    .end annotation

    .line 246
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 249
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 250
    .local v1, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 256
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v2

    .line 257
    .local v2, "tree":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    .line 258
    .local v3, "method":Ljavax/lang/model/element/ExecutableElement;
    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v4

    .line 259
    .local v4, "methodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v5

    .line 260
    .local v5, "methodParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v2}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v6

    .line 261
    .local v6, "methodArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 262
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v9, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    invoke-virtual {p1, v7}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 261
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 269
    .end local v7    # "i":I
    :cond_1
    iget-object v7, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->keyForTypeFactory:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    if-eqz v7, :cond_2

    invoke-virtual {v7, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->isMapGet(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    iget-object v7, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 271
    invoke-static {v7, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "mapName":Ljava/lang/String;
    iget-object v8, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->nullnessTypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    .line 274
    .local v8, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v9, p0, Lorg/checkerframework/checker/nullness/NullnessTransfer;->keyForTypeFactory:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/source/tree/ExpressionTree;

    invoke-virtual {v9, v7, v10}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->isKeyForMap(Ljava/lang/String;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v8

    check-cast v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 275
    invoke-direct {p0, v9}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->hasNullableValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 276
    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 277
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->refineToNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;)V

    .line 281
    .end local v7    # "mapName":Ljava/lang/String;
    .end local v8    # "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    return-object v0
.end method

.method public bridge synthetic visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;"
        }
    .end annotation

    .line 307
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-direct {p0}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->createDummyValue()Lorg/checkerframework/checker/nullness/NullnessValue;

    move-result-object v0

    .line 308
    .local v0, "value":Lorg/checkerframework/checker/nullness/NullnessValue;
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 310
    .local v1, "thenStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 311
    .local v2, "elseStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 312
    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/nullness/NullnessValue;

    invoke-direct {v3, v4, v1, v2}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 311
    return-object v3

    .line 314
    .end local v1    # "thenStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    .end local v2    # "elseStore":Lorg/checkerframework/checker/nullness/NullnessStore;
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 315
    .local v1, "info":Lorg/checkerframework/checker/nullness/NullnessStore;
    new-instance v2, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->finishValue(Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessValue;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v2
.end method

.method public bridge synthetic visitThrow(Lorg/checkerframework/dataflow/cfg/node/ThrowNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->visitThrow(Lorg/checkerframework/dataflow/cfg/node/ThrowNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitThrow(Lorg/checkerframework/dataflow/cfg/node/ThrowNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ThrowNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ThrowNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;"
        }
    .end annotation

    .line 231
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationTransfer;->visitThrow(Lorg/checkerframework/dataflow/cfg/node/ThrowNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 232
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessTransfer;->makeNonNull(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 233
    return-object v0
.end method
