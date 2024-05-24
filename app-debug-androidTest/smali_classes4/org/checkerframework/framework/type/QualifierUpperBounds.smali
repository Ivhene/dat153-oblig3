.class public Lorg/checkerframework/framework/type/QualifierUpperBounds;
.super Ljava/lang/Object;
.source "QualifierUpperBounds.java"


# instance fields
.field private final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field private final typeKinds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeKind;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 11
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 38
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljavax/lang/model/type/TypeKind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->typeKinds:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->types:Ljava/util/Map;

    .line 41
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 44
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    .line 48
    .local v0, "quals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 49
    .local v2, "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v3, Lorg/checkerframework/framework/qual/UpperBoundFor;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/qual/UpperBoundFor;

    .line 50
    .local v3, "upperBoundFor":Lorg/checkerframework/framework/qual/UpperBoundFor;
    if-nez v3, :cond_0

    .line 51
    goto :goto_0

    .line 54
    :cond_0
    nop

    .line 55
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 57
    .local v4, "theQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v3}, Lorg/checkerframework/framework/qual/UpperBoundFor;->typeKinds()[Lorg/checkerframework/framework/qual/TypeKind;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_1

    aget-object v9, v5, v8

    .line 58
    .local v9, "typeKind":Lorg/checkerframework/framework/qual/TypeKind;
    invoke-direct {p0, v9}, Lorg/checkerframework/framework/type/QualifierUpperBounds;->mapTypeKinds(Lorg/checkerframework/framework/qual/TypeKind;)Ljavax/lang/model/type/TypeKind;

    move-result-object v10

    .line 59
    .local v10, "mappedTk":Ljavax/lang/model/type/TypeKind;
    invoke-virtual {p0, v10, v4}, Lorg/checkerframework/framework/type/QualifierUpperBounds;->addTypeKind(Ljavax/lang/model/type/TypeKind;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 57
    .end local v9    # "typeKind":Lorg/checkerframework/framework/qual/TypeKind;
    .end local v10    # "mappedTk":Ljavax/lang/model/type/TypeKind;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 62
    :cond_1
    invoke-interface {v3}, Lorg/checkerframework/framework/qual/UpperBoundFor;->types()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 63
    .local v8, "typeName":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v8, v4}, Lorg/checkerframework/framework/type/QualifierUpperBounds;->addType(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 62
    .end local v8    # "typeName":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 65
    .end local v2    # "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "upperBoundFor":Lorg/checkerframework/framework/qual/UpperBoundFor;
    .end local v4    # "theQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_0

    .line 66
    :cond_3
    return-void
.end method

.method private addMissingAnnotations(Lorg/checkerframework/framework/util/AnnotationMirrorSet;Ljava/util/Set;)V
    .locals 3
    .param p1, "annos"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "missing":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 139
    .local v1, "miss":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 143
    .end local v1    # "miss":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method private mapTypeKinds(Lorg/checkerframework/framework/qual/TypeKind;)Ljavax/lang/model/type/TypeKind;
    .locals 1
    .param p1, "typeKind"    # Lorg/checkerframework/framework/qual/TypeKind;

    .line 75
    invoke-virtual {p1}, Lorg/checkerframework/framework/qual/TypeKind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/type/TypeKind;->valueOf(Ljava/lang/String;)Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addType(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 5
    .param p2, "theQual"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")V"
        }
    .end annotation

    .line 90
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "typeNameString":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->types:Ljava/util/Map;

    invoke-virtual {v1, v2, v0, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->updateMappingToMutableSet(Ljava/util/Map;Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    .line 92
    .local v1, "res":Z
    if-eqz v1, :cond_0

    .line 97
    return-void

    .line 93
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v3, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->types:Ljava/util/Map;

    filled-new-array {v3, p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "QualifierUpperBounds: invalid update of types $s at %s with %s."

    invoke-direct {v2, v4, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public addTypeKind(Ljavax/lang/model/type/TypeKind;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p1, "typeKind"    # Ljavax/lang/model/type/TypeKind;
    .param p2, "theQual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 80
    iget-object v0, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->typeKinds:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->updateMappingToMutableSet(Ljava/util/Map;Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 81
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 86
    return-void

    .line 82
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->typeKinds:Ljava/util/Map;

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "QualifierUpperBounds: invalid update of typeKinds $s at %s with %s."

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getBoundQualifiers(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;
    .locals 4
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 103
    .local v0, "bounds":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 104
    move-object v1, p1

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    .line 105
    .local v1, "declaredType":Ljavax/lang/model/type/DeclaredType;
    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 107
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "qname":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "qname":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "qname":Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v1    # "qname":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 116
    .restart local v1    # "qname":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->types:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->types:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 118
    .local v2, "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-direct {p0, v0, v2}, Lorg/checkerframework/framework/type/QualifierUpperBounds;->addMissingAnnotations(Lorg/checkerframework/framework/util/AnnotationMirrorSet;Ljava/util/Set;)V

    .line 123
    .end local v2    # "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->typeKinds:Ljava/util/Map;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->typeKinds:Ljava/util/Map;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 125
    .restart local v2    # "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-direct {p0, v0, v2}, Lorg/checkerframework/framework/type/QualifierUpperBounds;->addMissingAnnotations(Lorg/checkerframework/framework/util/AnnotationMirrorSet;Ljava/util/Set;)V

    .line 128
    .end local v2    # "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/framework/type/QualifierUpperBounds;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDefaultTypeDeclarationBounds()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/framework/type/QualifierUpperBounds;->addMissingAnnotations(Lorg/checkerframework/framework/util/AnnotationMirrorSet;Ljava/util/Set;)V

    .line 129
    return-object v0
.end method
