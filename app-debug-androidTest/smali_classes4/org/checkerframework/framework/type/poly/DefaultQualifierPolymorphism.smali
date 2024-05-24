.class public Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;
.super Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;
.source "DefaultQualifierPolymorphism.java"


# direct methods
.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 4
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 28
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 29
    .local v1, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getPolymorphicAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 30
    .local v2, "poly":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_0

    .line 31
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;->polyQuals:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v3, v2, v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "poly":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method protected combine(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .locals 6
    .param p1, "polyQual"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a1Annos"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .param p3, "a2Annos"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 61
    if-nez p2, :cond_1

    .line 62
    if-nez p3, :cond_0

    .line 63
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    return-object v0

    .line 65
    :cond_0
    return-object p3

    .line 66
    :cond_1
    if-nez p3, :cond_2

    .line 67
    return-object p2

    .line 70
    :cond_2
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 71
    .local v0, "lubSet":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    iget-object v1, p0, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;->topQuals:Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 72
    .local v2, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v3, p2, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 73
    .local v3, "a1":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v4, p3, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 74
    .local v4, "a2":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/framework/type/poly/DefaultQualifierPolymorphism;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v5, v3, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBoundTypeVariable(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 75
    .local v5, "lub":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v5, :cond_3

    .line 76
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 78
    .end local v2    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "a1":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "a2":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "lub":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_0

    .line 79
    :cond_4
    return-object v0
.end method

.method protected replace(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "replacements":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .local v1, "pqentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 41
    .local v2, "poly":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 44
    .local v3, "quals":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 46
    .end local v1    # "pqentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v2    # "poly":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "quals":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method
