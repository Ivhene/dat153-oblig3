.class public Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "DefaultForTypeAnnotator.java"


# instance fields
.field private final atmClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

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

    .line 51
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 52
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljavax/lang/model/type/TypeKind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->typeKinds:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->atmClasses:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->types:Ljava/util/Map;

    .line 56
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 59
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    .line 63
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

    .line 64
    .local v2, "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v3, Lorg/checkerframework/framework/qual/DefaultFor;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/qual/DefaultFor;

    .line 65
    .local v3, "defaultFor":Lorg/checkerframework/framework/qual/DefaultFor;
    if-nez v3, :cond_0

    .line 66
    goto :goto_0

    .line 69
    :cond_0
    nop

    .line 70
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 71
    .local v4, "theQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v3}, Lorg/checkerframework/framework/qual/DefaultFor;->typeKinds()[Lorg/checkerframework/framework/qual/TypeKind;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_1

    aget-object v9, v5, v8

    .line 72
    .local v9, "typeKind":Lorg/checkerframework/framework/qual/TypeKind;
    invoke-direct {p0, v9}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->mapTypeKinds(Lorg/checkerframework/framework/qual/TypeKind;)Ljavax/lang/model/type/TypeKind;

    move-result-object v10

    .line 73
    .local v10, "mappedTk":Ljavax/lang/model/type/TypeKind;
    invoke-virtual {p0, v10, v4}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->addTypeKind(Ljavax/lang/model/type/TypeKind;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 71
    .end local v9    # "typeKind":Lorg/checkerframework/framework/qual/TypeKind;
    .end local v10    # "mappedTk":Ljavax/lang/model/type/TypeKind;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 76
    :cond_1
    invoke-interface {v3}, Lorg/checkerframework/framework/qual/DefaultFor;->types()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 77
    .local v8, "typeName":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v8, v4}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->addTypes(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 76
    .end local v8    # "typeName":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 79
    .end local v2    # "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "defaultFor":Lorg/checkerframework/framework/qual/DefaultFor;
    .end local v4    # "theQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_0

    .line 80
    :cond_3
    return-void
.end method

.method private mapTypeKinds(Lorg/checkerframework/framework/qual/TypeKind;)Ljavax/lang/model/type/TypeKind;
    .locals 1
    .param p1, "typeKind"    # Lorg/checkerframework/framework/qual/TypeKind;

    .line 90
    invoke-virtual {p1}, Lorg/checkerframework/framework/qual/TypeKind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/type/TypeKind;->valueOf(Ljava/lang/String;)Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAtmClass(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p2, "theQual"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")V"
        }
    .end annotation

    .line 110
    .local p1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->atmClasses:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->updateMappingToMutableSet(Ljava/util/Map;Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 111
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 120
    return-void

    .line 112
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TypeAnnotator: invalid update of atmClasses "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->atmClasses:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addStandardDefaults()Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;
    .locals 5

    .line 182
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->types:Ljava/util/Map;

    const-class v1, Ljava/lang/Void;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 184
    .local v1, "bottom":Ljavax/lang/model/element/AnnotationMirror;
    const-class v2, Ljava/lang/Void;

    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->addTypes(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 185
    .end local v1    # "bottom":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->types:Ljava/util/Map;

    const-class v1, Ljava/lang/Void;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 188
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 189
    .local v2, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v3, v0, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    if-nez v3, :cond_2

    .line 190
    const-class v3, Ljava/lang/Void;

    iget-object v4, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->addTypes(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 192
    .end local v2    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_1

    .line 195
    .end local v0    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    :goto_2
    return-object p0
.end method

.method public addTypeKind(Ljavax/lang/model/type/TypeKind;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p1, "typeKind"    # Ljavax/lang/model/type/TypeKind;
    .param p2, "theQual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 95
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->typeKinds:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->updateMappingToMutableSet(Ljava/util/Map;Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 96
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 97
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TypeAnnotator: invalid update of typeKinds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->typeKinds:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addTypes(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V
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

    .line 124
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "typeNameString":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v2, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->types:Ljava/util/Map;

    invoke-virtual {v1, v2, v0, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->updateMappingToMutableSet(Ljava/util/Map;Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    .line 126
    .local v1, "res":Z
    if-eqz v1, :cond_0

    .line 135
    return-void

    .line 127
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TypeAnnotator: invalid update of types "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->types:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "p"    # Ljava/lang/Void;

    .line 144
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "qname":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v0    # "qname":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "qname":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0    # "qname":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 152
    .restart local v0    # "qname":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 153
    iget-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->types:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 154
    .local v1, "fromQname":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 161
    .end local v1    # "fromQname":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->typeKinds:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 162
    .local v1, "fromKind":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 164
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->atmClasses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 166
    .local v2, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->atmClasses:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 167
    .local v3, "fromClass":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v3, :cond_4

    .line 168
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 172
    .end local v2    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v3    # "fromClass":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    return-object v2
.end method
