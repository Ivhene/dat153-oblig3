.class public Lorg/checkerframework/checker/nullness/NullnessAnalysis;
.super Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
.source "NullnessAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
        "Lorg/checkerframework/checker/nullness/NullnessValue;",
        "Lorg/checkerframework/checker/nullness/NullnessStore;",
        "Lorg/checkerframework/checker/nullness/NullnessTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljava/util/List;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "factory"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            ">;>;)V"
        }
    .end annotation

    .line 24
    .local p3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/checker/nullness/NullnessValue;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;)V

    .line 25
    return-void
.end method


# virtual methods
.method public createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/checker/nullness/NullnessValue;
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
            "Lorg/checkerframework/checker/nullness/NullnessValue;"
        }
    .end annotation

    .line 40
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnalysis;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-static {p1, p2, v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->validateSet(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/QualifierHierarchy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessValue;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessValue;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V

    return-object v0
.end method

.method public bridge synthetic createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/checker/nullness/NullnessValue;

    move-result-object p1

    return-object p1
.end method

.method public createCopiedStore(Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessStore;
    .locals 1
    .param p1, "s"    # Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 34
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-direct {v0, p1}, Lorg/checkerframework/checker/nullness/NullnessStore;-><init>(Lorg/checkerframework/checker/nullness/NullnessStore;)V

    return-object v0
.end method

.method public bridge synthetic createCopiedStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 17
    check-cast p1, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnalysis;->createCopiedStore(Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessStore;

    move-result-object p1

    return-object p1
.end method

.method public createEmptyStore(Z)Lorg/checkerframework/checker/nullness/NullnessStore;
    .locals 1
    .param p1, "sequentialSemantics"    # Z

    .line 29
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/nullness/NullnessStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    return-object v0
.end method

.method public bridge synthetic createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnalysis;->createEmptyStore(Z)Lorg/checkerframework/checker/nullness/NullnessStore;

    move-result-object p1

    return-object p1
.end method
