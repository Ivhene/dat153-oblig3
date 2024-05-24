.class public abstract Lorg/checkerframework/javacutil/AbstractTypeProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "AbstractTypeProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;
    }
.end annotation


# static fields
.field private static hasInvokedTypeProcessingOver:Z


# instance fields
.field private final elements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Name;",
            ">;"
        }
    .end annotation
.end field

.field private hasInvokedTypeProcessingStart:Z

.field private final listener:Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->hasInvokedTypeProcessingOver:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->elements:Ljava/util/Set;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->hasInvokedTypeProcessingStart:Z

    .line 83
    new-instance v0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;-><init>(Lorg/checkerframework/javacutil/AbstractTypeProcessor;Lorg/checkerframework/javacutil/AbstractTypeProcessor$1;)V

    iput-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->listener:Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    .line 62
    iget-boolean v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->hasInvokedTypeProcessingStart:Z

    return v0
.end method

.method static synthetic access$102(Lorg/checkerframework/javacutil/AbstractTypeProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/javacutil/AbstractTypeProcessor;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->hasInvokedTypeProcessingStart:Z

    return p1
.end method

.method static synthetic access$200(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    .line 62
    iget-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 62
    sget-boolean v0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->hasInvokedTypeProcessingOver:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 62
    sput-boolean p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->hasInvokedTypeProcessingOver:Z

    return p0
.end method

.method static synthetic access$400(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    .line 62
    iget-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->elements:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    .line 62
    iget-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 4
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 96
    invoke-static {p1}, Lcom/sun/source/util/JavacTask;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/JavacTask;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->listener:Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;

    invoke-virtual {v0, v1}, Lcom/sun/source/util/JavacTask;->addTaskListener(Lcom/sun/source/util/TaskListener;)V

    .line 97
    iget-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 98
    .local v0, "ctx":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v1

    .line 99
    .local v1, "compiler":Lcom/sun/tools/javac/main/JavaCompiler;
    iget-object v2, v1, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStopPolicyIfNoError:Lcom/sun/tools/javac/comp/CompileStates$CompileState;

    sget-object v3, Lcom/sun/tools/javac/comp/CompileStates$CompileState;->FLOW:Lcom/sun/tools/javac/comp/CompileStates$CompileState;

    .line 100
    invoke-static {v2, v3}, Lcom/sun/tools/javac/comp/CompileStates$CompileState;->max(Lcom/sun/tools/javac/comp/CompileStates$CompileState;Lcom/sun/tools/javac/comp/CompileStates$CompileState;)Lcom/sun/tools/javac/comp/CompileStates$CompileState;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStopPolicyIfNoError:Lcom/sun/tools/javac/comp/CompileStates$CompileState;

    .line 101
    iget-object v2, v1, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStopPolicyIfError:Lcom/sun/tools/javac/comp/CompileStates$CompileState;

    sget-object v3, Lcom/sun/tools/javac/comp/CompileStates$CompileState;->FLOW:Lcom/sun/tools/javac/comp/CompileStates$CompileState;

    .line 102
    invoke-static {v2, v3}, Lcom/sun/tools/javac/comp/CompileStates$CompileState;->max(Lcom/sun/tools/javac/comp/CompileStates$CompileState;Lcom/sun/tools/javac/comp/CompileStates$CompileState;)Lcom/sun/tools/javac/comp/CompileStates$CompileState;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/tools/javac/main/JavaCompiler;->shouldStopPolicyIfError:Lcom/sun/tools/javac/comp/CompileStates$CompileState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "ctx":Lcom/sun/tools/javac/util/Context;
    .end local v1    # "compiler":Lcom/sun/tools/javac/main/JavaCompiler;
    .end local p0    # "this":Lorg/checkerframework/javacutil/AbstractTypeProcessor;
    .end local p1    # "env":Ljavax/annotation/processing/ProcessingEnvironment;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 4
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

    .line 112
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

    .line 113
    .local v1, "elem":Ljavax/lang/model/element/TypeElement;
    iget-object v2, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->elements:Ljava/util/Set;

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v1    # "elem":Ljavax/lang/model/element/TypeElement;
    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V
.end method

.method public typeProcessingOver()V
    .locals 0

    .line 145
    return-void
.end method

.method public typeProcessingStart()V
    .locals 0

    .line 123
    return-void
.end method
