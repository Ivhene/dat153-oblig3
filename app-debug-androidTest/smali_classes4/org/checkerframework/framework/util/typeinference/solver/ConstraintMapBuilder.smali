.class public Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;
.super Ljava/lang/Object;
.source "ConstraintMapBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addToTargetRelationship(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 1
    .param p1, "typeT"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "typeU"    # Ljavax/lang/model/type/TypeVariable;
    .param p3, "result"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p4, "constraint"    # Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .param p5, "hierarchiesInRelation"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 181
    instance-of v0, p4, Lorg/checkerframework/framework/util/typeinference/constraint/TIsU;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p3, p1, p2, p5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTargetEquality(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    goto :goto_0

    .line 183
    :cond_0
    instance-of v0, p4, Lorg/checkerframework/framework/util/typeinference/constraint/TSuperU;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p3, p1, p2, p5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTargetSupertype(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p3, p1, p2, p5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTargetSubtype(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 188
    :goto_0
    return-void
.end method


# virtual methods
.method public addToPrimaryRelationship(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/QualifierHierarchy;)V
    .locals 1
    .param p1, "typeVariable"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "constraint"    # Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .param p3, "result"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p4, "annotationMirrors"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .param p5, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 196
    instance-of v0, p2, Lorg/checkerframework/framework/util/typeinference/constraint/TIsU;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p3, p1, p5, p4}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addPrimaryEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    goto :goto_0

    .line 198
    :cond_0
    instance-of v0, p2, Lorg/checkerframework/framework/util/typeinference/constraint/TSuperU;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p3, p1, p5, p4}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addPrimarySupertype(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p3, p1, p5, p4}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addPrimarySubtypes(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 203
    :goto_0
    return-void
.end method

.method public addToTypeRelationship(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 1
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "result"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p4, "constraint"    # Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .param p5, "hierarchies"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 211
    instance-of v0, p4, Lorg/checkerframework/framework/util/typeinference/constraint/TIsU;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p3, p1, p2, p5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTypeEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    goto :goto_0

    .line 213
    :cond_0
    instance-of v0, p4, Lorg/checkerframework/framework/util/typeinference/constraint/TSuperU;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p3, p1, p2, p5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTypeSupertype(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p3, p1, p2, p5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTypeSubtype(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 218
    :goto_0
    return-void
.end method

.method public build(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .locals 18
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;"
        }
    .end annotation

    .line 54
    .local p1, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    .local p2, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;>;"
    move-object/from16 v0, p1

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v7

    .line 55
    .local v7, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 56
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v1

    .line 57
    .local v8, "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    new-instance v1, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;

    invoke-direct {v1, v0}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;-><init>(Ljava/util/Set;)V

    move-object v15, v1

    .line 59
    .local v15, "result":Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    move-object v14, v1

    .line 60
    .local v14, "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    move-object v13, v1

    .line 61
    .local v13, "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    move-object v12, v1

    .line 63
    .local v12, "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;

    .line 64
    .local v11, "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    invoke-virtual {v14}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->clear()V

    .line 65
    invoke-virtual {v13}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->clear()V

    .line 66
    invoke-virtual {v12}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->clear()V

    .line 68
    iget-object v10, v11, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 69
    .local v10, "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    iget-object v9, v11, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->relatedType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 78
    .local v9, "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-boolean v1, v11, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->uIsArg:Z

    if-nez v1, :cond_a

    .line 79
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_9

    .line 83
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 82
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 84
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v12, v8}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 89
    :cond_0
    invoke-virtual {v8}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 90
    .local v2, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v10, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 91
    .local v3, "tAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v9, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 93
    .local v4, "uAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v3, :cond_2

    .line 94
    if-nez v4, :cond_1

    .line 95
    invoke-virtual {v12, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    goto :goto_2

    .line 98
    :cond_1
    invoke-virtual {v14, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    goto :goto_2

    .line 101
    :cond_2
    if-nez v4, :cond_3

    .line 102
    invoke-virtual {v13, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 109
    .end local v2    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "tAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "uAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    :goto_2
    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v14}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 117
    nop

    .line 120
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    .line 119
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    .line 117
    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v15

    move-object v5, v14

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;->addToPrimaryRelationship(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/QualifierHierarchy;)V

    .line 127
    :cond_5
    invoke-virtual {v13}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 128
    nop

    .line 131
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    .line 128
    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v15

    move-object v5, v13

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;->addToPrimaryRelationship(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/QualifierHierarchy;)V

    .line 141
    :cond_6
    :goto_3
    move-object/from16 v1, p3

    iget-object v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 142
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 143
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 141
    invoke-interface {v2, v3, v4}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 144
    nop

    .line 146
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    .line 148
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    .line 144
    move-object v4, v9

    .end local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v4, "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object/from16 v9, p0

    move-object v5, v10

    .end local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .local v5, "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    move-object v10, v2

    move-object v2, v11

    .end local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .local v2, "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    move-object v11, v3

    move-object v3, v12

    .end local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .local v3, "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    move-object v12, v15

    move-object v6, v13

    .end local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .local v6, "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    move-object v13, v2

    move-object/from16 v17, v14

    .end local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .local v17, "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;->addToTargetRelationship(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    goto/16 :goto_6

    .line 141
    .end local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .restart local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .restart local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_7
    move-object v4, v9

    move-object v5, v10

    move-object v2, v11

    move-object v3, v12

    move-object v6, v13

    move-object/from16 v17, v14

    .end local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .restart local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .restart local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto/16 :goto_6

    .line 80
    .end local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .restart local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .restart local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_8
    move-object/from16 v1, p3

    move-object v4, v9

    move-object v5, v10

    move-object v2, v11

    move-object v3, v12

    move-object v6, v13

    move-object/from16 v17, v14

    .end local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .restart local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .restart local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto :goto_4

    .line 79
    .end local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .restart local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .restart local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_9
    move-object/from16 v1, p3

    move-object v4, v9

    move-object v5, v10

    move-object v2, v11

    move-object v3, v12

    move-object v6, v13

    move-object/from16 v17, v14

    .end local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .restart local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .restart local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto :goto_4

    .line 78
    .end local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .restart local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .restart local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_a
    move-object/from16 v1, p3

    move-object v4, v9

    move-object v5, v10

    move-object v2, v11

    move-object v3, v12

    move-object v6, v13

    move-object/from16 v17, v14

    .line 154
    .end local v9    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v10    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v11    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .restart local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .restart local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :goto_4
    invoke-virtual {v8}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/AnnotationMirror;

    .line 155
    .local v10, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v5, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 157
    .local v11, "tAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v11, :cond_b

    .line 158
    invoke-virtual {v3, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 160
    .end local v10    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v11    # "tAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_b
    goto :goto_5

    .line 162
    :cond_c
    nop

    .line 164
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljavax/lang/model/type/TypeVariable;

    .line 162
    move-object/from16 v9, p0

    move-object v11, v4

    move-object v12, v15

    move-object v13, v2

    move-object v14, v3

    invoke-virtual/range {v9 .. v14}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMapBuilder;->addToTypeRelationship(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 170
    .end local v2    # "constraint":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .end local v4    # "typeU":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "typeT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :goto_6
    move-object v12, v3

    move-object v13, v6

    move-object/from16 v14, v17

    goto/16 :goto_0

    .line 172
    .end local v3    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v6    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v17    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v12    # "hierarchiesInRelation":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v13    # "uAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v14    # "tAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_d
    return-object v15
.end method
