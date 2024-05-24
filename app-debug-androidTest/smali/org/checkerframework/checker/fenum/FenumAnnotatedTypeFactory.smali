.class public Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "FenumAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;
    }
.end annotation


# instance fields
.field protected FENUM:Ljavax/lang/model/element/AnnotationMirror;

.field protected FENUM_BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field protected FENUM_UNQUALIFIED:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 28
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 30
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/fenum/qual/FenumBottom;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM_BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 31
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/fenum/qual/Fenum;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM:Ljavax/lang/model/element/AnnotationMirror;

    .line 32
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/fenum/qual/FenumUnqualified;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM_UNQUALIFIED:Ljavax/lang/model/element/AnnotationMirror;

    .line 34
    invoke-virtual {p0}, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->postInit()V

    .line 35
    return-void
.end method


# virtual methods
.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 81
    new-instance v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;-><init>(Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 9
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

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/checkerframework/checker/fenum/qual/FenumTop;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Lorg/checkerframework/checker/fenum/qual/Fenum;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-class v3, Lorg/checkerframework/checker/fenum/qual/FenumUnqualified;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-class v3, Lorg/checkerframework/checker/fenum/qual/FenumBottom;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-class v3, Lorg/checkerframework/checker/fenum/qual/PolyFenum;

    aput-object v3, v0, v1

    .line 45
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->getBundledTypeQualifiers([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 53
    .local v0, "qualSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "quals"

    invoke-virtual {v1, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "qualNames":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "qualDirs"

    invoke-virtual {v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "qualDirectories":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 58
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 59
    .local v7, "qualName":Ljava/lang/String;
    invoke-static {v7}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isBinaryName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 63
    iget-object v8, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadExternalAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v7    # "qualName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 60
    .restart local v7    # "qualName":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/UserError;

    const-string v4, "Malformed qualifier \"%s\" in -Aquals=%s"

    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 68
    .end local v7    # "qualName":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 69
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 70
    .local v6, "dirName":Ljava/lang/String;
    iget-object v7, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

    invoke-virtual {v7, v6}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadExternalAnnotationClassesFromDirectory(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    .end local v6    # "dirName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_2
    return-object v0
.end method
