.class public Lorg/checkerframework/framework/util/element/SuperTypeApplier;
.super Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;
.source "SuperTypeApplier.java"


# instance fields
.field private final index:I

.field private final subclassSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/TypeElement;I)V
    .locals 1
    .param p1, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "subclassElement"    # Ljavax/lang/model/element/TypeElement;
    .param p3, "index"    # I

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 68
    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/SuperTypeApplier;->subclassSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 69
    iput p3, p0, Lorg/checkerframework/framework/util/element/SuperTypeApplier;->index:I

    .line 70
    return-void
.end method

.method public static annotateSupers(Ljava/util/List;Ljavax/lang/model/element/TypeElement;)V
    .locals 4
    .param p1, "subtypeElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 28
    .local p0, "supertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 29
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 35
    .local v1, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    add-int/lit8 v2, v0, -0x1

    .line 36
    .local v2, "typeIndex":I
    new-instance v3, Lorg/checkerframework/framework/util/element/SuperTypeApplier;

    invoke-direct {v3, v1, p1, v2}, Lorg/checkerframework/framework/util/element/SuperTypeApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/TypeElement;I)V

    invoke-virtual {v3}, Lorg/checkerframework/framework/util/element/SuperTypeApplier;->extractAndApply()V

    .line 28
    .end local v1    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "typeIndex":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic extractAndApply()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 17
    invoke-super {p0}, Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;->extractAndApply()V

    return-void
.end method

.method public getElementIndex()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/checkerframework/framework/util/element/SuperTypeApplier;->index:I

    return v0
.end method

.method protected getRawTypeAttributes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/SuperTypeApplier;->subclassSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeCompoundIndex(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)I
    .locals 2
    .param p1, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 81
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->getPosition()Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    .line 85
    .local v0, "typeIndex":I
    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method protected handleTargeted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 111
    .local p1, "targeted":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/SuperTypeApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    .line 112
    return-void
.end method

.method protected isAccepted()Z
    .locals 1

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected validTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method
