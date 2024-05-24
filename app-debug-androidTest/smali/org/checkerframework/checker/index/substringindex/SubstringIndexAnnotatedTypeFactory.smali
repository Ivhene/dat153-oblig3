.class public Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "SubstringIndexAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;
    }
.end annotation


# instance fields
.field public final BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field public final UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 37
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 29
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/SubstringIndexUnknown;

    .line 30
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 32
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/SubstringIndexBottom;

    .line 33
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 39
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->postInit()V

    .line 40
    return-void
.end method


# virtual methods
.method public convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "qualifier"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 156
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 162
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 163
    .local v0, "ltlQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    iget-object v1, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->convertToSubstringIndexAnnotation(Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method protected createDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .locals 1

    .line 71
    new-instance v0, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 62
    new-instance v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;-><init>(Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 4
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

    .line 51
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/index/qual/SubstringIndexUnknown;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/index/qual/SubstringIndexFor;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/index/qual/SubstringIndexBottom;

    aput-object v3, v1, v2

    .line 52
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 51
    return-object v0
.end method
