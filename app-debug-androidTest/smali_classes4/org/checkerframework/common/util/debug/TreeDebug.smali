.class public Lorg/checkerframework/common/util/debug/TreeDebug;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "TreeDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;
.end annotation


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/util/debug/TreeDebug;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lorg/checkerframework/common/util/debug/TreeDebug;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected createSourceVisitor(Lcom/sun/source/tree/CompilationUnitTree;)Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;
    .locals 1
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 43
    new-instance v0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;

    invoke-direct {v0}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;-><init>()V

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 5
    .param p2, "roundEnv"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 123
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->getRootElements()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 124
    .local v1, "element":Ljavax/lang/model/element/TypeElement;
    iget-object v2, p0, Lorg/checkerframework/common/util/debug/TreeDebug;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v2}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/source/util/Trees;->getPath(Ljavax/lang/model/element/Element;)Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 125
    .local v2, "path":Lcom/sun/source/util/TreePath;
    new-instance v3, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;

    invoke-direct {v3}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v1    # "element":Ljavax/lang/model/element/TypeElement;
    .end local v2    # "path":Lcom/sun/source/util/TreePath;
    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
