.class public Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;
.super Ljava/lang/Object;
.source "EqualitiesSolver.java"


# instance fields
.field private dirty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->dirty:Z

    return-void
.end method

.method private createAnnotatedTypeVar(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 1
    .param p1, "typeVariable"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 272
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    return-object v0
.end method

.method private mergeTypesAndPrimaries(Ljava/util/Map;Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    .locals 16
    .param p3, "tops"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .param p4, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;"
        }
    .end annotation

    .line 288
    .local p1, "typesToHierarchies":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .local p2, "primaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    move-object/from16 v0, p3

    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v1, v0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 290
    .local v1, "missingAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    nop

    .line 291
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 292
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 296
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 298
    .local v3, "head":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 299
    .local v4, "mergedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v1, v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->removeAll(Ljava/util/Collection;)Z

    .line 312
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 313
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 314
    .local v5, "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 315
    .local v6, "currentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 317
    .local v7, "currentHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    new-instance v8, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v8}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 318
    .local v8, "found":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/AnnotationMirror;

    .line 319
    .local v10, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v7, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 320
    invoke-virtual {v6, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 321
    .local v11, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v11, :cond_0

    .line 322
    invoke-virtual {v4, v11}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 323
    invoke-virtual {v8, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-object/from16 v12, p4

    goto :goto_2

    .line 325
    :cond_0
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v12

    sget-object v13, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v12, v13, :cond_1

    move-object/from16 v12, p4

    iget-object v13, v12, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 327
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v14

    .line 328
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v15

    .line 326
    invoke-interface {v13, v14, v15}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 331
    invoke-virtual {v8, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    goto :goto_2

    .line 325
    :cond_1
    move-object/from16 v12, p4

    .line 335
    :cond_2
    new-instance v9, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing annotation.\n\nmergedType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\ncurrentType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v9

    .line 319
    .end local v11    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    move-object/from16 v12, p4

    .line 343
    .end local v10    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :goto_2
    goto :goto_1

    .line 345
    :cond_4
    move-object/from16 v12, p4

    invoke-virtual {v1, v8}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->removeAll(Ljava/util/Collection;)Z

    .line 346
    .end local v5    # "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v6    # "currentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v7    # "currentHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v8    # "found":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto/16 :goto_0

    .line 312
    :cond_5
    move-object/from16 v12, p4

    .line 349
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 350
    .local v6, "top":Ljavax/lang/model/element/AnnotationMirror;
    move-object/from16 v7, p2

    invoke-virtual {v7, v6}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationMirror;

    .line 351
    .local v8, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v8, :cond_6

    .line 352
    invoke-virtual {v4, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 354
    .end local v6    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_6
    goto :goto_3

    .line 356
    :cond_7
    move-object/from16 v7, p2

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->clear()V

    .line 358
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 359
    new-instance v5, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v5, v4}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v5

    .line 364
    :cond_8
    new-instance v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v5, v0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v5, "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {v5, v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->removeAll(Ljava/util/Collection;)Z

    .line 366
    move-object/from16 v6, p1

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const/4 v8, 0x0

    return-object v8

    .line 293
    .end local v3    # "head":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v4    # "mergedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_9
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p4

    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    const-string v4, "Merging a list of empty types."

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private rewriteWithInferredTarget(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 18
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "inferredTarget"    # Ljavax/lang/model/type/TypeVariable;
    .param p3, "constraints"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p4, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v5

    .line 195
    .local v5, "targetRecord":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    iget-object v6, v5, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v6, v6, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    .line 197
    .local v6, "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v7, v5, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v7, v7, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    .line 203
    .local v7, "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 204
    .local v9, "eqEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-virtual {v3, v2, v10, v11}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTypeEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 205
    .end local v9    # "eqEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 209
    .local v9, "superEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    nop

    .line 210
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 209
    invoke-virtual {v3, v2, v10, v11}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTypeSupertype(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 211
    .end local v9    # "superEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getTargets()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/type/TypeVariable;

    .line 214
    .local v9, "otherTarget":Ljavax/lang/model/type/TypeVariable;
    if-eq v9, v1, :cond_4

    if-eq v9, v2, :cond_4

    .line 215
    invoke-virtual {v3, v9}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v10

    .line 219
    .local v10, "record":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    iget-object v11, v10, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v11, v11, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 220
    .local v11, "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v11, :cond_2

    .line 221
    iget-object v12, v10, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v12, v12, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    invoke-interface {v12, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v3, v9, v2, v11}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTargetEquality(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 227
    :cond_2
    new-instance v12, Ljava/util/LinkedHashMap;

    iget-object v13, v10, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v13, v13, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-direct {v12, v13}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 229
    .local v12, "toIterate":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v13, v10, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v13, v13, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 230
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 231
    .local v14, "otherType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 233
    invoke-direct {v0, v1, v4}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->createAnnotatedTypeVar(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v15

    .line 232
    invoke-static {v1, v15, v14}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitute(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v15

    .line 234
    .local v15, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v6

    .end local v6    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .local v17, "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    move-object/from16 v6, v16

    check-cast v6, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 235
    .local v6, "otherHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    move-object/from16 v16, v7

    .end local v7    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .local v16, "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v7, v10, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v7, v7, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v7, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v6    # "otherHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v14    # "otherType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v15    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object/from16 v7, v16

    move-object/from16 v6, v17

    goto :goto_3

    .line 230
    .end local v16    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v17    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .local v6, "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v7    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_3
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    .end local v6    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v7    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v16    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v17    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    goto :goto_4

    .line 214
    .end local v10    # "record":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    .end local v11    # "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v12    # "toIterate":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v16    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v17    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v6    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v7    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_4
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    .line 238
    .end local v6    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v7    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v9    # "otherTarget":Ljavax/lang/model/type/TypeVariable;
    .restart local v16    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v17    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :goto_4
    move-object/from16 v7, v16

    move-object/from16 v6, v17

    goto :goto_2

    .line 240
    .end local v16    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v17    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v6    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v7    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_5
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    .end local v6    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v7    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v16    # "supertypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v17    # "equivalentTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getTargets()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/type/TypeVariable;

    .line 241
    .local v7, "otherTarget":Ljavax/lang/model/type/TypeVariable;
    if-eq v7, v1, :cond_7

    if-eq v7, v2, :cond_7

    .line 242
    invoke-virtual {v3, v7}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v8

    .line 244
    .local v8, "record":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    iget-object v9, v8, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v9, v9, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 245
    .local v9, "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v9, :cond_6

    .line 246
    iget-object v10, v8, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v10, v10, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v3, v7, v2, v9}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTargetSupertype(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 252
    :cond_6
    new-instance v10, Ljava/util/LinkedHashMap;

    iget-object v11, v8, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v11, v11, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    invoke-direct {v10, v11}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 254
    .local v10, "toIterate":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v11, v8, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v11, v11, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 255
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 256
    .local v12, "otherType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 258
    invoke-direct {v0, v1, v4}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->createAnnotatedTypeVar(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v13

    .line 257
    invoke-static {v1, v13, v12}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitute(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v13

    .line 259
    .local v13, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 260
    .local v14, "otherHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    iget-object v15, v8, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v15, v15, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    invoke-interface {v15, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v12    # "otherType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v13    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v14    # "otherHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto :goto_6

    .line 263
    .end local v7    # "otherTarget":Ljavax/lang/model/type/TypeVariable;
    .end local v8    # "record":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    .end local v9    # "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v10    # "toIterate":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_7
    goto :goto_5

    .line 265
    :cond_8
    iget-object v6, v5, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    invoke-virtual {v6}, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->clear()V

    .line 266
    iget-object v6, v5, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    invoke-virtual {v6}, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->clear()V

    .line 267
    return-void
.end method

.method private rewriteWithInferredType(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;)V
    .locals 12
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "constraints"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;

    .line 105
    invoke-virtual {p3, p1}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v0

    .line 106
    .local v0, "targetRecord":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    iget-object v1, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v1, v1, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    .line 111
    .local v1, "equivalentTargets":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 112
    .local v3, "eqEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-virtual {p3, v4, p2, v5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTypeEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 113
    .end local v3    # "eqEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p3}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getTargets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    .line 116
    .local v3, "otherTarget":Ljavax/lang/model/type/TypeVariable;
    if-eq v3, p1, :cond_2

    .line 117
    invoke-virtual {p3, v3}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v4

    .line 121
    .local v4, "record":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    iget-object v5, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v5, v5, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 122
    .local v5, "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v5, :cond_1

    .line 123
    iget-object v6, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v6, v6, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p3, v3, p2, v5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTypeEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 129
    :cond_1
    new-instance v6, Ljava/util/LinkedHashMap;

    iget-object v7, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v7, v7, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 131
    .local v6, "toIterate":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v7, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v7, v7, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 132
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 133
    .local v8, "otherType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 134
    invoke-static {p1, p2, v8}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitute(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    .line 135
    .local v9, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 136
    .local v10, "otherHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    iget-object v11, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v11, v11, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v8    # "otherType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v9    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v10    # "otherHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto :goto_2

    .line 139
    .end local v3    # "otherTarget":Ljavax/lang/model/type/TypeVariable;
    .end local v4    # "record":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    .end local v5    # "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v6    # "toIterate":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_2
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {p3}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getTargets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    .line 142
    .restart local v3    # "otherTarget":Ljavax/lang/model/type/TypeVariable;
    if-eq v3, p1, :cond_5

    .line 143
    invoke-virtual {p3, v3}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v4

    .line 147
    .restart local v4    # "record":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    iget-object v5, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v5, v5, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 148
    .restart local v5    # "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v5, :cond_4

    .line 149
    iget-object v6, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v6, v6, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p3, v3, p2, v5}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->addTypeEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V

    .line 155
    :cond_4
    new-instance v6, Ljava/util/LinkedHashMap;

    iget-object v7, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v7, v7, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 157
    .restart local v6    # "toIterate":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v7, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v7, v7, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 158
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 159
    .restart local v8    # "otherType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 160
    invoke-static {p1, p2, v8}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitute(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    .line 161
    .restart local v9    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 162
    .restart local v10    # "otherHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    iget-object v11, v4, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v11, v11, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v8    # "otherType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v9    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v10    # "otherHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto :goto_4

    .line 165
    .end local v3    # "otherTarget":Ljavax/lang/model/type/TypeVariable;
    .end local v4    # "record":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    .end local v5    # "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v6    # "toIterate":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_5
    goto :goto_3

    .line 167
    :cond_6
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->clear()V

    .line 168
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->clear()V

    .line 169
    return-void
.end method


# virtual methods
.method public findEqualTarget(Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;
    .locals 10
    .param p1, "equalities"    # Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    .param p2, "tops"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 471
    iget-object v0, p1, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 472
    .local v1, "targetToHierarchies":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    .line 473
    .local v2, "equalTarget":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 476
    .local v3, "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {v3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->size()I

    move-result v4

    invoke-virtual {p2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v7

    .line 477
    .local v4, "targetIsEqualInAllHierarchies":Z
    :goto_1
    if-eqz v4, :cond_1

    .line 478
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    new-instance v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    invoke-direct {v0, v2, v5}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;-><init>(Ljavax/lang/model/type/TypeVariable;Ljava/util/Collection;)V

    return-object v0

    .line 482
    :cond_1
    new-instance v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    iget-object v8, p1, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    .line 483
    invoke-virtual {v8}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 484
    .local v5, "requiredPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {v5, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->removeAll(Ljava/util/Collection;)Z

    .line 486
    nop

    .line 487
    invoke-virtual {v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->size()I

    move-result v8

    invoke-virtual {v3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->size()I

    move-result v9

    if-ne v8, v9, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    .line 488
    .local v6, "typeWithPrimariesIsEqual":Z
    :goto_2
    if-eqz v6, :cond_3

    .line 489
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    invoke-direct {v0, v2, v5}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;-><init>(Ljavax/lang/model/type/TypeVariable;Ljava/util/Collection;)V

    return-object v0

    .line 492
    .end local v1    # "targetToHierarchies":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v2    # "equalTarget":Ljavax/lang/model/type/TypeVariable;
    .end local v3    # "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v4    # "targetIsEqualInAllHierarchies":Z
    .end local v5    # "requiredPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v6    # "typeWithPrimariesIsEqual":Z
    :cond_3
    goto :goto_0

    .line 494
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public mergeConstraints(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    .locals 4
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "equalities"    # Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    .param p3, "solution"    # Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .param p4, "constraintMap"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p5, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 377
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 378
    invoke-virtual {p5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 379
    .local v0, "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    const/4 v1, 0x0

    .line 380
    .local v1, "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    iget-object v2, p2, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    iget-object v2, p2, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    iget-object v3, p2, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    .line 382
    invoke-direct {p0, v2, v3, v0, p5}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->mergeTypesAndPrimaries(Ljava/util/Map;Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    move-result-object v1

    .line 386
    :cond_0
    if-eqz v1, :cond_1

    .line 387
    return-object v1

    .line 395
    :cond_1
    iget-boolean v2, p0, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->dirty:Z

    invoke-virtual {p0, p2, p4, p5}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->updateTargetsWithPartiallyInferredType(Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->dirty:Z

    .line 396
    invoke-virtual {p0, p2, v0}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->findEqualTarget(Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    move-result-object v1

    .line 398
    if-nez v1, :cond_2

    iget-object v2, p2, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 401
    iget-object v2, p2, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 402
    .local v2, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v3, v2}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    move-object v1, v3

    .line 404
    .end local v2    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    return-object v1
.end method

.method public solveEqualities(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .locals 10
    .param p2, "constraintMap"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
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

    .line 49
    .local p1, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;-><init>()V

    .line 52
    .local v0, "solution":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->dirty:Z

    .line 53
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljavax/lang/model/type/TypeVariable;

    .line 54
    .local v8, "target":Ljavax/lang/model/type/TypeVariable;
    invoke-virtual {v0, v8}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p2, v8}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v1

    iget-object v9, v1, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    .line 60
    .local v9, "equalities":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    nop

    .line 61
    move-object v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->mergeConstraints(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    move-result-object v1

    .line 62
    .local v1, "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    if-eqz v1, :cond_3

    .line 63
    instance-of v2, v1, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v2, :cond_2

    .line 64
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v2, v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-direct {p0, v8, v2, p2}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->rewriteWithInferredType(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;)V

    goto :goto_1

    .line 67
    :cond_2
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    iget-object v2, v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;->target:Ljavax/lang/model/type/TypeVariable;

    invoke-direct {p0, v8, v2, p2, p3}, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->rewriteWithInferredTarget(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 74
    :goto_1
    invoke-virtual {v0, v8, v1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v1    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    .end local v8    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v9    # "equalities":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    :cond_3
    goto :goto_0

    .line 78
    :cond_4
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/typeinference/solver/EqualitiesSolver;->dirty:Z

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {v0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->resolveChainedTargets()V

    .line 82
    return-object v0
.end method

.method public updateTargetsWithPartiallyInferredType(Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z
    .locals 16
    .param p1, "equalities"    # Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    .param p2, "constraintMap"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 421
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 423
    .local v1, "updated":Z
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 424
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 429
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 431
    .local v2, "remainingTypeEquality":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 432
    .local v4, "remainingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 436
    .local v5, "remainingHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    iget-object v6, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 437
    .local v7, "targetToHierarchies":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/type/TypeVariable;

    .line 438
    .local v8, "equalTarget":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 440
    .local v9, "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    new-instance v10, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v10, v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 442
    .local v10, "equalTypeHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {v10, v9}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->retainAll(Ljava/util/Collection;)Z

    .line 444
    nop

    .line 445
    move-object/from16 v11, p2

    invoke-virtual {v11, v8}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v12

    iget-object v12, v12, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    iget-object v12, v12, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    .line 447
    .local v12, "otherTargetsEqualTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 448
    .local v13, "equalHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v13, :cond_0

    .line 449
    new-instance v14, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v14, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    move-object v13, v14

    .line 450
    invoke-interface {v12, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const/4 v1, 0x1

    goto :goto_2

    .line 454
    :cond_0
    invoke-virtual {v13}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->size()I

    move-result v14

    .line 455
    .local v14, "size":I
    invoke-virtual {v13, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 456
    invoke-virtual {v13}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->size()I

    move-result v15

    if-ne v14, v15, :cond_1

    move v15, v3

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    move v1, v15

    .line 458
    .end local v7    # "targetToHierarchies":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v8    # "equalTarget":Ljavax/lang/model/type/TypeVariable;
    .end local v9    # "hierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v10    # "equalTypeHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v12    # "otherTargetsEqualTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v13    # "equalHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v14    # "size":I
    :goto_2
    goto :goto_0

    .line 436
    :cond_2
    move-object/from16 v11, p2

    goto :goto_3

    .line 425
    .end local v2    # "remainingTypeEquality":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v4    # "remainingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "remainingHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_3
    move-object/from16 v11, p2

    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    const-string v3, "Equalities should have at most 1 constraint."

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :cond_4
    move-object/from16 v11, p2

    .line 461
    :goto_3
    return v1
.end method
