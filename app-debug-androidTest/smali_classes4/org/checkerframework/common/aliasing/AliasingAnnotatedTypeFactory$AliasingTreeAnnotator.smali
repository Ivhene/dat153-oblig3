.class public Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "AliasingAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AliasingTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;
    .param p2, "atypeFactory"    # Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    .line 70
    iput-object p1, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingTreeAnnotator;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    .line 71
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingTreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 76
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingTreeAnnotator;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->UNIQUE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 77
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
