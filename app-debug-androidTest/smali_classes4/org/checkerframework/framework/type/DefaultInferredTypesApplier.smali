.class public Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;
.super Ljava/lang/Object;
.source "DefaultInferredTypesApplier.java"


# instance fields
.field private final factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field private final omitSubtypingCheck:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "hierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;-><init>(ZLorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 27
    return-void
.end method

.method public constructor <init>(ZLorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "omitSubtypingCheck"    # Z
    .param p2, "hierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p3, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->omitSubtypingCheck:Z

    .line 34
    iput-object p2, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 35
    iput-object p3, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 36
    return-void
.end method

.method private apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "inferred"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "inferredTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p4, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 73
    invoke-virtual {p1, p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 74
    .local v0, "primary":Ljavax/lang/model/element/AnnotationMirror;
    if-nez p2, :cond_2

    .line 76
    if-nez v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 79
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-direct {p0, v1, p3, p4, v0}, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->removePrimaryAnnotationTypeVar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 82
    :cond_1
    invoke-direct {p0, p1, p3, p4, v0}, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->removePrimaryTypeVarApplyUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 85
    :cond_2
    if-nez v0, :cond_3

    .line 86
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 87
    invoke-static {v1, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v1

    .line 88
    .local v1, "lowerbounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v2, v1, p4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 90
    .end local v1    # "lowerbounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->omitSubtypingCheck:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v1, p2, v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    :cond_4
    invoke-virtual {p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 92
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_5

    .line 94
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 95
    .local v2, "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 96
    .end local v2    # "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 100
    :cond_5
    :goto_1
    return-void
.end method

.method private removePrimaryAnnotationTypeVar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 7
    .param p1, "annotatedTypeVariable"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "inferredTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "previousAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 127
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    .line 130
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 131
    .local v0, "typeVar":Ljavax/lang/model/type/TypeVariable;
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 132
    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 133
    .local v1, "typeVariableDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 134
    .local v2, "upperBound":Ljavax/lang/model/element/AnnotationMirror;
    iget-boolean v3, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->omitSubtypingCheck:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v3, v2, p4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    :cond_0
    invoke-virtual {p1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 136
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 137
    .local v3, "ub":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5, p3}, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 138
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 139
    .local v4, "lb":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-direct {p0, v5, v4, v6, p3}, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 141
    .end local v3    # "ub":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "lb":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    return-void

    .line 128
    .end local v0    # "typeVar":Ljavax/lang/model/type/TypeVariable;
    .end local v1    # "typeVariableDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v2    # "upperBound":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Missing annos"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removePrimaryTypeVarApplyUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "inferredTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "notInferred"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 107
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    .line 112
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 113
    .local v0, "typeVar":Ljavax/lang/model/type/TypeVariable;
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 114
    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 115
    .local v1, "typeVariableDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 117
    .local v2, "upperBound":Ljavax/lang/model/element/AnnotationMirror;
    iget-boolean v3, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->omitSubtypingCheck:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v3, v2, p4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 120
    :cond_1
    return-void

    .line 108
    .end local v0    # "typeVar":Ljavax/lang/model/type/TypeVariable;
    .end local v1    # "typeVariableDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v2    # "upperBound":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inferred value should not be missing annotations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public applyInferredType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "inferredTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")V"
        }
    .end annotation

    .line 50
    .local p2, "inferredSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-nez p2, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    invoke-interface {p3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 56
    :goto_0
    invoke-interface {p3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    move-object v0, p3

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    .line 57
    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    move-object v0, p3

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p3

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 62
    .local v1, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v2, p2, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 64
    .local v2, "inferred":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, p1, v2, p3, v1}, Lorg/checkerframework/framework/type/DefaultInferredTypesApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 65
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "inferred":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 66
    :cond_2
    return-void
.end method
