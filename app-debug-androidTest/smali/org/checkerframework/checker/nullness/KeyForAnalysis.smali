.class public Lorg/checkerframework/checker/nullness/KeyForAnalysis;
.super Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
.source "KeyForAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
        "Lorg/checkerframework/checker/nullness/KeyForValue;",
        "Lorg/checkerframework/checker/nullness/KeyForStore;",
        "Lorg/checkerframework/checker/nullness/KeyForTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;Ljava/util/List;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "factory"    # Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/checker/nullness/KeyForValue;",
            ">;>;)V"
        }
    .end annotation

    .line 28
    .local p3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/checker/nullness/KeyForValue;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;Ljava/util/List;I)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "factory"    # Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;
    .param p4, "maxCountBeforeWidening"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/checker/nullness/KeyForValue;",
            ">;>;I)V"
        }
    .end annotation

    .line 21
    .local p3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/checker/nullness/KeyForValue;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/checker/nullness/KeyForValue;
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
            "Lorg/checkerframework/checker/nullness/KeyForValue;"
        }
    .end annotation

    .line 45
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnalysis;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-static {p1, p2, v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->validateSet(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/QualifierHierarchy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lorg/checkerframework/checker/nullness/KeyForValue;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/checker/nullness/KeyForValue;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V

    return-object v0
.end method

.method public bridge synthetic createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/KeyForAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/checker/nullness/KeyForValue;

    move-result-object p1

    return-object p1
.end method

.method public createCopiedStore(Lorg/checkerframework/checker/nullness/KeyForStore;)Lorg/checkerframework/checker/nullness/KeyForStore;
    .locals 1
    .param p1, "store"    # Lorg/checkerframework/checker/nullness/KeyForStore;

    .line 38
    new-instance v0, Lorg/checkerframework/checker/nullness/KeyForStore;

    invoke-direct {v0, p1}, Lorg/checkerframework/checker/nullness/KeyForStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    return-object v0
.end method

.method public bridge synthetic createCopiedStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 14
    check-cast p1, Lorg/checkerframework/checker/nullness/KeyForStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/KeyForAnalysis;->createCopiedStore(Lorg/checkerframework/checker/nullness/KeyForStore;)Lorg/checkerframework/checker/nullness/KeyForStore;

    move-result-object p1

    return-object p1
.end method

.method public createEmptyStore(Z)Lorg/checkerframework/checker/nullness/KeyForStore;
    .locals 1
    .param p1, "sequentialSemantics"    # Z

    .line 33
    new-instance v0, Lorg/checkerframework/checker/nullness/KeyForStore;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/nullness/KeyForStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    return-object v0
.end method

.method public bridge synthetic createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/KeyForAnalysis;->createEmptyStore(Z)Lorg/checkerframework/checker/nullness/KeyForStore;

    move-result-object p1

    return-object p1
.end method
