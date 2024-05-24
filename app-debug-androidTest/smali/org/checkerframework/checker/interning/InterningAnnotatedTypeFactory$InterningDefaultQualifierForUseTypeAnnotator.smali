.class Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;
.source "InterningAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InterningDefaultQualifierForUseTypeAnnotator"
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 90
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/typeannotator/DefaultQualifierForUseTypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 91
    return-void
.end method


# virtual methods
.method public bridge synthetic visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "p"    # Ljava/lang/Void;

    .line 95
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 97
    .local v0, "methodElt":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/interning/qual/InternMethod;

    .line 104
    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-nez v1, :cond_2

    .line 105
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningDefaultQualifierForUseTypeAnnotator;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object v2
.end method
