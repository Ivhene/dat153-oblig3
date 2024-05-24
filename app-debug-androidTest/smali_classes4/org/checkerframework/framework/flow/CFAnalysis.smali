.class public Lorg/checkerframework/framework/flow/CFAnalysis;
.super Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
.source "CFAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
        "Lorg/checkerframework/framework/flow/CFValue;",
        "Lorg/checkerframework/framework/flow/CFStore;",
        "Lorg/checkerframework/framework/flow/CFTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFTransfer;",
            "Lorg/checkerframework/framework/flow/CFAnalysis;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            ">;>;)V"
        }
    .end annotation

    .line 19
    .local p2, "factory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFTransfer;Lorg/checkerframework/framework/flow/CFAnalysis;>;"
    .local p3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/framework/flow/CFValue;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object p1

    return-object p1
.end method

.method public createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFValue;
    .locals 1
    .param p2, "underlyingType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Lorg/checkerframework/framework/flow/CFValue;"
        }
    .end annotation

    .line 35
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAnalysis;->defaultCreateAbstractValue(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCopiedStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 13
    check-cast p1, Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/flow/CFAnalysis;->createCopiedStore(Lorg/checkerframework/framework/flow/CFStore;)Lorg/checkerframework/framework/flow/CFStore;

    move-result-object p1

    return-object p1
.end method

.method public createCopiedStore(Lorg/checkerframework/framework/flow/CFStore;)Lorg/checkerframework/framework/flow/CFStore;
    .locals 1
    .param p1, "s"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 29
    new-instance v0, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/framework/flow/CFStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    return-object v0
.end method

.method public bridge synthetic createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/flow/CFAnalysis;->createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFStore;

    move-result-object p1

    return-object p1
.end method

.method public createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFStore;
    .locals 1
    .param p1, "sequentialSemantics"    # Z

    .line 24
    new-instance v0, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/framework/flow/CFStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    return-object v0
.end method
