.class public Lorg/checkerframework/framework/util/typeinference/GlbUtil;
.super Ljava/lang/Object;
.source "GlbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBottom(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .locals 1
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;"
        }
    .end annotation

    .line 126
    .local p1, "annos":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedNullType(Ljava/util/Set;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    move-result-object v0

    return-object v0
.end method

.method public static glbAll(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 13
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 37
    .local p0, "typeMirrors":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 38
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x0

    return-object v1

    .line 43
    :cond_0
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    .line 44
    .local v1, "glbPrimaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 45
    .local v3, "tmEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 46
    .local v4, "typeAnnoHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 48
    .local v5, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/AnnotationMirror;

    .line 52
    .local v7, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v5, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 53
    .local v8, "typeAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v7}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/AnnotationMirror;

    .line 54
    .local v9, "currentAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 55
    nop

    .line 56
    invoke-virtual {v0, v9, v8}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v10

    .line 55
    invoke-virtual {v1, v7, v10}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 57
    :cond_1
    if-eqz v8, :cond_2

    .line 58
    invoke-virtual {v1, v7, v8}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v7    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "typeAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v9    # "currentAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    :goto_2
    goto :goto_1

    .line 61
    .end local v3    # "tmEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v4    # "typeAnnoHierarchies":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v5    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    goto :goto_0

    .line 63
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "glbTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    .line 67
    .local v3, "values":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 68
    .restart local v5    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_6

    .line 69
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    .line 78
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 70
    :cond_6
    :goto_4
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    .line 71
    .local v6, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v6, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 72
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v6    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 80
    .end local v5    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_5
    goto :goto_3

    .line 82
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v4

    .line 85
    .local v4, "typeHierarchy":Lorg/checkerframework/framework/type/TypeHierarchy;
    invoke-static {v2, p1}, Lorg/checkerframework/framework/util/typeinference/GlbUtil;->sortForGlb(Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 88
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 89
    .local v5, "glbType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v6, 0x1

    .line 90
    .local v6, "index":I
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 93
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-eq v7, v8, :cond_8

    .line 94
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 96
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 102
    :cond_9
    const/4 v7, 0x0

    .line 103
    .local v7, "incomparable":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 104
    .local v9, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v7, :cond_b

    .line 105
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v10

    sget-object v11, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-eq v10, v11, :cond_b

    .line 107
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    .line 108
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    .line 109
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v12

    invoke-interface {v12}, Lorg/checkerframework/framework/util/CFContext;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v12

    .line 106
    invoke-static {v10, v11, v12}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 110
    invoke-interface {v4, v5, v9}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 111
    :cond_a
    const/4 v7, 0x1

    .line 113
    .end local v9    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_b
    goto :goto_7

    .line 116
    :cond_c
    if-eqz v7, :cond_d

    .line 117
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v8

    invoke-static {p1, v8}, Lorg/checkerframework/framework/util/typeinference/GlbUtil;->createBottom(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    move-result-object v8

    return-object v8

    .line 120
    :cond_d
    return-object v5
.end method

.method public static sortForGlb(Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 3
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .line 138
    .local p0, "typeMirrors":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 139
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    .line 141
    .local v1, "types":Ljavax/lang/model/util/Types;
    new-instance v2, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;

    invoke-direct {v2, v1, v0}, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;-><init>(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/QualifierHierarchy;)V

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    return-void
.end method
