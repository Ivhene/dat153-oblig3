.class public Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;
.super Ljava/util/LinkedHashMap;
.source "InferenceResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljavax/lang/model/type/TypeVariable;",
        "Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5fea7006a992173aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemainingTargets(Ljava/util/Set;Z)Ljava/util/Set;
    .locals 4
    .param p2, "inferredTypesOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;Z)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;"
        }
    .end annotation

    .line 24
    .local p1, "allTargets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .local v0, "remainingTargets":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljavax/lang/model/type/TypeVariable;>;"
    if-eqz p2, :cond_2

    .line 28
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    .line 29
    .local v2, "target":Ljavax/lang/model/type/TypeVariable;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 32
    .end local v2    # "target":Ljavax/lang/model/type/TypeVariable;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 38
    :goto_1
    return-object v0
.end method

.method public isComplete(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)Z"
        }
    .end annotation

    .line 43
    .local p1, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    .line 44
    .local v1, "target":Ljavax/lang/model/type/TypeVariable;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 46
    .local v2, "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    instance-of v4, v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v4, v4, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 49
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_1

    .line 51
    return v3

    .line 53
    .end local v1    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v2    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_1
    goto :goto_0

    .line 47
    .restart local v1    # "target":Ljavax/lang/model/type/TypeVariable;
    .restart local v2    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_2
    :goto_1
    return v3

    .line 54
    .end local v1    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v2    # "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_3
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public mergeSubordinate(Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)V
    .locals 5
    .param p1, "subordinate"    # Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    .line 114
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v0, "previousKeySet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 116
    invoke-virtual {p1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v1, "remainingSubKeys":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 119
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    .line 120
    .local v3, "target":Ljavax/lang/model/type/TypeVariable;
    invoke-virtual {p0, v3, p1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->mergeTarget(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    .line 121
    .end local v3    # "target":Ljavax/lang/model/type/TypeVariable;
    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    .line 124
    .restart local v3    # "target":Ljavax/lang/model/type/TypeVariable;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v3    # "target":Ljavax/lang/model/type/TypeVariable;
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->resolveChainedTargets()V

    .line 128
    return-void
.end method

.method protected mergeTarget(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    .locals 5
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "subordinate"    # Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;

    .line 135
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 136
    .local v0, "inferred":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    instance-of v1, v0, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    if-eqz v1, :cond_3

    .line 137
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    iget-object v1, v1, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;->target:Ljavax/lang/model/type/TypeVariable;

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->mergeTarget(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;)Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    move-result-object v1

    .line 139
    .local v1, "newType":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 141
    .local v2, "subValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    instance-of v3, v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-object v4

    .line 145
    .end local v2    # "subValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_0
    nop

    .line 160
    return-object v4

    .line 146
    :cond_1
    iget-object v2, v1, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_2

    .line 149
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 150
    .restart local v2    # "subValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    instance-of v3, v2, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v3, :cond_2

    .line 151
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v3, v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 152
    .local v3, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, v1, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 153
    new-instance v4, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v4, v3}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    move-object v1, v4

    .line 156
    .end local v2    # "subValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    .end local v3    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object v1

    .line 163
    .end local v1    # "newType":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    :cond_3
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    return-object v1
.end method

.method public resolveChainedTargets()V
    .locals 11

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 65
    .local v0, "inferredTypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;>;"
    const/4 v1, 0x1

    .line 66
    .local v1, "grew":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 69
    .local v3, "inferred":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeVariable;

    .line 70
    .local v4, "target":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 72
    .local v5, "value":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    instance-of v6, v5, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v6, :cond_0

    .line 73
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 76
    :cond_0
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    .line 77
    .local v6, "currentTarget":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;
    move-object v7, v5

    check-cast v7, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;

    iget-object v7, v7, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;->target:Ljavax/lang/model/type/TypeVariable;

    .line 78
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    .line 80
    .local v7, "equivalentType":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    if-eqz v7, :cond_1

    .line 81
    const/4 v1, 0x1

    .line 82
    iget-object v8, v7, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    .line 83
    .local v8, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v9, v6, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;->additionalAnnotations:Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 85
    new-instance v9, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    invoke-direct {v9, v8}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 86
    .local v9, "newConstraint":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    iget-object v10, v6, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;->target:Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v3    # "inferred":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;>;"
    .end local v4    # "target":Ljavax/lang/model/type/TypeVariable;
    .end local v5    # "value":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    .end local v6    # "currentTarget":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;
    .end local v7    # "equivalentType":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    .end local v8    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v9    # "newConstraint":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
    :cond_1
    :goto_2
    goto :goto_1

    :cond_2
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->putAll(Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public toAtmMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 97
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferenceResult;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;

    .line 99
    .local v3, "inferredValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    instance-of v4, v3, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    if-eqz v4, :cond_0

    .line 100
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeVariable;

    move-object v5, v3

    check-cast v5, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;

    iget-object v5, v5, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;>;"
    .end local v3    # "inferredValue":Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    return-object v0
.end method
