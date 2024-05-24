.class public Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "DefaultQualifierForUseTypeAnnotator.java"


# instance fields
.field protected elementToDefaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 25
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 40
    nop

    .line 41
    const/16 v0, 0x64

    invoke-static {v0}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->elementToDefaults:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->elementToDefaults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    return-void
.end method

.method protected getDefaultAnnosForUses(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 8
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->elementToDefaults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->elementToDefaults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->getExplicitAnnos(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v0

    .line 54
    .local v0, "explictAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->getSupportAnnosFromDefaultQualifierForUses(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v1

    .line 55
    .local v1, "defaultAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->getHierarchiesNoDefault(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v2

    .line 56
    .local v2, "noDefaultAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 58
    .local v3, "annosToApply":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    iget-object v4, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/AnnotationMirror;

    .line 59
    .local v5, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2, v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    iget-object v6, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 64
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v6

    .line 65
    invoke-virtual {v6, v1, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 66
    .local v6, "defaultAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v6, :cond_2

    .line 67
    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    goto :goto_1

    .line 69
    :cond_2
    iget-object v7, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 71
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v7

    .line 72
    invoke-virtual {v7, v0, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 73
    .local v7, "explict":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v7, :cond_3

    .line 74
    invoke-virtual {v3, v7}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 77
    .end local v5    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v6    # "defaultAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "explict":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    :goto_1
    goto :goto_0

    .line 79
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v4, v4, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->stubTypes:Lorg/checkerframework/framework/stub/StubTypes;

    invoke-virtual {v4}, Lorg/checkerframework/framework/stub/StubTypes;->isParsing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 80
    iget-object v4, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->elementToDefaults:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_5
    return-object v3
.end method

.method protected getExplicitAnnos(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 88
    .local v0, "explicitAnnoOnDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method protected getHierarchiesNoDefault(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/framework/qual/NoDefaultQualifierForUse;

    .line 112
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 113
    .local v0, "noDefaultQualifier":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->supportedAnnosFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    move-result-object v1

    return-object v1
.end method

.method protected getSupportAnnosFromDefaultQualifierForUses(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/framework/qual/DefaultQualifierForUse;

    .line 99
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 100
    .local v0, "defaultQualifier":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->supportedAnnosFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    move-result-object v1

    return-object v1
.end method

.method protected final supportedAnnosFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .locals 6
    .param p1, "annotationMirror"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 130
    nop

    .line 131
    const-string v0, "value"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassNames(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "annoClassNames":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Name;>;"
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 133
    .local v1, "supportAnnos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Name;

    .line 134
    .local v3, "annoName":Ljavax/lang/model/element/Name;
    iget-object v4, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 135
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 136
    .local v4, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    invoke-virtual {v1, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 139
    .end local v3    # "annoName":Ljavax/lang/model/element/Name;
    .end local v4    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    return-object v1
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 30
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 31
    .local v0, "element":Ljavax/lang/model/element/Element;
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;->getDefaultAnnosForUses(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v1

    .line 32
    .local v1, "annosToApply":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 33
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    return-object v2
.end method
