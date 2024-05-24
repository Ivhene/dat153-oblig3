.class public Lorg/checkerframework/dataflow/cfg/CFGProcessor;
.super Lorg/checkerframework/javacutil/BasicTypeProcessor;
.source "CFGProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private classTree:Lcom/sun/source/tree/ClassTree;

.field private final methodName:Ljava/lang/String;

.field private methodTree:Lcom/sun/source/tree/MethodTree;

.field private result:Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

.field private rootTree:Lcom/sun/source/tree/CompilationUnitTree;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lorg/checkerframework/javacutil/BasicTypeProcessor;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->className:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->methodName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->result:Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/dataflow/cfg/CFGProcessor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    .line 21
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/checkerframework/dataflow/cfg/CFGProcessor;Lcom/sun/source/tree/ClassTree;)Lcom/sun/source/tree/ClassTree;
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGProcessor;
    .param p1, "x1"    # Lcom/sun/source/tree/ClassTree;

    .line 21
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->classTree:Lcom/sun/source/tree/ClassTree;

    return-object p1
.end method

.method static synthetic access$200(Lorg/checkerframework/dataflow/cfg/CFGProcessor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    .line 21
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/checkerframework/dataflow/cfg/CFGProcessor;Lcom/sun/source/tree/MethodTree;)Lcom/sun/source/tree/MethodTree;
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGProcessor;
    .param p1, "x1"    # Lcom/sun/source/tree/MethodTree;

    .line 21
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->methodTree:Lcom/sun/source/tree/MethodTree;

    return-object p1
.end method


# virtual methods
.method protected createTreePathScanner(Lcom/sun/source/tree/CompilationUnitTree;)Lcom/sun/source/util/TreePathScanner;
    .locals 1
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            ")",
            "Lcom/sun/source/util/TreePathScanner<",
            "**>;"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->rootTree:Lcom/sun/source/tree/CompilationUnitTree;

    .line 80
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;-><init>(Lorg/checkerframework/dataflow/cfg/CFGProcessor;)V

    return-object v0
.end method

.method public final getCFGProcessResult()Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->result:Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    return-object v0
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 109
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public typeProcessingOver()V
    .locals 4

    .line 65
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->rootTree:Lcom/sun/source/tree/CompilationUnitTree;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    const-string v1, "Root tree is null."

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->result:Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->classTree:Lcom/sun/source/tree/ClassTree;

    if-nez v1, :cond_1

    .line 68
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    const-string v1, "Method tree is null."

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->result:Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->methodTree:Lcom/sun/source/tree/MethodTree;

    if-nez v2, :cond_2

    .line 70
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    const-string v1, "Class tree is null."

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->result:Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    goto :goto_0

    .line 72
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0, v2, v1, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder;->build(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ClassTree;Ljavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v0

    .line 73
    .local v0, "cfg":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;-><init>(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V

    iput-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->result:Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    .line 75
    .end local v0    # "cfg":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    :goto_0
    return-void
.end method
