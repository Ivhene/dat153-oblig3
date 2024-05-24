.class public Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "InitializationAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CommitmentTypeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<",
            "****>;)V"
        }
    .end annotation

    .line 670
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTypeAnnotator;"
    .local p2, "atypeFactory":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<****>;"
    iput-object p1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 671
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 672
    return-void
.end method


# virtual methods
.method public bridge synthetic visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 668
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTypeAnnotator;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "t"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "p"    # Ljava/lang/Void;

    .line 676
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTypeAnnotator;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    .line 677
    .local v0, "result":Ljava/lang/Void;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 678
    .local v1, "elem":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_0

    .line 679
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 680
    .local v2, "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    .line 681
    .local v3, "underlyingType":Ljavax/lang/model/type/DeclaredType;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getFreeOrRawAnnotationOfSuperType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 683
    .end local v2    # "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v3    # "underlyingType":Ljavax/lang/model/type/DeclaredType;
    :cond_0
    return-object v0
.end method
