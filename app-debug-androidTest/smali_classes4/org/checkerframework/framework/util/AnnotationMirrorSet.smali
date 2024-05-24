.class public Lorg/checkerframework/framework/util/AnnotationMirrorSet;
.super Ljava/lang/Object;
.source "AnnotationMirrorSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljavax/lang/model/element/AnnotationMirror;",
        ">;"
    }
.end annotation


# instance fields
.field private shadowSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 36
    return-void
.end method

.method public static singleElementSet(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .locals 1
    .param p0, "value"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 146
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 147
    .local v0, "newSet":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 148
    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result p1

    return p1
.end method

.method public add(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "annotationMirror"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 71
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 99
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v0, 0x1

    .line 100
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 101
    .local v2, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->add(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    .end local v2    # "a":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 105
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 51
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 89
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 93
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    instance-of v0, p1, Ljavax/lang/model/element/AnnotationMirror;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    move-object v2, p1

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 82
    .local v0, "found":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 84
    .end local v0    # "found":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 125
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    .line 126
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "a":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    .end local v2    # "a":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 131
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 110
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 111
    .local v0, "newSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 112
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    move-object v3, v2

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 117
    iput-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    .line 118
    const/4 v1, 0x1

    return v1

    .line 120
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 66
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->shadowSet:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
