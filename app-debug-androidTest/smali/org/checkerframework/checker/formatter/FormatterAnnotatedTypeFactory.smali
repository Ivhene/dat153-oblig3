.class public Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "FormatterAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;,
        Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;
    }
.end annotation


# instance fields
.field protected final FORMAT:Ljavax/lang/model/element/AnnotationMirror;

.field protected final FORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field protected final INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

.field protected final UNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

.field protected final treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 50
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 34
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/formatter/qual/UnknownFormat;

    .line 35
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->UNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 37
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/formatter/qual/Format;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 39
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/formatter/qual/InvalidFormat;

    .line 40
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 42
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/formatter/qual/FormatBottom;

    .line 43
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 46
    new-instance v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    iput-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 52
    invoke-virtual {p0}, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->postInit()V

    .line 53
    return-void
.end method


# virtual methods
.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 57
    new-instance v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;-><init>(Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 62
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;-><init>(Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method
