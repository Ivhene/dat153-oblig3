.class public Lorg/checkerframework/framework/util/GraphQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "GraphQualifierHierarchy.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p1, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .param p2, "bottom"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 20
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected varargs finish(Lorg/checkerframework/framework/type/QualifierHierarchy;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "qualHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p6, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 35
    .local p2, "fullMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local p3, "polyQualifiers":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p4, "tops":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p5, "bottoms":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz p6, :cond_0

    const/4 v0, 0x0

    aget-object v1, p6, v0

    if-eqz v1, :cond_0

    .line 36
    aget-object v0, p6, v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 40
    .local v0, "thebottom":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 41
    .local v1, "allQuals":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 43
    invoke-static {p2, v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->updateMappingToImmutableSet(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Set;)V

    .line 45
    invoke-interface {p4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {p5}, Ljava/util/Set;->clear()V

    .line 48
    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v0    # "thebottom":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "allQuals":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_0
    return-void
.end method

.method public getBottomAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->bottoms:Ljava/util/Set;

    return-object v0
.end method

.method public getTopAnnotations()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->tops:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->tops:Ljava/util/Set;

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 1 possible top qualifier, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->tops:Ljava/util/Set;

    .line 64
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (does the checker know about all type qualifiers?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->tops:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 81
    .local p1, "rhs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "lhs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 88
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const-string v1, "GraphQualifierHierarchy: Type with more than one annotation found: "

    const/4 v2, 0x1

    if-gt v0, v2, :cond_4

    .line 92
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 97
    .local v1, "lhsAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 98
    .local v4, "rhsAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v4, v1}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    return v2

    .line 101
    .end local v4    # "rhsAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 102
    .end local v1    # "lhsAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 103
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_4
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GraphQualifierHierarchy: Empty annotations in lhs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or rhs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method
