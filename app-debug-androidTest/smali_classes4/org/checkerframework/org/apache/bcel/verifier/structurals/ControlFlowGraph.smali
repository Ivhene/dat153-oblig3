.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;
.super Ljava/lang/Object;
.source "ControlFlowGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;
    }
.end annotation


# instance fields
.field private final exceptionhandlers:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;

.field private final instructionContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;"
        }
    .end annotation
.end field

.field private final subroutines:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 1
    .param p1, "method_gen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 418
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Z)V

    .line 419
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Z)V
    .locals 6
    .param p1, "method_gen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "enableJustIceCheck"    # Z

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Map;

    .line 428
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Z)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->subroutines:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    .line 429
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->exceptionhandlers:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;

    .line 431
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getInstructionHandles()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 432
    .local v0, "instructionhandles":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 433
    .local v3, "instructionhandle":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Map;

    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    invoke-direct {v5, p0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .end local v3    # "instructionhandle":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    .line 46
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->exceptionhandlers:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    .line 46
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->subroutines:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    return-object v0
.end method


# virtual methods
.method public contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .locals 3
    .param p1, "inst"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 443
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    .line 444
    .local v0, "ic":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    if-eqz v0, :cond_0

    .line 447
    return-object v0

    .line 445
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v2, "InstructionContext requested for an InstructionHandle that\'s not known!"

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public contextsOf([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .locals 3
    .param p1, "insts"    # [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 455
    array-length v0, p1

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    .line 456
    .local v0, "ret":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 457
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v2

    aput-object v2, v0, v1

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getInstructionContexts()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .locals 2

    .line 468
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    .line 469
    .local v0, "ret":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    return-object v1
.end method

.method public isDead(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 477
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->subroutines:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutineOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
