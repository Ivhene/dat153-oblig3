.class public Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;
.super Ljava/lang/Object;
.source "ConstraintMap.java"


# instance fields
.field private final targetToRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    .line 36
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    .line 37
    .local v1, "target":Ljavax/lang/model/type/TypeVariable;
    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    invoke-direct {v3, v1}, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;-><init>(Ljavax/lang/model/type/TypeVariable;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local v1    # "target":Ljavax/lang/model/type/TypeVariable;
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;)V
    .locals 2
    .param p1, "toCopy"    # Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    .line 42
    iget-object v1, p1, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addPrimaryEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 5
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "qualHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p3, "annos"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 83
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    .line 85
    .local v0, "equalities":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    invoke-virtual {p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 86
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 87
    .local v3, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    iget-object v4, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v4, v3, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public addPrimarySubtypes(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 6
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p3, "annos"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 197
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->subtypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;

    .line 198
    .local v0, "subtypes":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;
    invoke-virtual {p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 199
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 200
    .local v3, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 201
    .local v4, "entries":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v4, :cond_0

    .line 202
    new-instance v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    move-object v4, v5

    .line 203
    iget-object v5, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v5, v3, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 206
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "entries":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto :goto_0

    .line 207
    :cond_1
    return-void
.end method

.method public addPrimarySupertype(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 6
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p3, "annos"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 139
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    .line 140
    .local v0, "supertypes":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;
    invoke-virtual {p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 141
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 142
    .local v3, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 143
    .local v4, "entries":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v4, :cond_0

    .line 144
    new-instance v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    move-object v4, v5

    .line 145
    iget-object v5, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v5, v3, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 148
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "entries":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method public addTargetEquality(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 4
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "equivalent"    # Ljavax/lang/model/type/TypeVariable;
    .param p3, "hierarchies"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 66
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    .line 67
    .local v0, "equalities":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    iget-object v1, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 68
    .local v1, "equivalentTops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v1, :cond_0

    .line 69
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->targets:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v3, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 73
    :goto_0
    return-void
.end method

.method public addTargetSubtype(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 4
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "supertype"    # Ljavax/lang/model/type/TypeVariable;
    .param p3, "hierarchies"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 161
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->subtypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;

    .line 162
    .local v0, "subtypes":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;
    iget-object v1, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->targets:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 163
    .local v1, "subtypesTops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v1, :cond_0

    .line 164
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->targets:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v3, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 168
    :goto_0
    return-void
.end method

.method public addTargetSupertype(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 4
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "subtype"    # Ljavax/lang/model/type/TypeVariable;
    .param p3, "hierarchies"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    .line 104
    .local v0, "supertypes":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;
    iget-object v1, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 105
    .local v1, "supertypeTops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v1, :cond_0

    .line 106
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v3, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 110
    :goto_0
    return-void
.end method

.method public addTypeEqualities(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 4
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "hierarchies"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 216
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    .line 217
    .local v0, "equalities":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    iget-object v1, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 218
    .local v1, "equalityTops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v1, :cond_0

    .line 219
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;->types:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v3, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 223
    :goto_0
    return-void
.end method

.method public addTypeSubtype(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 4
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "hierarchies"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 180
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->subtypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;

    .line 181
    .local v0, "subtypes":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;
    iget-object v1, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->types:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 182
    .local v1, "subtypesTops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v1, :cond_0

    .line 183
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;->types:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v3, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 187
    :goto_0
    return-void
.end method

.method public addTypeSupertype(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)V
    .locals 4
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "hierarchies"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 122
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    iget-object v0, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    .line 123
    .local v0, "supertypes":Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;
    iget-object v1, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 124
    .local v1, "supertypeTops":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-nez v1, :cond_0

    .line 125
    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v3, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 129
    :goto_0
    return-void
.end method

.method public getConstraints(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
    .locals 1
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;

    .line 47
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;

    return-object v0
.end method

.method public getTargets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;->targetToRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
