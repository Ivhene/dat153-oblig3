.class public Lorg/checkerframework/framework/util/AnnotationMirrorMap;
.super Ljava/lang/Object;
.source "AnnotationMirrorMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljavax/lang/model/element/AnnotationMirror;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final shadowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "+TV;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    .local p1, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;+TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->putAll(Ljava/util/Map;)V

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 109
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 56
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    instance-of v0, p1, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 65
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "TV;>;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    instance-of v0, p1, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 73
    .local v0, "keyAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 77
    .end local v0    # "keyAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    iget-object v1, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "TV;)TV;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "pre":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "+TV;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/AnnotationMirror;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/AnnotationMirror;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/AnnotationMirror;+TV;>;"
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    instance-of v0, p1, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    .line 92
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 93
    .local v0, "keyAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 97
    .end local v0    # "keyAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 129
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->shadowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
