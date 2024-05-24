.class public Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessPropagationTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;
.source "NullnessAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NullnessPropagationTreeAnnotator"
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 361
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 362
    return-void
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 357
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessPropagationTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 357
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessPropagationTreeAnnotator;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 376
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessPropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 381
    .local v0, "NONNULL":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 385
    .end local v0    # "NONNULL":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 357
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessPropagationTreeAnnotator;->visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method
