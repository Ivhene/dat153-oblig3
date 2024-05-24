.class public Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "ClassValAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;,
        Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;
    }
.end annotation


# instance fields
.field protected final CLASSVAL_TOP:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 54
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 45
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/reflection/qual/UnknownClass;

    .line 46
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->CLASSVAL_TOP:Ljavax/lang/model/element/AnnotationMirror;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->postInit()V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
    .param p1, "x1"    # Ljava/util/List;

    .line 43
    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->createClassBound(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
    .param p1, "x1"    # Ljava/util/List;

    .line 43
    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->createClassVal(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method private createClassBound(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 78
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/reflection/qual/ClassBound;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 80
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 81
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private createClassVal(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 71
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/reflection/qual/ClassVal;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 73
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 74
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 100
    new-instance v0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;-><init>(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

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

    .line 62
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/common/reflection/qual/UnknownClass;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/common/reflection/qual/ClassVal;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/common/reflection/qual/ClassBound;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/checkerframework/common/reflection/qual/ClassValBottom;

    aput-object v3, v1, v2

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 199
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;-><init>(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method

.method public getClassNamesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 3
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    const-class v0, Lorg/checkerframework/common/reflection/qual/ClassBound;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/checkerframework/common/reflection/qual/ClassVal;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 93
    :cond_1
    :goto_0
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "value"

    invoke-static {p1, v2, v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
