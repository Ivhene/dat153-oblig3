.class public abstract Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.super Lcom/sun/source/util/SimpleTreeVisitor;
.source "TreeAnnotator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/SimpleTreeVisitor<",
        "Ljava/lang/Void;",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        ">;"
    }
.end annotation


# instance fields
.field protected final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 25
    invoke-direct {p0}, Lcom/sun/source/util/SimpleTreeVisitor;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "mirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 55
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 39
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
