.class public Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "AliasingAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;,
        Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingTreeAnnotator;
    }
.end annotation


# instance fields
.field protected final MAYBE_ALIASED:Ljavax/lang/model/element/AnnotationMirror;

.field protected final MAYBE_LEAKED:Ljavax/lang/model/element/AnnotationMirror;

.field protected final NON_LEAKED:Ljavax/lang/model/element/AnnotationMirror;

.field protected final UNIQUE:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 46
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 33
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/aliasing/qual/MaybeAliased;

    .line 34
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->MAYBE_ALIASED:Ljavax/lang/model/element/AnnotationMirror;

    .line 36
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/aliasing/qual/NonLeaked;

    .line 37
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->NON_LEAKED:Ljavax/lang/model/element/AnnotationMirror;

    .line 39
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/aliasing/qual/Unique;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->UNIQUE:Ljavax/lang/model/element/AnnotationMirror;

    .line 41
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/aliasing/qual/MaybeLeaked;

    .line 42
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->MAYBE_LEAKED:Ljavax/lang/model/element/AnnotationMirror;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->postInit()V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFTransfer;

    move-result-object p1

    return-object p1
.end method

.method public createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFTransfer;",
            ">;)",
            "Lorg/checkerframework/framework/flow/CFTransfer;"
        }
    .end annotation

    .line 64
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFTransfer;>;"
    new-instance v0, Lorg/checkerframework/common/aliasing/AliasingTransfer;

    invoke-direct {v0, p1}, Lorg/checkerframework/common/aliasing/AliasingTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 65
    .local v0, "ret":Lorg/checkerframework/framework/flow/CFTransfer;
    return-object v0
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 88
    new-instance v0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;-><init>(Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/checkerframework/common/aliasing/qual/MaybeLeaked;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getBundledTypeQualifiers([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;
    .locals 4

    .line 83
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingTreeAnnotator;-><init>(Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method

.method protected bridge synthetic createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    move-result-object v0

    return-object v0
.end method
