.class public Lorg/checkerframework/common/reflection/DefaultReflectionResolver;
.super Ljava/lang/Object;
.source "DefaultReflectionResolver.java"

# interfaces
.implements Lorg/checkerframework/common/reflection/ReflectionResolver;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MSG_PREFEX_REFLECTION:Ljava/lang/String; = "[Reflection] "


# instance fields
.field private final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field private final debug:Z

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final provider:Lorg/checkerframework/javacutil/AnnotationProvider;

.field private final trees:Lcom/sun/source/util/Trees;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Z)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "methodValProvider"    # Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
    .param p3, "debug"    # Z

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 81
    iput-object p2, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->provider:Lorg/checkerframework/javacutil/AnnotationProvider;

    .line 82
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 83
    invoke-static {v0}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->trees:Lcom/sun/source/util/Trees;

    .line 84
    iput-boolean p3, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debug:Z

    .line 85
    return-void
.end method

.method private checkAgruments(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/VariableElement;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)Z"
        }
    .end annotation

    .line 222
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    .local p2, "arguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 223
    return v2

    .line 226
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 228
    .local v1, "param":Ljavax/lang/model/element/VariableElement;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    .line 229
    .local v3, "arg":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 230
    .local v4, "argType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 231
    .local v5, "paramType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_1

    invoke-interface {v5}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 232
    return v2

    .line 226
    .end local v1    # "param":Ljavax/lang/model/element/VariableElement;
    .end local v3    # "arg":Lcom/sun/source/tree/ExpressionTree;
    .end local v4    # "argType":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "paramType":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private checkMethodAgruments(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 3
    .param p1, "resolvedTree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 211
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 212
    .local v0, "methodDecl":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->checkAgruments(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method private checkNewClassArguments(Lcom/sun/source/tree/NewClassTree;)Z
    .locals 3
    .param p1, "resolvedTree"    # Lcom/sun/source/tree/NewClassTree;

    .line 216
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 217
    .local v0, "methodDecl":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->checkAgruments(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method private debugReflection(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 622
    iget-boolean v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debug:Z

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Reflection] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    :cond_0
    return-void
.end method

.method private getConstructorSymbolsfor(Ljava/lang/String;ILcom/sun/tools/javac/comp/Env;)Ljava/util/List;
    .locals 9
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "paramLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sun/tools/javac/comp/Env<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 530
    .local p3, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    iget-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 531
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v1

    .line 532
    .local v1, "resolve":Lcom/sun/tools/javac/comp/Resolve;
    invoke-static {v0}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v2

    .line 534
    .local v2, "names":Lcom/sun/tools/javac/util/Names;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Symbol;>;"
    invoke-direct {p0, p1, p3, v2, v1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->getSymbol(Ljava/lang/String;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Names;Lcom/sun/tools/javac/comp/Resolve;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 536
    .local v4, "symClass":Lcom/sun/tools/javac/code/Symbol;
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 541
    :cond_0
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->getEnclosedElements()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljavax/lang/model/util/ElementFilter;->constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;

    .line 543
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->getEnclosedElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/code/Symbol;

    .line 545
    .local v6, "s":Lcom/sun/tools/javac/code/Symbol;
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v7, v8, :cond_1

    .line 547
    move-object v7, v6

    check-cast v7, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v7}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v7

    if-ne v7, p2, :cond_1

    .line 548
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    .end local v6    # "s":Lcom/sun/tools/javac/code/Symbol;
    :cond_1
    goto :goto_0

    .line 552
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 553
    const-string v5, "Unable to resolve constructor!"

    invoke-direct {p0, v5}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 555
    :cond_3
    return-object v3
.end method

.method private getCorrectedArgs(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .locals 5
    .param p1, "symbol"    # Lcom/sun/tools/javac/code/Symbol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 390
    .local p2, "args":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_3

    .line 391
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 394
    .local v0, "method":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 395
    .local v1, "diff":I
    if-lez v1, :cond_1

    .line 397
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    .line 398
    .local v2, "origArgSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 399
    rem-int v4, v3, v2

    invoke-virtual {p2, v4}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p2, v4}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p2

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "origArgSize":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_2

    :cond_1
    if-gez v1, :cond_0

    .line 404
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 405
    .local v2, "tmp":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 406
    invoke-virtual {p2, v3}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 408
    .end local v3    # "i":I
    :cond_2
    move-object p2, v2

    .line 411
    .end local v0    # "method":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .end local v1    # "diff":I
    .end local v2    # "tmp":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    :cond_3
    :goto_2
    return-object p2
.end method

.method private getMethodSymbolsfor(Ljava/lang/String;Ljava/lang/String;ILcom/sun/tools/javac/comp/Env;)Ljava/util/List;
    .locals 10
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "paramLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sun/tools/javac/comp/Env<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 485
    .local p4, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    iget-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 486
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v1

    .line 487
    .local v1, "resolve":Lcom/sun/tools/javac/comp/Resolve;
    invoke-static {v0}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v2

    .line 489
    .local v2, "names":Lcom/sun/tools/javac/util/Names;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Symbol;>;"
    invoke-direct {p0, p1, p4, v2, v1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->getSymbol(Ljava/lang/String;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Names;Lcom/sun/tools/javac/comp/Resolve;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    .line 491
    .local v4, "sym":Lcom/sun/tools/javac/code/Symbol;
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 496
    :cond_0
    move-object v5, v4

    check-cast v5, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 497
    .local v5, "classSym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :goto_0
    if-eqz v5, :cond_5

    .line 498
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getEnclosedElements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/code/Symbol;

    .line 500
    .local v7, "s":Lcom/sun/tools/javac/code/Symbol;
    invoke-virtual {v7}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v8, v9, :cond_1

    .line 502
    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v8

    iget-object v9, v7, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v8, v9, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 503
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v8

    if-ne v8, p3, :cond_1

    .line 504
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    .end local v7    # "s":Lcom/sun/tools/javac/code/Symbol;
    :cond_1
    goto :goto_1

    .line 508
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 509
    goto :goto_2

    .line 511
    :cond_3
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    .line 512
    .local v6, "t":Lcom/sun/tools/javac/code/Type;
    sget-object v7, Lcom/sun/tools/javac/code/TypeTag;->CLASS:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/code/Type;->hasTag(Lcom/sun/tools/javac/code/TypeTag;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 513
    goto :goto_2

    .line 515
    :cond_4
    iget-object v7, v6, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v5, v7

    check-cast v5, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 516
    .end local v6    # "t":Lcom/sun/tools/javac/code/Type;
    goto :goto_0

    .line 517
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 520
    :cond_6
    return-object v3
.end method

.method private getMethodVal(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 469
    iget-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->provider:Lorg/checkerframework/javacutil/AnnotationProvider;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/MethodVal;

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationProvider;->getAnnotationMirror(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method private getSymbol(Ljava/lang/String;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Names;Lcom/sun/tools/javac/comp/Resolve;)Lcom/sun/tools/javac/code/Symbol;
    .locals 8
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "names"    # Lcom/sun/tools/javac/util/Names;
    .param p4, "resolve"    # Lcom/sun/tools/javac/comp/Resolve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/comp/Env<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/util/Names;",
            "Lcom/sun/tools/javac/comp/Resolve;",
            ")",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 561
    .local p2, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    :try_start_0
    const-class v0, Lcom/sun/tools/javac/comp/Resolve;

    const-string v1, "loadClass"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/sun/tools/javac/comp/Env;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/sun/tools/javac/util/Name;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/sun/tools/javac/comp/Resolve$RecoveryLoadClass;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 562
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 564
    .local v0, "loadClass":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 568
    nop

    .line 570
    :try_start_1
    new-instance v1, Lorg/checkerframework/common/reflection/DefaultReflectionResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver$$ExternalSyntheticLambda0;-><init>()V

    .line 571
    .local v1, "noRecovery":Lcom/sun/tools/javac/comp/Resolve$RecoveryLoadClass;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {p3, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v1, v2, v7

    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Symbol;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 572
    .end local v1    # "noRecovery":Lcom/sun/tools/javac/comp/Resolve$RecoveryLoadClass;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    const-string v3, "Error in invoking reflective method."

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 565
    .end local v0    # "loadClass":Ljava/lang/reflect/Method;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "Error in obtaining reflective method."

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private glb(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;
    .locals 1
    .param p3, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 608
    .local p1, "set1":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "set2":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBounds(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 609
    :cond_1
    :goto_0
    return-object p2
.end method

.method private isUnknownMethod(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 474
    iget-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->provider:Lorg/checkerframework/javacutil/AnnotationProvider;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/UnknownMethod;

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationProvider;->getAnnotationMirror(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getSymbol$0(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;
    .locals 1
    .param p0, "e"    # Lcom/sun/tools/javac/comp/Env;
    .param p1, "n"    # Lcom/sun/tools/javac/util/Name;

    .line 570
    const/4 v0, 0x0

    return-object v0
.end method

.method private lub(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;
    .locals 1
    .param p3, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 591
    .local p1, "set1":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "set2":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBounds(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 592
    :cond_1
    :goto_0
    return-object p2
.end method

.method private resolveConstructorCall(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 9
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p3, "origResult"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to resolve reflective constructor call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->resolveReflectiveConstructor(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "possibleConstructors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/tree/JCTree$JCNewClass;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    return-object p3

    .line 259
    :cond_0
    const/4 v1, 0x0

    .line 260
    .local v1, "returnLub":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v2, 0x0

    .line 264
    .local v2, "paramsGlb":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 265
    .local v4, "resolvedTree":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved constructor invocation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v4}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->checkNewClassArguments(Lcom/sun/source/tree/NewClassTree;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Spoofed tree\'s arguments did not match declaration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v5

    .line 276
    .local v5, "resolvedResult":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v6, v5, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 279
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    .line 277
    invoke-direct {p0, v1, v6, p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->lub(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v1

    .line 283
    iget-object v6, v5, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 284
    .local v7, "mirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v8

    invoke-direct {p0, v2, v8, p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->glb(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v2

    .line 285
    .end local v7    # "mirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 286
    .end local v4    # "resolvedTree":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    .end local v5    # "resolvedResult":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    :cond_2
    goto :goto_0

    .line 287
    :cond_3
    if-nez v1, :cond_4

    .line 289
    return-object p3

    .line 297
    :cond_4
    iget-object v3, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 298
    iget-object v3, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 301
    if-eqz v2, :cond_5

    .line 302
    iget-object v3, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 303
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 304
    .local v3, "origArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 305
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 308
    .end local v3    # "origArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved annotations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 309
    return-object p3
.end method

.method private resolveMethodCall(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 10
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p3, "origResult"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to resolve reflective method call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->resolveReflectiveMethod(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "possibleMethods":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/MethodInvocationTree;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    return-object p3

    .line 127
    :cond_0
    const/4 v1, 0x0

    .line 128
    .local v1, "returnLub":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v2, 0x0

    .line 129
    .local v2, "receiverGlb":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v3, 0x0

    .line 133
    .local v3, "paramsGlb":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/MethodInvocationTree;

    .line 134
    .local v5, "resolvedTree":Lcom/sun/source/tree/MethodInvocationTree;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolved method invocation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v5}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->checkMethodAgruments(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Spoofed tree\'s arguments did not match declaration"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 140
    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v6

    .line 145
    .local v6, "resolvedResult":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v7, v6, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 148
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    .line 146
    invoke-direct {p0, v1, v7, p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->lub(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v1

    .line 154
    iget-object v7, v6, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v7

    if-nez v7, :cond_2

    .line 157
    nop

    .line 160
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v7

    .line 158
    invoke-direct {p0, v2, v7, p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->glb(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    .line 163
    :cond_2
    iget-object v7, v6, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 166
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    .line 164
    invoke-direct {p0, v2, v7, p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->glb(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v2

    .line 174
    :goto_1
    iget-object v7, v6, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 175
    .local v8, "mirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v9

    invoke-direct {p0, v3, v9, p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->glb(Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v3

    .line 176
    .end local v8    # "mirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_2

    .line 177
    .end local v5    # "resolvedTree":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v6    # "resolvedResult":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    :cond_3
    goto/16 :goto_0

    .line 179
    :cond_4
    if-nez v1, :cond_5

    .line 181
    return-object p3

    .line 190
    :cond_5
    iget-object v4, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 191
    iget-object v4, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 194
    iget-object v4, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 195
    iget-object v4, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 198
    if-eqz v3, :cond_6

    .line 199
    iget-object v4, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 200
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 201
    .local v4, "origArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 202
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 205
    .end local v4    # "origArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolved annotations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 206
    return-object p3
.end method

.method private resolveReflectiveConstructor(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/List;
    .locals 18
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "reflectionFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/tree/JCTree$JCNewClass;",
            ">;"
        }
    .end annotation

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->isReflectiveMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    move-object v2, v1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 426
    .local v2, "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    iget-object v3, v0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v3, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v3

    .line 427
    .local v3, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v3}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v4

    .line 428
    .local v4, "make":Lcom/sun/tools/javac/tree/TreeMaker;
    move-object/from16 v5, p2

    invoke-virtual {v5, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v6

    .line 429
    .local v6, "path":Lcom/sun/source/util/TreePath;
    iget-object v7, v0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual {v7, v6}, Lcom/sun/source/util/Trees;->getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Scope;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/api/JavacScope;

    .line 430
    .local v7, "scope":Lcom/sun/tools/javac/api/JavacScope;
    invoke-virtual {v7}, Lcom/sun/tools/javac/api/JavacScope;->getEnv()Lcom/sun/tools/javac/comp/Env;

    move-result-object v8

    .line 432
    .local v8, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v9, "constructors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/tree/JCTree$JCNewClass;>;"
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->getMethodVal(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v10

    .line 436
    .local v10, "estimate":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v10, :cond_0

    .line 437
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MethodVal is unknown for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 438
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnknownMethod annotation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->isUnknownMethod(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 439
    return-object v9

    .line 442
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MethodVal type system annotations: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 444
    const-class v11, Ljava/lang/String;

    .line 445
    const-string v12, "className"

    const/4 v13, 0x1

    invoke-static {v10, v12, v11, v13}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v11

    .line 446
    .local v11, "listClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v12, Ljava/lang/Integer;

    .line 447
    const-string v14, "params"

    invoke-static {v10, v14, v12, v13}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v12

    .line 449
    .local v12, "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ne v13, v14, :cond_3

    .line 450
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 451
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 452
    .local v14, "className":Ljava/lang/String;
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 455
    .local v15, "paramLength":I
    invoke-direct {v0, v14, v15, v8}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->getConstructorSymbolsfor(Ljava/lang/String;ILcom/sun/tools/javac/comp/Env;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    .line 456
    .local v1, "symbol":Lcom/sun/tools/javac/code/Symbol;
    move-object/from16 v17, v3

    .end local v3    # "context":Lcom/sun/tools/javac/util/Context;
    .local v17, "context":Lcom/sun/tools/javac/util/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolved constructor: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 458
    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v4, v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Create(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 462
    .local v3, "syntTree":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v1    # "symbol":Lcom/sun/tools/javac/code/Symbol;
    .end local v3    # "syntTree":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move-object/from16 v3, v17

    goto :goto_1

    .line 455
    .end local v17    # "context":Lcom/sun/tools/javac/util/Context;
    .local v3, "context":Lcom/sun/tools/javac/util/Context;
    :cond_1
    move-object/from16 v17, v3

    .line 450
    .end local v3    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v14    # "className":Ljava/lang/String;
    .end local v15    # "paramLength":I
    .restart local v17    # "context":Lcom/sun/tools/javac/util/Context;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    goto :goto_0

    .line 465
    .end local v13    # "i":I
    .end local v17    # "context":Lcom/sun/tools/javac/util/Context;
    .restart local v3    # "context":Lcom/sun/tools/javac/util/Context;
    :cond_2
    return-object v9

    .line 449
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 423
    .end local v2    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .end local v3    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v4    # "make":Lcom/sun/tools/javac/tree/TreeMaker;
    .end local v6    # "path":Lcom/sun/source/util/TreePath;
    .end local v7    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .end local v8    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .end local v9    # "constructors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/tree/JCTree$JCNewClass;>;"
    .end local v10    # "estimate":Ljavax/lang/model/element/AnnotationMirror;
    .end local v11    # "listClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private resolveReflectiveMethod(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/List;
    .locals 26
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "reflectionFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            ">;"
        }
    .end annotation

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->isReflectiveMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 321
    move-object v2, v1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 323
    .local v2, "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    iget-object v3, v0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v3, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v3

    .line 324
    .local v3, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v3}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v4

    .line 325
    .local v4, "make":Lcom/sun/tools/javac/tree/TreeMaker;
    move-object/from16 v5, p2

    invoke-virtual {v5, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v6

    .line 326
    .local v6, "path":Lcom/sun/source/util/TreePath;
    iget-object v7, v0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual {v7, v6}, Lcom/sun/source/util/Trees;->getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Scope;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/api/JavacScope;

    .line 327
    .local v7, "scope":Lcom/sun/tools/javac/api/JavacScope;
    invoke-virtual {v7}, Lcom/sun/tools/javac/api/JavacScope;->getEnv()Lcom/sun/tools/javac/comp/Env;

    move-result-object v8

    .line 329
    .local v8, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v9, "methods":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/MethodInvocationTree;>;"
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->isUnknownMethod(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v10

    .line 333
    .local v10, "unknown":Z
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->getMethodVal(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 335
    .local v11, "estimate":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v11, :cond_0

    .line 336
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MethodVal is unknown for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 337
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UnknownMethod annotation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 338
    return-object v9

    .line 341
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MethodVal type system annotations: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 343
    const-class v12, Ljava/lang/String;

    .line 344
    const-string v13, "className"

    const/4 v14, 0x1

    invoke-static {v11, v13, v12, v14}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v12

    .line 345
    .local v12, "listClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v13, Ljava/lang/String;

    .line 346
    const-string v15, "methodName"

    invoke-static {v11, v15, v13, v14}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v13

    .line 347
    .local v13, "listMethodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v15, Ljava/lang/Integer;

    .line 348
    const-string v1, "params"

    invoke-static {v11, v1, v15, v14}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 350
    .local v1, "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ne v14, v15, :cond_7

    .line 351
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 352
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 353
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 354
    .local v15, "className":Ljava/lang/String;
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    .end local v3    # "context":Lcom/sun/tools/javac/util/Context;
    .local v17, "context":Lcom/sun/tools/javac/util/Context;
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 355
    .local v3, "methodName":Ljava/lang/String;
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v18, v1

    .end local v1    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 359
    .local v1, "paramLength":I
    iget-object v5, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v5, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 361
    .local v5, "receiver":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    move-object/from16 v16, v6

    .end local v6    # "path":Lcom/sun/source/util/TreePath;
    .local v16, "path":Lcom/sun/source/util/TreePath;
    iget-object v6, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    iget-object v6, v6, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 364
    .local v6, "args":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    invoke-direct {v0, v15, v3, v1, v8}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->getMethodSymbolsfor(Ljava/lang/String;Ljava/lang/String;ILcom/sun/tools/javac/comp/Env;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v2

    .end local v2    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .local v21, "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    move-object/from16 v2, v20

    check-cast v2, Lcom/sun/tools/javac/code/Symbol;

    .line 365
    .local v2, "symbol":Lcom/sun/tools/javac/code/Symbol;
    move-object/from16 v20, v3

    .end local v3    # "methodName":Ljava/lang/String;
    .local v20, "methodName":Ljava/lang/String;
    iget-object v3, v0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v3

    move-object/from16 v22, v7

    .end local v7    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .local v22, "scope":Lcom/sun/tools/javac/api/JavacScope;
    iget-object v7, v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v23, v8

    .end local v8    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .local v23, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    iget-object v8, v2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-interface {v3, v7, v8}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 366
    move-object/from16 v3, v20

    move-object/from16 v2, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    goto :goto_1

    .line 368
    :cond_1
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    const-wide/16 v24, 0x1

    and-long v7, v7, v24

    const-wide/16 v24, 0x0

    cmp-long v3, v7, v24

    const-string v7, "."

    if-lez v3, :cond_2

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolved public method: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    goto :goto_2

    .line 371
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolved non-public method: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->debugReflection(Ljava/lang/String;)V

    .line 374
    :goto_2
    invoke-virtual {v4, v5, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 375
    .local v3, "method":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    invoke-direct {v0, v2, v6}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->getCorrectedArgs(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 379
    if-lez v1, :cond_3

    invoke-virtual {v4, v3, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v7

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v7

    .line 382
    .local v7, "syntTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    :goto_3
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v2    # "symbol":Lcom/sun/tools/javac/code/Symbol;
    .end local v3    # "method":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .end local v7    # "syntTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    move-object/from16 v3, v20

    move-object/from16 v2, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    goto/16 :goto_1

    .line 364
    .end local v20    # "methodName":Ljava/lang/String;
    .end local v21    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .end local v22    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .end local v23    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .local v2, "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .local v3, "methodName":Ljava/lang/String;
    .local v7, "scope":Lcom/sun/tools/javac/api/JavacScope;
    .restart local v8    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    :cond_4
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 352
    .end local v1    # "paramLength":I
    .end local v2    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v5    # "receiver":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .end local v6    # "args":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    .end local v7    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .end local v8    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .end local v15    # "className":Ljava/lang/String;
    .restart local v21    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .restart local v22    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .restart local v23    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p2

    move-object/from16 v6, v16

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    goto/16 :goto_0

    .line 385
    .end local v14    # "i":I
    .end local v16    # "path":Lcom/sun/source/util/TreePath;
    .end local v17    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v18    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .end local v22    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .end local v23    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .local v1, "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .local v3, "context":Lcom/sun/tools/javac/util/Context;
    .local v6, "path":Lcom/sun/source/util/TreePath;
    .restart local v7    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .restart local v8    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    :cond_5
    return-object v9

    .line 351
    :cond_6
    move-object/from16 v18, v1

    move-object/from16 v21, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v1    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .end local v3    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v6    # "path":Lcom/sun/source/util/TreePath;
    .end local v7    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .end local v8    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .restart local v16    # "path":Lcom/sun/source/util/TreePath;
    .restart local v17    # "context":Lcom/sun/tools/javac/util/Context;
    .restart local v18    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .restart local v22    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .restart local v23    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    goto :goto_4

    .line 350
    .end local v16    # "path":Lcom/sun/source/util/TreePath;
    .end local v17    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v18    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .end local v22    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .end local v23    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .restart local v1    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .restart local v3    # "context":Lcom/sun/tools/javac/util/Context;
    .restart local v6    # "path":Lcom/sun/source/util/TreePath;
    .restart local v7    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .restart local v8    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    :cond_7
    move-object/from16 v18, v1

    move-object/from16 v21, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v1    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .end local v3    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v6    # "path":Lcom/sun/source/util/TreePath;
    .end local v7    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .end local v8    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .restart local v16    # "path":Lcom/sun/source/util/TreePath;
    .restart local v17    # "context":Lcom/sun/tools/javac/util/Context;
    .restart local v18    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .restart local v22    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .restart local v23    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    :goto_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 320
    .end local v4    # "make":Lcom/sun/tools/javac/tree/TreeMaker;
    .end local v9    # "methods":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/MethodInvocationTree;>;"
    .end local v10    # "unknown":Z
    .end local v11    # "estimate":Ljavax/lang/model/element/AnnotationMirror;
    .end local v12    # "listClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "listMethodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "path":Lcom/sun/source/util/TreePath;
    .end local v17    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v18    # "listParamLenghts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "methodInvocation":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .end local v22    # "scope":Lcom/sun/tools/javac/api/JavacScope;
    .end local v23    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public isReflectiveMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 89
    iget-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->provider:Lorg/checkerframework/javacutil/AnnotationProvider;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/Invoke;

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationProvider;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->provider:Lorg/checkerframework/javacutil/AnnotationProvider;

    .line 90
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/NewInstance;

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationProvider;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 89
    :goto_1
    return v0
.end method

.method public resolveReflectiveCall(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 3
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p3, "origResult"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    .line 99
    invoke-virtual {p0, p2}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->isReflectiveMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->provider:Lorg/checkerframework/javacutil/AnnotationProvider;

    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/NewInstance;

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationProvider;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->resolveConstructorCall(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->resolveMethodCall(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
