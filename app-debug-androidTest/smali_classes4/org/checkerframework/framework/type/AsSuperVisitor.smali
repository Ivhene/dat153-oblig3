.class public Lorg/checkerframework/framework/type/AsSuperVisitor;
.super Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;
.source "AsSuperVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private isUninferredTypeAgrument:Z

.field private final types:Ljavax/lang/model/util/Types;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "annotatedTypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 38
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 39
    iput-object p1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 40
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    iput-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    .line 41
    return-void
.end method

.method private areErasedJavaTypesEquivalent(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p1, "typeA"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeB"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 242
    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 243
    .local v0, "underlyingTypeA":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 244
    .local v1, "underlyingTypeB":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v0, v1}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    return v2
.end method

.method private asSuperLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "p"    # Ljava/lang/Void;
    .param p3, "lowerBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 207
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 210
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 209
    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v0

    .line 211
    .local v0, "typeLowerBound":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p3, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 212
    return-object p3

    .line 214
    .end local v0    # "typeLowerBound":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->areErasedJavaTypesEquivalent(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0, p1, p3, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 220
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method private asSuperTypevarLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 201
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 202
    .local v0, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, p1, p3, v0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method private asSuperWildcardLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 194
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 195
    .local v0, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, p1, p3, v0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method private canBeNarrowingPrimitiveConversion(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 3
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 548
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 549
    .local v0, "unboxedType":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 550
    .local v1, "unboxedKind":Ljavax/lang/model/type/TypeKind;
    sget-object v2, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_2

    sget-object v2, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_2

    sget-object v2, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2
.end method

.method private copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "from"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "to"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 167
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 170
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    .line 171
    .local v0, "unionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 172
    .local v2, "altern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 173
    .end local v2    # "altern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 175
    .end local v0    # "unionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    :cond_0
    return-object p2
.end method

.method private ensurePrimaryIsCorrectForUnionsAndIntersections(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 9
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 95
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_3

    .line 96
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 97
    .local v0, "intersectionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    const/4 v1, 0x0

    .line 98
    .local v1, "glbs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 99
    .local v3, "directST":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v1, :cond_0

    .line 100
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    goto :goto_2

    .line 102
    :cond_0
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v4

    .line 103
    .local v4, "newGlbs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 104
    .local v6, "glb":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 105
    .local v7, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v8, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 107
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v8

    .line 108
    invoke-virtual {v8, v7, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 105
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v6    # "glb":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 110
    :cond_1
    move-object v1, v4

    .line 112
    .end local v3    # "directST":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v4    # "newGlbs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_2
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .end local v0    # "intersectionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .end local v1    # "glbs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_6

    .line 114
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_7

    .line 115
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    .line 116
    .local v0, "annotatedUnionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    const/4 v1, 0x0

    .line 117
    .local v1, "lubs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 118
    .local v3, "altern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v1, :cond_4

    .line 119
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    goto :goto_5

    .line 121
    :cond_4
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v4

    .line 122
    .local v4, "newLubs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 123
    .local v6, "lub":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 124
    .restart local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v8, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 126
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v8

    .line 127
    invoke-virtual {v8, v7, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 124
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v6    # "lub":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_4

    .line 129
    :cond_5
    move-object v1, v4

    .line 131
    .end local v3    # "altern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v4    # "newLubs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_5
    goto :goto_3

    .line 132
    :cond_6
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    goto :goto_7

    .line 114
    .end local v0    # "annotatedUnionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .end local v1    # "lubs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_7
    :goto_6
    nop

    .line 134
    :goto_7
    return-void
.end method

.method private errorTypeNotErasedSubtypeOfSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 147
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getStringType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 154
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AsSuperVisitor: type is not an erased subtype of supertype.\ntype: %s\nsuperType: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private isErasedJavaSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 225
    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 226
    .local v0, "javaSubtype":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 227
    .local v1, "javaSupertype":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v0, v1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    return v2
.end method

.method private isErasedJavaSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;)Z
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    .line 232
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 233
    .local v1, "alternSuperType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/framework/type/AsSuperVisitor;->isErasedJavaSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    const/4 v0, 0x0

    return v0

    .line 236
    .end local v1    # "alternSuperType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private reset()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 79
    return-void
.end method

.method private visitPrimitive_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 526
    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method private visitTypevar_NotTypevarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 583
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 584
    .local v0, "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method private visitUnion_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 676
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 677
    .local v0, "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method private visitWildcard_NotTypvarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 718
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 719
    .local v0, "oldIsUninferredTypeArgument":Z
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 722
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 723
    .local v1, "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 724
    iget-object v2, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 726
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TT;)TT;"
        }
    .end annotation

    .line 55
    .local p2, "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 58
    if-ne p1, p2, :cond_0

    .line 59
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 65
    .local v0, "copyType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 66
    .local v1, "copySuperType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->reset()V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 69
    .local v2, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v2, :cond_1

    .line 74
    return-object v2

    .line 70
    :cond_1
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    const-string v4, "AsSuperVisitor returned null.\ntype: %s\nsuperType: %s"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 56
    .end local v0    # "copyType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "copySuperType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AsSuperVisitor type and supertype cannot be null."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 139
    nop

    .line 142
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    filled-new-array {v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 139
    const-string v1, "AsSuperVisitor: Unexpected combination: type: %s superType: %s.\ntype: %s\nsuperType: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sameAnnotatedTypeFactory(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z
    .locals 1
    .param p1, "annotatedTypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 832
    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 84
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/AsSuperVisitor;->ensurePrimaryIsCorrectForUnionsAndIntersections(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public bridge synthetic visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 251
    nop

    .line 252
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 253
    .local v0, "asSuperCT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->setComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 254
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 276
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getUnderlyingType()Ljavax/lang/model/type/ArrayType;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 277
    .local v0, "array":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 281
    .local v1, "possibleArray":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 283
    .local v2, "isArrayClass":Z
    if-nez v2, :cond_1

    .line 284
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TypesUtils;->isObject(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    const-string v4, "java.lang.Cloneable"

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    .line 286
    const-string v4, "java.io.Serializable"

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->errorTypeNotErasedSubtypeOfSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    return-object v3

    .line 288
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic visitArray_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitArray_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 260
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 261
    .local v1, "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isObject(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    const-string v3, "java.lang.Cloneable"

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 263
    const-string v3, "java.io.Serializable"

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->errorTypeNotErasedSubtypeOfSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 268
    .end local v1    # "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArray_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitArray_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 296
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 297
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 299
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperTypevarLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 300
    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 302
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 308
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 309
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 311
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperWildcardLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 312
    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 314
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 322
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->areErasedJavaTypesEquivalent(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    return-object p1

    .line 329
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 330
    .local v1, "dst":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-direct {p0, v1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->isErasedJavaSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    invoke-virtual {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 336
    .end local v1    # "dst":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_1
    goto :goto_0

    .line 338
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->errorTypeNotErasedSubtypeOfSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "newDirectSupertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 348
    .local v2, "superDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v3, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-virtual {p0, p1, v2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 350
    .local v3, "found":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v2    # "superDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v3    # "found":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->setDirectSuperTypes(Ljava/util/List;)V

    .line 355
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 361
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getUnboxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object v0

    .line 365
    .local v0, "unboxedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 362
    .end local v0    # "unboxedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AsSuperVisitor Declared_Primitive: type is not a box primitive."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 371
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 372
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 374
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperTypevarLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 375
    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 377
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 384
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 390
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 391
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperWildcardLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 394
    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 396
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 415
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 419
    .local v1, "typeDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-direct {p0, v1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->isErasedJavaSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 425
    .local v0, "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 427
    .end local v0    # "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "typeDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 428
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->errorTypeNotErasedSubtypeOfSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v0, "newDirectSupertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 436
    .local v2, "superDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    const/4 v3, 0x0

    .line 437
    .local v3, "found":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 438
    .local v5, "typeDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-direct {p0, v5, v2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->isErasedJavaSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 439
    invoke-virtual {p0, v5, v2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 440
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    goto :goto_2

    .line 443
    .end local v5    # "typeDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_1

    .line 444
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 449
    .end local v2    # "superDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v3    # "found":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 445
    .restart local v2    # "superDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v3    # "found":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v4, "AsSuperVisitor visitIntersection_Intersection:\ntype: %s superType: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 450
    .end local v2    # "superDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v3    # "found":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_3
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->setDirectSuperTypes(Ljava/util/List;)V

    .line 451
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitIntersection_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitIntersection_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 457
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 460
    .local v1, "typeDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 466
    .local v0, "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 468
    .end local v0    # "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "typeDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 470
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AsSuperVisitor visitIntersection_Primitive:\ntype: %s superType: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitIntersection_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitIntersection_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 478
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 479
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperTypevarLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 482
    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 484
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitIntersection_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitIntersection_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 490
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 491
    .local v1, "typeDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-direct {p0, v1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->isErasedJavaSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 493
    .local v0, "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 495
    .end local v0    # "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "typeDirect":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 497
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AsSuperVisitor visitIntersection_Union:\ntype: %s\nsuperType: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitIntersection_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitIntersection_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 505
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 506
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 508
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperWildcardLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 509
    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 511
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 532
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 534
    .local v0, "unboxedSuper":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 535
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AsSuperVisitor;->canBeNarrowingPrimitiveConversion(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 537
    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getNarrowedPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object v1

    .line 538
    .local v1, "narrowedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    invoke-virtual {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 541
    .end local v0    # "unboxedSuper":Ljavax/lang/model/type/TypeMirror;
    .end local v1    # "narrowedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 558
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 521
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 564
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 570
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 576
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitPrimitive_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 590
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_NotTypevarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 596
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_NotTypevarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 602
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_NotTypevarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 611
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->clearAnnotations()V

    .line 612
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 614
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 615
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 618
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 619
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 620
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 621
    .end local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 622
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .restart local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 624
    .end local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperTypevarLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 626
    .restart local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 628
    return-object p2
.end method

.method public bridge synthetic visitTypevar_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_NotTypevarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 640
    nop

    .line 641
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 642
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 645
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 646
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 647
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 648
    .end local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 649
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .restart local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 651
    .end local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperWildcardLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 653
    .restart local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 655
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 683
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 689
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 695
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 701
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 702
    .local v1, "superAltern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 703
    .end local v1    # "superAltern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 704
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 710
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitUnion_Other(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 732
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_NotTypvarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 738
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_NotTypvarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 744
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_NotTypvarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 750
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_NotTypvarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 756
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 757
    .local v0, "oldIsUninferredTypeArgument":Z
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 760
    :cond_0
    nop

    .line 761
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 762
    .local v1, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 765
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    .line 766
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    .line 767
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .local v2, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 768
    .end local v2    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_2

    .line 769
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .restart local v2    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 771
    .end local v2    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperTypevarLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 773
    .restart local v2    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 774
    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 775
    iget-object v3, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 777
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic visitWildcard_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 783
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_NotTypvarNorWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "superType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 789
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 790
    .local v0, "oldIsUninferredTypeArgument":Z
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 792
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setUninferredTypeArgument()V

    .line 794
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->types:Ljavax/lang/model/util/Types;

    .line 795
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 796
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 794
    invoke-interface {v1, v2, v3}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 797
    nop

    .line 798
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 799
    .local v1, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 800
    .end local v1    # "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 812
    iget-object v1, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 816
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 817
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 818
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 819
    .end local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_3

    .line 820
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .restart local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 822
    .end local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/checkerframework/framework/type/AsSuperVisitor;->asSuperWildcardLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 824
    .restart local v1    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 825
    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->isUninferredTypeAgrument:Z

    .line 826
    iget-object v2, p0, Lorg/checkerframework/framework/type/AsSuperVisitor;->annotatedTypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 828
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AsSuperVisitor;->copyPrimaryAnnos(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2
.end method
