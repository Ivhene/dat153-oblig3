.class abstract Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;
.super Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;
.source "IndexedElementAnnotationApplier.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "element"    # Ljavax/lang/model/element/Element;

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract getElementIndex()I
.end method

.method public abstract getTypeCompoundIndex(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)I
.end method

.method protected sift(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;>;"
        }
    .end annotation

    .line 37
    .local p1, "typeCompounds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    nop

    .line 38
    invoke-super {p0, p1}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->sift(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 40
    .local v0, "targetClassToAnnos":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    sget-object v1, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->TARGETED:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 41
    .local v1, "targeted":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    sget-object v2, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->VALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 43
    .local v2, "valid":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;->getElementIndex()I

    move-result v3

    .line 48
    .local v3, "paramIndex":I
    const/4 v4, 0x0

    .line 49
    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 50
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {p0, v5}, Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;->getTypeCompoundIndex(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 51
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-object v0
.end method
