.class public Lorg/checkerframework/checker/lock/LockAnalysis;
.super Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
.source "LockAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
        "Lorg/checkerframework/framework/flow/CFValue;",
        "Lorg/checkerframework/checker/lock/LockStore;",
        "Lorg/checkerframework/checker/lock/LockTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;Ljava/util/List;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "factory"    # Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            ">;>;)V"
        }
    .end annotation

    .line 26
    .local p3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/framework/flow/CFValue;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;)V

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFValue;

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

    .line 47
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p0, p1, p2}, Lorg/checkerframework/checker/lock/LockAnalysis;->defaultCreateAbstractValue(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v0

    return-object v0
.end method

.method public createCopiedStore(Lorg/checkerframework/checker/lock/LockStore;)Lorg/checkerframework/checker/lock/LockStore;
    .locals 1
    .param p1, "s"    # Lorg/checkerframework/checker/lock/LockStore;

    .line 41
    new-instance v0, Lorg/checkerframework/checker/lock/LockStore;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/lock/LockStore;-><init>(Lorg/checkerframework/checker/lock/LockAnalysis;Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    return-object v0
.end method

.method public bridge synthetic createCopiedStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 20
    check-cast p1, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnalysis;->createCopiedStore(Lorg/checkerframework/checker/lock/LockStore;)Lorg/checkerframework/checker/lock/LockStore;

    move-result-object p1

    return-object p1
.end method

.method public createEmptyStore(Z)Lorg/checkerframework/checker/lock/LockStore;
    .locals 1
    .param p1, "sequentialSemantics"    # Z

    .line 36
    new-instance v0, Lorg/checkerframework/checker/lock/LockStore;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/lock/LockStore;-><init>(Lorg/checkerframework/checker/lock/LockAnalysis;Z)V

    return-object v0
.end method

.method public bridge synthetic createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnalysis;->createEmptyStore(Z)Lorg/checkerframework/checker/lock/LockStore;

    move-result-object p1

    return-object p1
.end method

.method public createTransferFunction()Lorg/checkerframework/checker/lock/LockTransfer;
    .locals 2

    .line 31
    new-instance v0, Lorg/checkerframework/checker/lock/LockTransfer;

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    check-cast v1, Lorg/checkerframework/checker/lock/LockChecker;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/checker/lock/LockTransfer;-><init>(Lorg/checkerframework/checker/lock/LockAnalysis;Lorg/checkerframework/checker/lock/LockChecker;)V

    return-object v0
.end method

.method public bridge synthetic createTransferFunction()Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockAnalysis;->createTransferFunction()Lorg/checkerframework/checker/lock/LockTransfer;

    move-result-object v0

    return-object v0
.end method
