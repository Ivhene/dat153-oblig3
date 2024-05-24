.class public interface abstract Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
.super Ljava/lang/Object;
.source "QualifierPolymorphism.java"


# direct methods
.method public static getPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p0, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 26
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 27
    return-object v0

    .line 29
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 30
    .local v1, "qualElt":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 31
    .local v3, "am":Ljavax/lang/model/element/AnnotationMirror;
    const-class v4, Lorg/checkerframework/framework/qual/PolymorphicQualifier;

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    return-object v3

    .line 34
    .end local v3    # "am":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 35
    :cond_2
    return-object v0
.end method

.method public static getPolymorphicQualifierElement(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Name;
    .locals 3
    .param p0, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 59
    invoke-static {p0}, Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;->getPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 63
    .local v0, "poly":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_0
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v1

    .line 67
    .local v1, "ret":Ljavax/lang/model/element/Name;
    return-object v1
.end method

.method public static hasPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 40
    invoke-static {p0}, Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;->getPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract resolve(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
.end method

.method public abstract resolve(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
.end method

.method public abstract resolve(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
.end method
