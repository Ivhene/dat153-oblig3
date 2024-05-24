.class Lorg/checkerframework/framework/type/TypeFromClassVisitor;
.super Lorg/checkerframework/framework/type/TypeFromTreeVisitor;
.source "TypeFromClassVisitor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/checkerframework/framework/type/TypeFromTreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromClassVisitor;->visitClass(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 16
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 17
    .local v0, "elt":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 19
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v1, v0, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 21
    return-object v1
.end method
