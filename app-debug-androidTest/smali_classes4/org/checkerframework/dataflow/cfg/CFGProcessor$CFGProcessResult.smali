.class public Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;
.super Ljava/lang/Object;
.source "CFGProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFGProcessResult"
.end annotation


# instance fields
.field private final controlFlowGraph:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

.field private final errMsg:Ljava/lang/String;

.field private final isSuccess:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "errMsg"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;-><init>(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;ZLjava/lang/String;)V

    .line 137
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V
    .locals 2
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;-><init>(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;ZLjava/lang/String;)V

    .line 128
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;ZLjava/lang/String;)V
    .locals 0
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .param p2, "isSuccess"    # Z
    .param p3, "errMsg"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->controlFlowGraph:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 149
    iput-boolean p2, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->isSuccess:Z

    .line 150
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->errMsg:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public getCFG()Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->controlFlowGraph:Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "getCFG()"
        }
        result = true
    .end annotation

    .line 159
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->isSuccess:Z

    return v0
.end method
