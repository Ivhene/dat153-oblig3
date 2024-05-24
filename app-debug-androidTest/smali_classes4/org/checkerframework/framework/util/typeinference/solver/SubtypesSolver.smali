.class public Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;
.super Ljava/lang/Object;
.source "SubtypesSolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final greatestLowerBound(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p2, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            ")",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 178
    .local p1, "annos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    .local v0, "annoIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 181
    .local v1, "glb":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_0
    return-object v1
.end method

.method protected static propagatePreviousGlbs(Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Ljava/util/Map;)V
    .locals 6
    .param p0, "targetSubtypes"    # Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;
    .param p1, "solution"    # Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p2, "subtypesOfTarget":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .local v1, "subtypeTarget":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 155
    .local v2, "subtargetInferredGlb":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    if-eqz v2, :cond_1

    .line 156
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v3, v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 158
    .local v3, "subtargetGlbType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 159
    .local v4, "subtargetAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v4, :cond_0

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 164
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-interface {p2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1    # "subtypeTarget":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v2    # "subtargetInferredGlb":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    .end local v3    # "subtargetGlbType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "subtargetAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_1
    :goto_1
    goto :goto_0

    .line 168
    :cond_2
    return-void
.end method


# virtual methods
.method public glbSubtypes(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .locals 17
    .param p2, "constraints"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;"
        }
    .end annotation

    .line 48
    .local p1, "remainingTargets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    move-object/from16 v0, p0

    new-instance v1, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;-><init>()V

    .line 49
    .local v1, "inferenceResult":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    .line 51
    .local v2, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v3

    .line 53
    .local v3, "types":Ljavax/lang/model/util/Types;
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .local v4, "targetsSubtypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v6, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver$1;

    invoke-direct {v6, v0, v3}, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver$1;-><init>(Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;Ljavax/lang/model/util/Types;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/type/TypeVariable;

    .line 74
    .local v7, "target":Ljavax/lang/model/type/TypeVariable;
    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v9

    iget-object v9, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->subtypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;

    .line 76
    .local v9, "subtypes":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;
    iget-object v10, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->types:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 77
    goto :goto_0

    .line 80
    :cond_0
    iget-object v10, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->types:Ljava/util/Map;

    invoke-static {v9, v1, v10}, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;->propagatePreviousGlbs(Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Ljava/util/Map;)V

    .line 84
    iget-object v10, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    .line 85
    .local v10, "primaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v11, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->types:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 86
    iget-object v11, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->types:Ljava/util/Map;

    .line 87
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 88
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v12

    .line 90
    .local v12, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-virtual {v13}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/lang/model/element/AnnotationMirror;

    .line 91
    .local v14, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v10, v14}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 93
    .local v15, "superAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v15, :cond_1

    .line 94
    nop

    .line 95
    move-object/from16 v16, v3

    .end local v3    # "types":Ljavax/lang/model/util/Types;
    .local v16, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {v12, v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 96
    .local v3, "supertypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v15, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    goto :goto_2

    .line 93
    .end local v16    # "types":Ljavax/lang/model/util/Types;
    .local v3, "types":Ljavax/lang/model/util/Types;
    :cond_1
    move-object/from16 v16, v3

    .line 98
    .end local v3    # "types":Ljavax/lang/model/util/Types;
    .end local v14    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v15    # "superAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v16    # "types":Ljavax/lang/model/util/Types;
    :goto_2
    move-object/from16 v3, v16

    goto :goto_1

    .line 100
    .end local v16    # "types":Ljavax/lang/model/util/Types;
    .restart local v3    # "types":Ljavax/lang/model/util/Types;
    :cond_2
    move-object/from16 v16, v3

    .end local v3    # "types":Ljavax/lang/model/util/Types;
    .restart local v16    # "types":Ljavax/lang/model/util/Types;
    invoke-virtual {v10}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 101
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/lang/model/element/AnnotationMirror;

    .line 102
    .local v13, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v14, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    .line 103
    invoke-virtual {v14, v13}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    invoke-direct {v0, v14, v2}, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;->greatestLowerBound(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v14

    .line 104
    .local v14, "glb":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v12, v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 105
    .end local v13    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v14    # "glb":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_3

    .line 108
    :cond_3
    new-instance v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v3, v12}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-virtual {v1, v7, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v12    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object/from16 v11, p3

    goto :goto_6

    .line 114
    .end local v16    # "types":Ljavax/lang/model/util/Types;
    .restart local v3    # "types":Ljavax/lang/model/util/Types;
    :cond_4
    move-object/from16 v16, v3

    .end local v3    # "types":Ljavax/lang/model/util/Types;
    .restart local v16    # "types":Ljavax/lang/model/util/Types;
    iget-object v3, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->types:Ljava/util/Map;

    move-object/from16 v11, p3

    invoke-static {v3, v11}, Lorg/checkerframework/framework/util/typeinference/GlbUtil;->glbAll(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 115
    .local v3, "glbType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v3, :cond_8

    .line 116
    invoke-virtual {v10}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 117
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/lang/model/element/AnnotationMirror;

    .line 118
    .restart local v13    # "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v14, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    .line 120
    invoke-virtual {v14, v13}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    .line 119
    invoke-direct {v0, v14, v2}, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;->greatestLowerBound(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v14

    .line 121
    .restart local v14    # "glb":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 122
    invoke-virtual {v3, v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v15

    .line 124
    .local v15, "currentAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v15, :cond_5

    .line 125
    invoke-virtual {v3, v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_5

    .line 126
    :cond_5
    if-eqz v14, :cond_6

    .line 127
    nop

    .line 128
    invoke-virtual {v2, v14, v15}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 127
    invoke-virtual {v3, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 130
    .end local v13    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v14    # "glb":Ljavax/lang/model/element/AnnotationMirror;
    .end local v15    # "currentAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    goto :goto_4

    .line 133
    :cond_7
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v0, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-virtual {v1, v7, v0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v3    # "glbType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v7    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v9    # "subtypes":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;
    .end local v10    # "primaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 138
    .end local v16    # "types":Ljavax/lang/model/util/Types;
    .local v3, "types":Ljavax/lang/model/util/Types;
    :cond_9
    return-object v1
.end method

.method public solveFromSubtypes(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .locals 1
    .param p2, "constraints"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;"
        }
    .end annotation

    .line 41
    .local p1, "remainingTargets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/solver/SubtypesSolver;->glbSubtypes(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    move-result-object v0

    return-object v0
.end method
