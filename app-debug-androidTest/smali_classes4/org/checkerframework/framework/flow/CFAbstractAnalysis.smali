.class public abstract Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
.super Lorg/checkerframework/dataflow/analysis/Analysis;
.source "CFAbstractAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TV;>;S:",
        "Lorg/checkerframework/framework/flow/CFAbstractStore<",
        "TV;TS;>;T:",
        "Lorg/checkerframework/framework/flow/CFAbstractTransfer<",
        "TV;TS;TT;>;>",
        "Lorg/checkerframework/dataflow/analysis/Analysis<",
        "TV;TS;TT;>;"
    }
.end annotation


# instance fields
.field protected final atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "TV;TS;TT;+",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;TT;>;>;"
        }
    .end annotation
.end field

.field protected final checker:Lorg/checkerframework/framework/source/SourceChecker;

.field protected final dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

.field protected final env:Ljavax/annotation/processing/ProcessingEnvironment;

.field protected final fieldValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field protected final qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field protected final typeHierarchy:Lorg/checkerframework/framework/type/TypeHierarchy;

.field protected final types:Ljavax/lang/model/util/Types;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "TV;TS;TT;+",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;TT;>;>;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "TV;>;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    .local p2, "factory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TV;TS;TT;+Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;>;"
    .local p3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TV;>;>;"
    nop

    .line 105
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->numberOfIterationsBeforeWidening()I

    move-result v0

    .line 101
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;I)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p4, "maxCountBeforeWidening"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "TV;TS;TT;+",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;TT;>;>;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    .local p2, "factory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TV;TS;TT;+Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;>;"
    .local p3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TV;>;>;"
    invoke-direct {p0, p4}, Lorg/checkerframework/dataflow/analysis/Analysis;-><init>(I)V

    .line 85
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 86
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->types:Ljavax/lang/model/util/Types;

    .line 87
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 88
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->typeHierarchy:Lorg/checkerframework/framework/type/TypeHierarchy;

    .line 89
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    .line 90
    iput-object p2, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 91
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    .line 92
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createTransferFunction()Lorg/checkerframework/framework/flow/CFAbstractTransfer;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->transferFunction:Lorg/checkerframework/dataflow/analysis/TransferFunction;

    .line 94
    iput-object p3, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->fieldValues:Ljava/util/List;

    .line 95
    return-void
.end method


# virtual methods
.method public abstract createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")TV;"
        }
    .end annotation
.end method

.method public createAbstractValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TV;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 140
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_0

    .line 142
    .end local v0    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 144
    .restart local v0    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    return-object v1
.end method

.method public abstract createCopiedStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation
.end method

.method public abstract createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TS;"
        }
    .end annotation
.end method

.method public createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 4
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "underlyingType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")TV;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 185
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 186
    .local v1, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 187
    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 188
    .local v2, "f":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    return-object v3
.end method

.method public createTransferFunction()Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFAbstractTransfer;

    move-result-object v0

    return-object v0
.end method

.method public defaultCreateAbstractValue(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFValue;
    .locals 1
    .param p3, "underlyingType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "**>;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Lorg/checkerframework/framework/flow/CFValue;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;**>;"
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-static {p2, p3, v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->validateSet(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/QualifierHierarchy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/framework/flow/CFValue;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V

    return-object v0
.end method

.method public getEnv()Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1

    .line 210
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method public getFieldValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "TV;>;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->fieldValues:Ljava/util/List;

    return-object v0
.end method

.method public getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "TV;TS;TT;+",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;TT;>;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    return-object v0
.end method

.method public getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;
    .locals 1

    .line 166
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->typeHierarchy:Lorg/checkerframework/framework/type/TypeHierarchy;

    return-object v0
.end method

.method public getTypes()Ljavax/lang/model/util/Types;
    .locals 1

    .line 200
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->types:Ljavax/lang/model/util/Types;

    return-object v0
.end method

.method public performAnalysis(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Ljava/util/List;)V
    .locals 1
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "TV;>;>;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    .local p2, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TV;>;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->fieldValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->fieldValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-super {p0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->performAnalysis(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V

    .line 112
    return-void
.end method

.method public visualizeCFG()V
    .locals 3

    .line 176
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getCFGVisualizer()Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->cfg:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getEntryBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualize(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/util/Map;

    .line 177
    return-void
.end method
