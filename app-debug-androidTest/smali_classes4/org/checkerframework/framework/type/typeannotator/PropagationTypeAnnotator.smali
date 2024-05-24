.class public Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "PropagationTypeAnnotator.java"


# instance fields
.field private parents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;"
        }
    .end annotation
.end field

.field private pause:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->pause:Z

    .line 36
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->parents:Ljava/util/ArrayDeque;

    .line 40
    return-void
.end method

.method private applyAnnosFromBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V
    .locals 5
    .param p1, "wildcardBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeParamBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p3, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_4

    .line 155
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 159
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 160
    .local v1, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    if-nez v2, :cond_2

    .line 161
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 162
    .local v2, "typeParamAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 163
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing annotation on type parameter\ntop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nwildcardBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ntypeParamBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "typeParamAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    :goto_1
    goto :goto_0

    .line 178
    :cond_3
    return-void

    .line 156
    :cond_4
    :goto_2
    return-void
.end method

.method private getTypeParamFromEnclosingClass(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Ljavax/lang/model/element/Element;
    .locals 5
    .param p1, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "wildcardIndex":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 189
    .local v1, "currentIndex":I
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 192
    .local v3, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-ne v3, p1, :cond_0

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 194
    goto :goto_1

    .line 196
    :cond_0
    nop

    .end local v3    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    add-int/lit8 v1, v1, 0x1

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 200
    iget-object v2, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 203
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v2

    .line 204
    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 205
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 207
    .local v2, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    return-object v3

    .line 210
    .end local v2    # "typeElement":Ljavax/lang/model/element/TypeElement;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private propagateExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)V
    .locals 2
    .param p1, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "typeParam"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p3, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->applyAnnosFromBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 141
    return-void
.end method

.method private propagateSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)V
    .locals 2
    .param p1, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "typeParam"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p3, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->applyAnnosFromBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 134
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->pause:Z

    if-nez v0, :cond_0

    .line 47
    invoke-super {p0}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->reset()V

    .line 49
    :cond_0
    return-void
.end method

.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 57
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->pause:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "declaredType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 73
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->pause:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    return-object v1

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->parents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 77
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->parents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 79
    return-object v1
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "wildcardAtm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 90
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->pause:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 96
    .local v0, "wildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->wildcardToTypeParam(Lcom/sun/tools/javac/code/Type$WildcardType;)Ljavax/lang/model/element/TypeParameterElement;

    move-result-object v2

    .line 97
    .local v2, "typeParamElement":Ljavax/lang/model/element/Element;
    if-nez v2, :cond_2

    .line 99
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->parents:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    move-object v3, v1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->parents:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->getTypeParamFromEnclosingClass(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Ljavax/lang/model/element/Element;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 104
    :cond_2
    if-eqz v2, :cond_5

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->pause:Z

    .line 106
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 107
    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 108
    .local v3, "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->pause:Z

    .line 110
    iget-object v4, p0, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 111
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 113
    .local v4, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isUnbound()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    invoke-direct {p0, p1, v3, v4}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->propagateExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)V

    .line 115
    invoke-direct {p0, p1, v3, v4}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->propagateSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)V

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    invoke-direct {p0, p1, v3, v4}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->propagateSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)V

    goto :goto_1

    .line 121
    :cond_4
    invoke-direct {p0, p1, v3, v4}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->propagateExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)V

    .line 124
    .end local v3    # "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v4    # "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    .line 125
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    .line 126
    return-object v1

    .line 91
    .end local v0    # "wildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    .end local v2    # "typeParamElement":Ljavax/lang/model/element/Element;
    :cond_6
    :goto_2
    return-object v1
.end method
