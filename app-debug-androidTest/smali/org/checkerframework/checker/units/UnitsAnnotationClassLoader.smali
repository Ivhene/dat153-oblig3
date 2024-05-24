.class public Lorg/checkerframework/checker/units/UnitsAnnotationClassLoader;
.super Lorg/checkerframework/framework/type/AnnotationClassLoader;
.source "UnitsAnnotationClassLoader.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 14
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected isSupportedAnnotationClass(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 30
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsAnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 31
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 35
    .local v1, "initialResult":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 41
    .local v3, "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    const-class v4, Lorg/checkerframework/checker/units/qual/UnitsMultiple;

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const/4 v2, 0x0

    return v2

    .line 44
    .end local v3    # "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
