.class Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "InterningAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterningTypeAnnotator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    const-class v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    return-void
.end method

.method constructor <init>(Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    .line 193
    iput-object p1, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTypeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    .line 194
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 195
    return-void
.end method


# virtual methods
.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTypeAnnotator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "t"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "p"    # Ljava/lang/Void;

    .line 200
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 201
    .local v0, "elt":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    .line 203
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTypeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1

    .line 201
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
