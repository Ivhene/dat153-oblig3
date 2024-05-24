.class public Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;
.super Ljava/lang/Object;
.source "SystemGetPropertyHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final env:Ljavax/annotation/processing/ProcessingEnvironment;

.field protected final factory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

.field protected final systemGetProperty:Ljavax/lang/model/element/ExecutableElement;

.field systemProperties:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)V
    .locals 31
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "factory"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Ljava/util/HashSet;

    const-string v3, "java.version"

    const-string v4, "java.vendor"

    const-string v5, "java.vendor.url"

    const-string v6, "java.home"

    const-string v7, "java.vm.specification.version"

    const-string v8, "java.vm.specification.vendor"

    const-string v9, "java.vm.specification.name"

    const-string v10, "java.vm.version"

    const-string v11, "java.vm.vendor"

    const-string v12, "java.vm.name"

    const-string v13, "java.specification.version"

    const-string v14, "java.specification.vendor"

    const-string v15, "java.specification.name"

    const-string v16, "java.class.version"

    const-string v17, "java.class.path"

    const-string v18, "java.library.path"

    const-string v19, "java.io.tmpdir"

    const-string v20, "java.compiler"

    const-string v21, "java.ext.dirs"

    const-string v22, "os.name"

    const-string v23, "os.arch"

    const-string v24, "os.version"

    const-string v25, "file.separator"

    const-string v26, "path.separator"

    const-string v27, "line.separator"

    const-string v28, "user.name"

    const-string v29, "user.home"

    const-string v30, "user.dir"

    filled-new-array/range {v3 .. v30}, [Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->systemProperties:Ljava/util/Collection;

    .line 71
    iput-object v1, v0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 72
    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->factory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 74
    const-class v3, Ljava/lang/System;

    .line 75
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getProperty"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    iput-object v3, v0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->systemGetProperty:Ljavax/lang/model/element/ExecutableElement;

    .line 76
    return-void
.end method


# virtual methods
.method public handle(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "method"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 79
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->systemGetProperty:Ljavax/lang/model/element/ExecutableElement;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 83
    .local v1, "arg":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    .line 84
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/LiteralTree;

    invoke-interface {v2}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "literal":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->systemProperties:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 87
    .local v3, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->factory:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 81
    .end local v1    # "arg":Lcom/sun/source/tree/ExpressionTree;
    .end local v2    # "literal":Ljava/lang/String;
    .end local v3    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 91
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :cond_1
    :goto_0
    return-void
.end method
