.class public Lorg/checkerframework/framework/type/SyntheticArrays;
.super Ljava/lang/Object;
.source "SyntheticArrays.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isArrayClone(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "elem"    # Ljavax/lang/model/element/Element;

    .line 22
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 23
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 24
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "clone"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static replaceReturnType(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .locals 1
    .param p0, "methodElem"    # Ljavax/lang/model/element/Element;
    .param p1, "newReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 35
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 36
    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 37
    .local v0, "method":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iput-object p1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->returnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 38
    return-object v0
.end method
