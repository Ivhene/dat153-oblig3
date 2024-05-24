.class public Lorg/checkerframework/org/apache/bcel/util/ClassSet;
.super Ljava/lang/Object;
.source "ClassSet.java"


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassSet;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z
    .locals 3
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "result":Z
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassSet;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 43
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassSet;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return v0
.end method

.method public empty()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public getClassNames()[Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public remove(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 2
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 50
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassSet;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public toArray()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 61
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 62
    .local v1, "classes":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    return-object v1
.end method
