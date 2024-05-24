.class public Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;
.super Ljava/lang/Object;
.source "SupertypesSolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static groundMissingHierarchies(Ljava/util/Map$Entry;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 340
    .local p0, "typeToHierarchies":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .local p1, "lowerBoundAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 341
    .local v0, "presentHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 342
    .local v1, "missingAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {p1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 343
    .local v3, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 346
    .end local v3    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 350
    .local v2, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 352
    return-object v2

    .line 355
    .end local v2    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v2
.end method

.method private static final leastUpperBound(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
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

    .line 420
    .local p0, "annos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 421
    .local v0, "annoIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 423
    .local v1, "lub":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    goto :goto_0

    .line 427
    :cond_0
    return-object v1
.end method

.method public static leastUpperBound(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Map;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 8
    .param p0, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 367
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 368
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    nop

    .line 369
    invoke-interface {p0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 370
    .local v1, "targetsDeclaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    new-instance v2, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 373
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 371
    invoke-static {v2, v0}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->createHierarchyMap(Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/QualifierHierarchy;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v2

    .line 376
    .local v2, "lowerBoundAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 377
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 378
    .local v3, "typesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 392
    .local v4, "head":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-static {v4, v2}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->groundMissingHierarchies(Ljava/util/Map$Entry;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 393
    .local v5, "lubType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v6, 0x0

    .line 394
    .local v6, "nextType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 395
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-static {v7, v2}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->groundMissingHierarchies(Ljava/util/Map$Entry;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    .line 397
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 398
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_1

    .line 399
    move-object v7, v5

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    invoke-virtual {p1, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    goto :goto_1

    .line 401
    :cond_0
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 402
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_1

    .line 403
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    invoke-virtual {p1, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v6

    .line 406
    :cond_1
    :goto_1
    invoke-static {p1, v5, v6}, Lorg/checkerframework/framework/util/AnnotatedTypes;->leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    goto :goto_0

    .line 409
    :cond_2
    return-object v5

    .line 379
    .end local v4    # "head":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v5    # "lubType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "nextType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    const-string v5, "Calling LUB on empty list."

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected static lubPrimaries(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/QualifierHierarchy;)V
    .locals 4
    .param p2, "tops"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .param p3, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            ")V"
        }
    .end annotation

    .line 318
    .local p0, "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p1, "subtypeAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->clear()V

    .line 319
    invoke-virtual {p2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 320
    .local v1, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 321
    .local v2, "annosInHierarchy":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    invoke-static {v2, p3}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->leastUpperBound(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 328
    :cond_0
    invoke-virtual {p3, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "annosInHierarchy":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :goto_1
    goto :goto_0

    .line 331
    :cond_1
    return-void
.end method

.method protected static propagatePreviousLubs(Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;Ljava/util/Map;)V
    .locals 5
    .param p0, "targetRecord"    # Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    .param p1, "solution"    # Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;",
            "Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p2, "subtypesOfTarget":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

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

    .line 294
    .local v1, "supertypeTarget":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->getType(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 295
    .local v2, "supertargetLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v2, :cond_1

    .line 296
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 297
    .local v3, "supertargetTypeAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v3, :cond_0

    .line 300
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 302
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v1    # "supertypeTarget":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v2    # "supertargetLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "supertargetTypeAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_1
    :goto_1
    goto :goto_0

    .line 306
    :cond_2
    return-void
.end method

.method private targetToTypeLubs(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;
    .locals 22
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
            "Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;"
        }
    .end annotation

    .line 214
    .local p1, "remainingTargets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 215
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 216
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v1, "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    new-instance v2, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;

    invoke-direct {v2}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;-><init>()V

    .line 220
    .local v2, "solution":Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;
    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    .line 222
    .local v3, "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v4, "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v6

    invoke-interface {v6}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v6

    .line 228
    .local v6, "types":Ljavax/lang/model/util/Types;
    new-instance v7, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$1;

    move-object/from16 v8, p0

    invoke-direct {v7, v8, v6}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$1;-><init>(Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;Ljavax/lang/model/util/Types;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/type/TypeVariable;

    .line 244
    .local v9, "target":Ljavax/lang/model/type/TypeVariable;
    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v11

    .line 245
    .local v11, "targetRecord":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    iget-object v12, v11, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v12, v12, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    .line 247
    .local v12, "subtypeAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v13, v11, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    iget-object v13, v13, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    .line 253
    .local v13, "subtypesOfTarget":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-static {v11, v2, v13}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->propagatePreviousLubs(Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;Ljava/util/Map;)V

    .line 256
    invoke-static {v3, v12, v1, v0}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->lubPrimaries(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/QualifierHierarchy;)V

    .line 257
    invoke-virtual {v2, v9, v3}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->addPrimaries(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)V

    .line 259
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 260
    nop

    .line 261
    move-object/from16 v14, p3

    invoke-static {v9, v14, v13}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->leastUpperBound(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Map;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v15

    .line 262
    .local v15, "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object/from16 v16, v1

    .end local v1    # "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .local v16, "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 263
    move-object/from16 v17, v4

    .end local v4    # "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    .local v17, "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual {v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 265
    .local v1, "effectiveLubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "effectiveLubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .local v19, "effectiveLubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    move-object/from16 v1, v18

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 266
    .local v1, "lubAnno":Ljavax/lang/model/element/AnnotationMirror;
    move-object/from16 v18, v4

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 267
    .local v4, "hierarchy":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v3

    .end local v3    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local v21, "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    move-object/from16 v3, v20

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 269
    .local v3, "primaryLub":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_0

    .line 270
    invoke-virtual {v0, v1, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 271
    invoke-static {v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 272
    invoke-virtual {v15, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 275
    .end local v1    # "lubAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "primaryLub":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "hierarchy":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    move-object/from16 v4, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v21

    goto :goto_1

    .line 277
    .end local v19    # "effectiveLubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v21    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local v1, "effectiveLubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .local v3, "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    move-object/from16 v19, v1

    move-object/from16 v21, v3

    .end local v1    # "effectiveLubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v3    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v19    # "effectiveLubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v21    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v2, v9, v15}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->addType(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_2

    .line 259
    .end local v15    # "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v16    # "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v17    # "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    .end local v19    # "effectiveLubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v21    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local v1, "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v3    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local v4, "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    :cond_2
    move-object/from16 v14, p3

    move-object/from16 v16, v1

    move-object/from16 v21, v3

    move-object/from16 v17, v4

    .line 279
    .end local v1    # "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v3    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v4    # "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    .end local v9    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v11    # "targetRecord":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    .end local v12    # "subtypeAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v13    # "subtypesOfTarget":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .restart local v16    # "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v17    # "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    .restart local v21    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_2
    move-object/from16 v1, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v21

    goto/16 :goto_0

    .line 280
    .end local v16    # "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v17    # "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    .end local v21    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v1    # "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .restart local v3    # "lubOfPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v4    # "targetsSupertypesLast":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    :cond_3
    return-object v2
.end method


# virtual methods
.method protected mergeLubAnnosWithEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    .locals 9
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p3, "constraintMap"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p4, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;"
        }
    .end annotation

    .line 145
    .local p2, "lubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p3, p1}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    .line 146
    .local v0, "equalities":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 147
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v1, "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    .line 152
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    .local v2, "eqEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 154
    .local v3, "equalityType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 156
    .local v4, "equalityAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    const/4 v5, 0x0

    .line 157
    .local v5, "failed":Z
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/AnnotationMirror;

    .line 158
    .local v7, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v4, v7}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 159
    invoke-virtual {p2, v7}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationMirror;

    .line 160
    .local v8, "lubAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v8, :cond_0

    .line 161
    const/4 v5, 0x1

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v3, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 165
    invoke-virtual {v4, v7}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 168
    .end local v7    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "lubAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_1
    goto :goto_0

    .line 170
    :cond_2
    if-nez v5, :cond_3

    .line 171
    new-instance v6, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v6, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v6

    .line 175
    .end local v2    # "eqEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v3    # "equalityType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "equalityAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v5    # "failed":Z
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method protected mergeLubTypeWithEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    .locals 16
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "constraintMap"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
    .param p4, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 90
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    move-result-object v3

    iget-object v3, v3, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    .line 91
    .local v3, "equalities":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    new-instance v4, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 92
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v4, "tops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    iget-object v5, v3, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 96
    iget-object v5, v3, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    .line 97
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 98
    .local v5, "eqEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 99
    .local v6, "equalityType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 101
    .local v7, "equalityAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    const/4 v8, 0x0

    .line 102
    .local v8, "failed":Z
    invoke-virtual {v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/AnnotationMirror;

    .line 103
    .local v10, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v7, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 104
    invoke-virtual {v0, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 105
    .local v11, "lubAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v11, :cond_2

    .line 108
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v12

    sget-object v13, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v12, v13, :cond_0

    move-object/from16 v12, p4

    iget-object v13, v12, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 110
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v14

    .line 111
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v15

    .line 109
    invoke-interface {v13, v14, v15}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 112
    invoke-virtual {v7, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    goto :goto_1

    .line 108
    :cond_0
    move-object/from16 v12, p4

    .line 114
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .line 118
    :cond_2
    move-object/from16 v12, p4

    invoke-virtual {v6, v11}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 119
    invoke-virtual {v7, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    goto :goto_1

    .line 103
    .end local v11    # "lubAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    move-object/from16 v12, p4

    .line 122
    .end local v10    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    goto :goto_0

    .line 124
    :cond_4
    move-object/from16 v12, p4

    if-nez v8, :cond_6

    .line 125
    new-instance v9, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v9, v6}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v9

    .line 94
    .end local v5    # "eqEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v6    # "equalityType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v7    # "equalityAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v8    # "failed":Z
    :cond_5
    move-object/from16 v12, p4

    .line 129
    :cond_6
    new-instance v5, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v5, v0}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v5
.end method

.method public solveFromSupertypes(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    .locals 7
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
    .local p1, "remainingTargets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->targetToTypeLubs(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;

    move-result-object v0

    .line 52
    .local v0, "lubs":Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;
    new-instance v1, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;-><init>()V

    .line 53
    .local v1, "solution":Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    .line 54
    .local v3, "target":Ljavax/lang/model/type/TypeVariable;
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->getType(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 55
    .local v4, "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->getPrimaries(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v5

    .line 60
    .local v5, "lubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {p0, v3, v4, p2, p3}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->mergeLubTypeWithEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    move-result-object v6

    .local v6, "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    goto :goto_1

    .line 62
    .end local v6    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_0
    if-eqz v5, :cond_1

    .line 63
    nop

    .line 64
    invoke-virtual {p0, v3, v5, p2, p3}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->mergeLubAnnosWithEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    move-result-object v6

    .restart local v6    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    goto :goto_1

    .line 66
    .end local v6    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_1
    const/4 v6, 0x0

    .line 69
    .restart local v6    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :goto_1
    if-eqz v6, :cond_2

    .line 70
    invoke-virtual {v1, v3, v6}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v3    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v4    # "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "lubAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v6    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_2
    goto :goto_0

    .line 74
    :cond_3
    return-object v1
.end method
