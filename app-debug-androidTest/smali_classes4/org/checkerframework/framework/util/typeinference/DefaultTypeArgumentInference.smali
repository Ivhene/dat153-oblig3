.class public Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;
.super Ljava/lang/Object;
.source "DefaultTypeArgumentInference.java"

# interfaces
.implements Lorg/checkerframework/framework/util/typeinference/TypeArgumentInference;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final constraintMapBuilder:Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;

.field private final equalitiesSolver:Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;

.field private final showInferenceSteps:Z

.field private final subtypesSolver:Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;

.field private final supertypesSolver:Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 2
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->equalitiesSolver:Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;

    .line 101
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->supertypesSolver:Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;

    .line 102
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->subtypesSolver:Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;

    .line 103
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->constraintMapBuilder:Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;

    .line 108
    nop

    .line 109
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v0

    const-string v1, "showInferenceSteps"

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->showInferenceSteps:Z

    .line 110
    return-void
.end method

.method private clampToLowerBound(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 11
    .param p1, "fromArgSupertypes"    # Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .line 450
    .local p2, "targetDeclarations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 451
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 452
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 454
    .local v1, "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 455
    .local v3, "targetDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 456
    .local v4, "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    instance-of v5, v4, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v5, :cond_1

    .line 457
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 458
    .local v5, "lowerBoundAsArgument":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/AnnotationMirror;

    .line 459
    .local v7, "top":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 460
    invoke-virtual {v5, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 461
    .local v8, "lowerBoundAnno":Ljavax/lang/model/element/AnnotationMirror;
    move-object v9, v4

    check-cast v9, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v9, v9, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 462
    invoke-virtual {v9, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v9

    .line 463
    .local v9, "argAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v9, v8}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 464
    move-object v10, v4

    check-cast v10, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v10, v10, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v10, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 466
    .end local v7    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "lowerBoundAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v9    # "argAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 468
    .end local v3    # "targetDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v4    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    .end local v5    # "lowerBoundAsArgument":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    goto :goto_0

    .line 469
    :cond_2
    return-void
.end method

.method private combineSupertypeAndAssignmentResults(Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .locals 11
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "equalityResult"    # Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .param p4, "supertypeResult"    # Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;"
        }
    .end annotation

    .line 695
    .local p1, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v0

    .line 697
    .local v0, "typeHierarchy":Lorg/checkerframework/framework/type/TypeHierarchy;
    new-instance v1, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;-><init>()V

    .line 698
    .local v1, "result":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    .line 699
    .local v3, "target":Ljavax/lang/model/type/TypeVariable;
    invoke-virtual {p3, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 700
    .local v4, "equalityInferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    invoke-virtual {p4, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 703
    .local v5, "supertypeInferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    instance-of v6, v4, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v6, :cond_3

    .line 705
    instance-of v6, v5, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v6, :cond_2

    .line 706
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v6, v6, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 707
    .local v6, "superATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v7, v4

    check-cast v7, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v7, v7, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 708
    .local v7, "equalityATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 709
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 710
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    .line 711
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v10

    invoke-interface {v10}, Lorg/checkerframework/framework/util/CFContext;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v10

    .line 708
    invoke-static {v8, v9, v10}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 715
    invoke-static {p2, v7, v6}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    .line 717
    :cond_0
    invoke-interface {v0, v6, v7}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 718
    move-object v8, v4

    .local v8, "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    goto :goto_1

    .line 720
    .end local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_1
    move-object v8, v5

    .line 723
    .end local v6    # "superATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v7    # "equalityATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :goto_1
    goto :goto_2

    .line 724
    .end local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_2
    move-object v8, v4

    .restart local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    goto :goto_2

    .line 727
    .end local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_3
    if-eqz v5, :cond_4

    .line 728
    move-object v8, v5

    .restart local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    goto :goto_2

    .line 730
    .end local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_4
    const/4 v8, 0x0

    .line 734
    .restart local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :goto_2
    if-eqz v8, :cond_5

    .line 735
    invoke-virtual {v1, v3, v8}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .end local v3    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v4    # "equalityInferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    .end local v5    # "supertypeInferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    .end local v8    # "outputValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_5
    goto :goto_0

    .line 739
    :cond_6
    return-object v1
.end method

.method private handleNullTypeArguments(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljava/util/Map;)V
    .locals 11
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "methodElem"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p5, "assignedTo"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p4, "argTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p6, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    .local p7, "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    move-object v8, p1

    move-object/from16 v9, p7

    move-object v10, p0

    invoke-direct {p0, v9}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->hasNullType(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    const/4 v7, 0x0

    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object/from16 v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->infer(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Z)Ljava/util/Map;

    move-result-object v0

    .line 227
    .local v0, "inferredArgsWithoutNull":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 228
    .local v2, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v3

    .line 229
    .local v3, "typeVar":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 230
    .local v4, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v4, :cond_1

    .line 231
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 232
    .local v5, "withoutNullResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v5, :cond_3

    .line 233
    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 235
    .end local v5    # "withoutNullResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v6, :cond_3

    .line 236
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 237
    .restart local v5    # "withoutNullResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v5, :cond_2

    .line 240
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getUninferredWildcardType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object v5

    .line 242
    :cond_2
    nop

    .line 243
    invoke-static {p1, v5, v4}, Lorg/checkerframework/framework/util/AnnotatedTypes;->leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    .line 244
    .local v6, "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v9, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 235
    .end local v5    # "withoutNullResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    :goto_1
    nop

    .line 246
    .end local v2    # "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v3    # "typeVar":Ljavax/lang/model/type/TypeVariable;
    .end local v4    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_2
    goto :goto_0

    .line 247
    :cond_4
    return-void
.end method

.method private handleUninferredTypeVariables(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Ljava/util/Map;)V
    .locals 6
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 752
    .local p3, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    .local p4, "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 753
    .local v1, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v2

    .line 754
    .local v2, "typeVar":Ljavax/lang/model/type/TypeVariable;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 755
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 756
    .local v3, "inferredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v3, :cond_0

    .line 757
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getUninferredWildcardType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object v4

    .line 758
    .local v4, "dummy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v5

    invoke-interface {p4, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .end local v1    # "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v2    # "typeVar":Ljavax/lang/model/type/TypeVariable;
    .end local v3    # "inferredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "dummy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 762
    :cond_1
    return-void
.end method

.method private hasNullType(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)Z"
        }
    .end annotation

    .line 250
    .local p1, "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 251
    .local v1, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_0

    .line 252
    const/4 v0, 0x1

    return v0

    .line 254
    .end local v1    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private infer(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Z)Ljava/util/Map;
    .locals 20
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "assignedTo"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "methodElem"    # Ljavax/lang/model/element/ExecutableElement;
    .param p5, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p7, "useNullArguments"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 346
    .local p2, "argumentTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p6, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->createArgumentAFConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v12

    .line 351
    .local v12, "afArgumentConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    nop

    .line 352
    invoke-direct {v8, v9, v12, v11}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->inferFromArguments(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v13

    .line 354
    .local v13, "argInference":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;>;"
    iget-object v0, v13, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    .line 355
    .local v14, "fromArgEqualities":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    iget-object v0, v13, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    .line 357
    .local v15, "fromArgSubandSupers":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    invoke-virtual/range {p5 .. p5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v15, v0, v9}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->clampToLowerBound(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 361
    if-nez v10, :cond_0

    .line 362
    invoke-virtual {v14, v15}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->mergeSubordinate(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)V

    .line 364
    invoke-virtual {v14}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->toAtmMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 367
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v16

    .line 369
    .local v16, "declaredReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v16, :cond_1

    .line 370
    const/4 v0, 0x0

    move-object v7, v0

    .local v0, "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 371
    .end local v0    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    move-object/from16 v0, v16

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    invoke-virtual {v9, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    move-object v7, v0

    .restart local v0    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 374
    .end local v0    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    move-object/from16 v0, v16

    move-object v7, v0

    .line 377
    .local v7, "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    move-object v6, v14

    .line 378
    .local v6, "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    move-object/from16 v0, p4

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_4

    .line 380
    nop

    .line 381
    invoke-direct {v8, v10, v7, v11, v9}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->inferFromAssignmentEqualities(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v5

    .line 385
    .local v5, "fromAssignmentEqualities":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    nop

    .line 386
    invoke-direct {v8, v11, v9, v5, v15}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->combineSupertypeAndAssignmentResults(Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v4

    .line 391
    .local v4, "combinedSupertypesAndAssignment":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    invoke-virtual {v14, v4}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->mergeSubordinate(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)V

    .line 396
    invoke-virtual {v6, v11}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->isComplete(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 397
    nop

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v7

    move-object/from16 v3, p5

    move-object/from16 v17, v4

    .end local v4    # "combinedSupertypesAndAssignment":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .local v17, "combinedSupertypesAndAssignment":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    move-object v4, v12

    move-object/from16 v18, v5

    .end local v5    # "fromAssignmentEqualities":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .local v18, "fromAssignmentEqualities":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    move-object v5, v6

    move-object v8, v6

    .end local v6    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .local v8, "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    move-object/from16 v6, p6

    move-object/from16 v19, v7

    .end local v7    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v19, "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->inferFromAssignment(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v0

    .line 408
    .local v0, "fromAssignment":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    invoke-virtual {v8, v0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->mergeSubordinate(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)V

    goto :goto_1

    .line 396
    .end local v0    # "fromAssignment":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v8    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v17    # "combinedSupertypesAndAssignment":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v18    # "fromAssignmentEqualities":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v19    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v4    # "combinedSupertypesAndAssignment":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .restart local v5    # "fromAssignmentEqualities":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .restart local v6    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .restart local v7    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object v8, v6

    move-object/from16 v19, v7

    .line 411
    .end local v4    # "combinedSupertypesAndAssignment":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v5    # "fromAssignmentEqualities":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v6    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v7    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v8    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .restart local v19    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    goto :goto_2

    .line 413
    .end local v8    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v19    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v6    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .restart local v7    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_4
    move-object v8, v6

    move-object/from16 v19, v7

    .end local v6    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .end local v7    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v8    # "fromArguments":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .restart local v19    # "boxedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v8, v15}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->mergeSubordinate(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)V

    .line 416
    :goto_2
    invoke-virtual {v8}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->toAtmMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private inferFromArguments(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/javacutil/Pair;
    .locals 7
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;",
            ">;"
        }
    .end annotation

    .line 526
    .local p2, "afArgumentConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    .local p3, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->afToTuConstraints(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 527
    .local v0, "tuArgConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p1}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->addConstraintsBetweenTargets(Ljava/util/Set;Ljava/util/Set;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 529
    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->constraintMapBuilder:Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;

    .line 530
    invoke-virtual {v1, p3, v0, p1}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;->build(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;

    move-result-object v1

    .line 532
    .local v1, "argConstraints":Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->equalitiesSolver:Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;

    .line 533
    invoke-virtual {v2, p3, v1, p1}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->solveEqualities(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v2

    .line 535
    .local v2, "inferredFromArgEqualities":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    nop

    .line 536
    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->getRemainingTargets(Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v3

    .line 537
    .local v3, "remainingTargets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    iget-object v4, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->supertypesSolver:Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;

    .line 538
    invoke-virtual {v4, v3, v1, p1}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->solveFromSupertypes(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v4

    .line 540
    .local v4, "fromSupertypes":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    iget-object v5, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->subtypesSolver:Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;

    .line 541
    invoke-virtual {v5, v3, v1, p1}, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;->solveFromSubtypes(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v5

    .line 542
    .local v5, "fromSubtypes":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->mergeSubordinate(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)V

    .line 544
    invoke-static {v2, v4}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v6

    return-object v6
.end method

.method private inferFromAssignment(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .locals 8
    .param p1, "assignedTo"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "boxedReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p5, "inferredArgs"    # Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .param p7, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;"
        }
    .end annotation

    .line 664
    .local p4, "afArgumentConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    .local p6, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    nop

    .line 670
    invoke-virtual {p5}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->toAtmMap()Ljava/util/Map;

    move-result-object v5

    .line 665
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->createAssignmentConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;

    move-result-object v0

    .line 674
    .local v0, "assignmentConstraints":Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->equalitiesSolver:Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;

    .line 675
    invoke-virtual {v1, p6, v0, p7}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->solveEqualities(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v1

    .line 677
    .local v1, "equalitiesResult":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    const/4 v2, 0x1

    invoke-virtual {v1, p6, v2}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->getRemainingTargets(Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v2

    .line 678
    .local v2, "remainingTargets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    iget-object v3, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->subtypesSolver:Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;

    .line 679
    invoke-virtual {v3, v2, v0, p7}, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;->solveFromSubtypes(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v3

    .line 682
    .local v3, "subtypesResult":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->mergeSubordinate(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)V

    .line 683
    return-object v1
.end method

.method private inferFromAssignmentEqualities(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .locals 4
    .param p1, "assignedTo"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "boxedReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;"
        }
    .end annotation

    .line 553
    .local p3, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    nop

    .line 554
    invoke-virtual {p0, p1, p2, p4, p3}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->createInitialAssignmentConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 557
    .local v0, "afInitialAssignmentConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;>;"
    nop

    .line 558
    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->afToTuConstraints(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 559
    .local v1, "tuInitialAssignmentConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->constraintMapBuilder:Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;

    .line 560
    invoke-virtual {v2, p3, v1, p4}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;->build(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;

    move-result-object v2

    .line 561
    .local v2, "initialAssignmentConstraints":Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    iget-object v3, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->equalitiesSolver:Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;

    invoke-virtual {v3, p3, v2, p4}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->solveEqualities(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addConstraintsBetweenTargets(Ljava/util/Set;Ljava/util/Set;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 10
    .param p3, "asSubtype"    # Z
    .param p4, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;Z",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .line 839
    .local p1, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;>;"
    .local p2, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 840
    .local v0, "types":Ljavax/lang/model/util/Types;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 842
    .local v1, "targetList":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 844
    .local v2, "paramDeclarations":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 845
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeVariable;

    .line 847
    .local v4, "earlierTarget":Ljavax/lang/model/type/TypeVariable;
    add-int/lit8 v5, v3, 0x1

    .local v5, "j":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 848
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/type/TypeVariable;

    .line 849
    .local v6, "laterTarget":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v4}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 850
    nop

    .line 851
    invoke-virtual {p0, v4, p4, v2}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->addOrGetDeclarations(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Map;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v7

    .line 852
    .local v7, "headDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    nop

    .line 853
    invoke-virtual {p0, v6, p4, v2}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->addOrGetDeclarations(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Map;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v8

    .line 855
    .local v8, "nextDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    if-eqz p3, :cond_0

    .line 856
    new-instance v9, Lorg/checkerframework/framework/util/typeinference/constraint/TSubU;

    invoke-direct {v9, v7, v8}, Lorg/checkerframework/framework/util/typeinference/constraint/TSubU;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 859
    :cond_0
    new-instance v9, Lorg/checkerframework/framework/util/typeinference/constraint/TSuperU;

    invoke-direct {v9, v8, v7}, Lorg/checkerframework/framework/util/typeinference/constraint/TSuperU;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 861
    .end local v7    # "headDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v8    # "nextDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :cond_1
    invoke-interface {v6}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 862
    nop

    .line 863
    invoke-virtual {p0, v4, p4, v2}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->addOrGetDeclarations(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Map;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v7

    .line 864
    .restart local v7    # "headDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    nop

    .line 865
    invoke-virtual {p0, v6, p4, v2}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->addOrGetDeclarations(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Map;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v8

    .line 867
    .restart local v8    # "nextDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    if-eqz p3, :cond_2

    .line 868
    new-instance v9, Lorg/checkerframework/framework/util/typeinference/constraint/TSubU;

    invoke-direct {v9, v8, v7}, Lorg/checkerframework/framework/util/typeinference/constraint/TSubU;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 871
    :cond_2
    new-instance v9, Lorg/checkerframework/framework/util/typeinference/constraint/TSuperU;

    invoke-direct {v9, v7, v8}, Lorg/checkerframework/framework/util/typeinference/constraint/TSuperU;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 861
    .end local v7    # "headDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v8    # "nextDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :cond_3
    :goto_2
    nop

    .line 847
    .end local v6    # "laterTarget":Ljavax/lang/model/type/TypeVariable;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 844
    .end local v4    # "earlierTarget":Ljavax/lang/model/type/TypeVariable;
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 876
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public addOrGetDeclarations(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Map;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 2
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;"
        }
    .end annotation

    .line 882
    .local p3, "declarations":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 883
    .local v0, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    if-nez v0, :cond_0

    .line 884
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 885
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_0
    return-object v0
.end method

.method protected afToTuConstraints(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;",
            ">;"
        }
    .end annotation

    .line 811
    .local p1, "afConstraints":Ljava/util/Set;, "Ljava/util/Set<+Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    .local p2, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 812
    .local v0, "outgoing":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    .line 813
    .local v2, "afConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    invoke-virtual {v2, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->isIrreducible(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    invoke-virtual {v2}, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->toTUConstraint()Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 825
    .end local v2    # "afConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    goto :goto_0

    .line 814
    .restart local v2    # "afConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All afConstraints should be irreducible before conversion.\nafConstraints=[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 817
    const-string v4, ", "

    invoke-static {v4, p1}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ]\ntargets=[ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 820
    invoke-static {v4, p2}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    .end local v2    # "afConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    :cond_1
    return-object v0
.end method

.method protected createArgumentAFConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Z)Ljava/util/Set;
    .locals 7
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p5, "useNullArguments"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;Z)",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;"
        }
    .end annotation

    .line 490
    .local p2, "argTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p4, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    nop

    .line 491
    invoke-static {p3, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgsFromTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 504
    .local v1, "numberOfParams":I
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 505
    .local v2, "afConstraints":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 506
    if-nez p5, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_0

    .line 507
    goto :goto_1

    .line 509
    :cond_0
    new-instance v4, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 505
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 514
    .local v3, "reducedConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p1, v3, v2, p4}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->reduceAfConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;Ljava/util/Queue;Ljava/util/Set;)V

    .line 515
    return-object v3

    .line 494
    .end local v1    # "numberOfParams":I
    .end local v2    # "afConstraints":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    .end local v3    # "reducedConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatch between formal parameter count and argument count.\nparamTypes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    const-string v3, ","

    invoke-static {v3, v0}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nargTypes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 500
    invoke-static {v3, p2}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createAssignmentConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .locals 7
    .param p1, "assignedTo"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "boxedReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p7, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;"
        }
    .end annotation

    .line 613
    .local p4, "afArgumentConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    .local p5, "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p6, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    .line 615
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 616
    .local v0, "assignmentAfs":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 617
    .local v2, "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v3

    .line 618
    .local v3, "target":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 621
    .local v4, "inferredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v4, :cond_0

    .line 622
    new-instance v5, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v5, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 625
    :cond_0
    new-instance v5, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance v5, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 628
    .end local v2    # "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v3    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v4    # "inferredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    goto :goto_0

    .line 630
    :cond_1
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    .line 631
    .local v2, "argConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    instance-of v3, v2, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    if-eqz v3, :cond_2

    .line 632
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v2    # "argConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    :cond_2
    goto :goto_2

    .line 636
    :cond_3
    new-instance v1, Ljava/util/ArrayDeque;

    .line 637
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 638
    .local v1, "substitutedAssignmentConstraints":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    .line 639
    .local v4, "afConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    invoke-virtual {v4, p5}, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->substitute(Ljava/util/Map;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v4    # "afConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    goto :goto_3

    .line 642
    :cond_4
    nop

    .line 643
    invoke-static {p5, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 644
    .local v2, "substitutedReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v4, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    invoke-direct {v4, v2, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 647
    .local v4, "reducedConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p7, v4, v1, p6}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->reduceAfConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;Ljava/util/Queue;Ljava/util/Set;)V

    .line 649
    nop

    .line 650
    invoke-virtual {p0, v4, p6}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->afToTuConstraints(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 651
    .local v5, "tuAssignmentConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;>;"
    invoke-virtual {p0, v5, p6, v3, p7}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->addConstraintsBetweenTargets(Ljava/util/Set;Ljava/util/Set;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 652
    iget-object v3, p0, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->constraintMapBuilder:Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;

    invoke-virtual {v3, p6, v5, p7}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;->build(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;

    move-result-object v3

    return-object v3
.end method

.method protected createInitialAssignmentConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .param p1, "assignedTo"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "boxedReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;",
            ">;"
        }
    .end annotation

    .line 573
    .local p4, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 575
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;>;"
    if-eqz p1, :cond_1

    .line 576
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 578
    .local v1, "reducedConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 579
    .local v2, "constraints":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    new-instance v3, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    invoke-direct {v3, p2, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {p0, p3, v1, v2, p4}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->reduceAfConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;Ljava/util/Queue;Ljava/util/Set;)V

    .line 583
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    .line 584
    .local v4, "reducedConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    instance-of v5, v4, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    if-eqz v5, :cond_0

    .line 585
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v4    # "reducedConstraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    :cond_0
    goto :goto_0

    .line 590
    .end local v1    # "reducedConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    .end local v2    # "constraints":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    :cond_1
    return-object v0
.end method

.method public inferTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Map;
    .locals 18
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "expressionTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "methodElem"    # Ljavax/lang/model/element/ExecutableElement;
    .param p4, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 119
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    .line 120
    invoke-static {v11, v10}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->getArgumentTypes(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/List;

    move-result-object v13

    .line 121
    .local v13, "argTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual/range {p1 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v14

    .line 122
    .local v14, "pathToExpression":Lcom/sun/source/util/TreePath;
    if-eqz v14, :cond_8

    .line 123
    nop

    .line 124
    invoke-static {v10, v14}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->assignedTo(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 126
    .local v0, "assignedTo":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v15

    .line 128
    .local v15, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    iget-boolean v1, v9, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->showInferenceSteps:Z

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v13, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 129
    const-string v3, "DTAI: expression: %s\n  argTypes: %s\n  assignedTo: %s\n"

    invoke-virtual {v15, v1, v3, v2}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_0
    invoke-static/range {p4 .. p4}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->methodTypeToTargets(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v8

    .line 139
    .local v8, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-static {v14}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingNonParen(Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sun/source/tree/Tree;

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_7

    if-nez v0, :cond_1

    .line 142
    invoke-static {v14}, Lorg/checkerframework/javacutil/TreeUtils;->getAssignmentContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v8

    goto/16 :goto_2

    .line 158
    :cond_1
    if-nez v0, :cond_2

    .line 159
    invoke-virtual/range {p1 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDummyAssignedTo(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    .line 158
    :cond_2
    move-object/from16 v16, v0

    .line 163
    .end local v0    # "assignedTo":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v16, "assignedTo":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    const/4 v0, 0x1

    .line 164
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, v16

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v8

    move-object/from16 v17, v8

    .end local v8    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    .local v17, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    move v8, v0

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->infer(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Z)Ljava/util/Map;

    move-result-object v8

    .line 165
    .local v8, "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-boolean v0, v9, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->showInferenceSteps:Z

    if-eqz v0, :cond_3

    .line 166
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v1, "  after infer: %s\n"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v0, v1, v2}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v13

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v8}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->handleNullTypeArguments(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljava/util/Map;)V

    .line 176
    iget-boolean v0, v9, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->showInferenceSteps:Z

    if-eqz v0, :cond_4

    .line 177
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v1, "  after handleNull: %s\n"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v0, v1, v2}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_4
    move-object v1, v8

    goto :goto_1

    .line 179
    .end local v8    # "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 182
    .local v1, "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-boolean v2, v9, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->showInferenceSteps:Z

    if-eqz v2, :cond_5

    .line 183
    sget-object v2, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  exception: %s\n"

    invoke-virtual {v15, v2, v4, v3}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_1
    move-object/from16 v2, v17

    .end local v17    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    .local v2, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-direct {v9, v10, v12, v2, v1}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->handleUninferredTypeVariables(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Ljava/util/Map;)V

    .line 189
    iget-boolean v0, v9, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->showInferenceSteps:Z

    if-eqz v0, :cond_6

    .line 190
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v3, "  results: %s\n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15, v0, v3, v4}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_6
    nop

    .line 194
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getUnderlyingType()Ljavax/lang/model/type/ExecutableType;

    move-result-object v0

    .line 193
    invoke-static {v1, v11, v0, v10}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->correctResults(Ljava/util/Map;Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/type/ExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/Throwable;
    return-object v1

    .line 139
    .end local v1    # "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v2    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    .end local v16    # "assignedTo":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v0, "assignedTo":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v8, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    :cond_7
    move-object v2, v8

    .line 154
    .end local v8    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    .restart local v2    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    :goto_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 155
    .restart local v1    # "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-direct {v9, v10, v12, v2, v1}, Lorg/checkerframework/framework/util/typeinference/DefaultTypeArgumentInference;->handleUninferredTypeVariables(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;Ljava/util/Map;)V

    .line 156
    return-object v1

    .line 122
    .end local v0    # "assignedTo":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "inferredArgs":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v2    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    .end local v15    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected reduceAfConstraints(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;Ljava/util/Queue;Ljava/util/Set;)V
    .locals 9
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;",
            "Ljava/util/Queue<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)V"
        }
    .end annotation

    .line 774
    .local p2, "outgoing":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    .local p3, "toProcess":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    .local p4, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 776
    .local v0, "visited":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v1, "reducers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;>;"
    new-instance v2, Lorg/checkerframework/framework/util/typeinference/constraint/A2FReducer;

    invoke-direct {v2, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/A2FReducer;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    new-instance v2, Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer;

    invoke-direct {v2, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    new-instance v2, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;

    invoke-direct {v2, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 782
    .local v2, "newConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    :goto_0
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 783
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 784
    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    .line 786
    .local v3, "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 787
    invoke-virtual {v3, p4}, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->isIrreducible(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 791
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 792
    .local v4, "reducerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;>;"
    const/4 v5, 0x0

    .line 793
    .local v5, "handled":Z
    :goto_1
    if-nez v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 794
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;

    invoke-interface {v6, v3, v2}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;->reduce(Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;Ljava/util/Set;)Z

    move-result v5

    goto :goto_1

    .line 797
    :cond_1
    if-eqz v5, :cond_2

    .line 801
    invoke-interface {p3, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 803
    .end local v4    # "reducerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;>;"
    .end local v5    # "handled":Z
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 798
    .restart local v4    # "reducerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;>;"
    .restart local v5    # "handled":Z
    :cond_2
    new-instance v6, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled constraint type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v6

    .line 805
    .end local v3    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    .end local v4    # "reducerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;>;"
    .end local v5    # "handled":Z
    :cond_3
    :goto_3
    goto :goto_0

    .line 806
    :cond_4
    return-void
.end method
