.class Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;
.super Ljava/lang/Object;
.source "ControlFlowGraph.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstructionContextImpl"
.end annotation


# instance fields
.field private TAG:I

.field private executionPredecessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;"
        }
    .end annotation
.end field

.field private final inFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final instruction:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private final outFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p2, "inst"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 88
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/List;

    .line 89
    if-eqz p2, :cond_0

    .line 93
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->instruction:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 94
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/Map;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->outFrames:Ljava/util/Map;

    .line 96
    return-void

    .line 90
    :cond_0
    new-instance p1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v0, "Cannot instantiate InstructionContextImpl from NULL."

    invoke-direct {p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private _getSuccessors()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 8

    .line 332
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 333
    .local v1, "empty":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v2, 0x1

    new-array v3, v2, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 335
    .local v3, "single":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    .line 337
    .local v4, "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v5, :cond_2

    .line 338
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutineOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v0

    .line 339
    .local v0, "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;->getEnteringJsrInstructions()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    .line 349
    .local v2, "jsrs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v5, v2

    new-array v5, v5, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 350
    .local v5, "ret":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_0

    .line 351
    aget-object v7, v2, v6

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    aput-object v7, v5, v6

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 353
    .end local v6    # "i":I
    :cond_0
    return-object v5

    .line 341
    .end local v2    # "jsrs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v5    # "ret":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v5, "Asking for successors of a RET in dead code?!"

    invoke-direct {v2, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    .end local v0    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    :cond_2
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    if-eqz v5, :cond_3

    .line 358
    return-object v1

    .line 363
    :cond_3
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/ATHROW;

    if-eqz v5, :cond_4

    .line 364
    return-object v1

    .line 368
    :cond_4
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v5, :cond_5

    .line 369
    move-object v2, v4

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    aput-object v2, v3, v0

    .line 370
    return-object v3

    .line 373
    :cond_5
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;

    if-eqz v5, :cond_6

    .line 374
    move-object v2, v4

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    aput-object v2, v3, v0

    .line 375
    return-object v3

    .line 378
    :cond_6
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v5, :cond_8

    .line 379
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/Select;

    if-eqz v5, :cond_7

    .line 382
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    .line 383
    .local v5, "matchTargets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v6, v5

    add-int/2addr v6, v2

    new-array v6, v6, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 384
    .local v6, "ret":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    move-object v7, v4

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    aput-object v7, v6, v0

    .line 385
    array-length v7, v5

    invoke-static {v5, v0, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    return-object v6

    .line 388
    .end local v5    # "matchTargets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v6    # "ret":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_7
    const/4 v5, 0x2

    new-array v5, v5, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 389
    .local v5, "pair":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    aput-object v6, v5, v0

    .line 390
    move-object v0, v4

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    aput-object v0, v5, v2

    .line 391
    return-object v5

    .line 395
    .end local v5    # "pair":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_8
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    aput-object v2, v3, v0

    .line 396
    return-object v3
.end method

.method private extendMessageWithFlow(Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;)V
    .locals 3
    .param p1, "e"    # Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    .line 278
    const-string v0, "Execution flow:\n"

    .line 279
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execution flow:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getExecutionChain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private getExecutionChain()Ljava/lang/String;
    .locals 4

    .line 264
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;
    .locals 6

    .line 299
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 300
    .local v0, "size":I
    const/4 v1, 0x0

    .line 302
    .local v1, "retcount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 303
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    check-cast v3, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    .line 304
    .local v3, "current":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    .line 305
    .local v4, "currentlast":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v5, :cond_0

    .line 306
    add-int/lit8 v1, v1, 0x1

    .line 308
    :cond_0
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v5, :cond_1

    .line 309
    add-int/lit8 v1, v1, -0x1

    .line 310
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 311
    return-object v3

    .line 302
    .end local v3    # "current":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;
    .end local v4    # "currentlast":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 315
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private mergeInFrames(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;)Z
    .locals 5
    .param p1, "inFrame"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 245
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/Map;

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 246
    .local v0, "inF":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    .line 247
    .local v1, "oldstack":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v2

    .line 249
    .local v2, "oldlocals":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    :try_start_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->merge(Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)V

    .line 250
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->merge(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;)V
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    nop

    .line 255
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 251
    :catch_0
    move-exception v3

    .line 252
    .local v3, "sce":Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;
    invoke-direct {p0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->extendMessageWithFlow(Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;)V

    .line 253
    throw v3
.end method


# virtual methods
.method public execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z
    .locals 7
    .param p1, "inFrame"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .param p3, "icv"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;
    .param p4, "ev"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;",
            ")Z"
        }
    .end annotation

    .line 171
    .local p2, "execPreds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    .local v0, "clone":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/List;

    .line 175
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v1

    const-string v2, "\' part of a subroutine or not?"

    const-string v3, "Huh?! Am I \'"

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutineOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v1

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getTopLevel()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v4

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutineOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v1

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getTopLevel()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v4

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/Map;

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 183
    .local v1, "inF":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    if-nez v1, :cond_4

    .line 184
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/Map;

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-object v1, p1

    goto :goto_2

    .line 188
    :cond_4
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 189
    return v3

    .line 191
    :cond_5
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->mergeInFrames(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 192
    return v3

    .line 199
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v2

    .line 205
    .local v2, "workingFrame":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    :try_start_0
    invoke-virtual {p3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->setFrame(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;)V

    .line 206
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    nop

    .line 218
    invoke-virtual {p4, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;->setFrame(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;)V

    .line 219
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v3, p4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V

    .line 221
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->outFrames:Ljava/util/Map;

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const/4 v3, 0x1

    return v3

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "ce":Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nInstructionHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v5, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nExecution Frame:\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->extendMessageWithFlow(Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;)V

    .line 212
    throw v3
.end method

.method public getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->access$000(Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;->getExceptionHandlers(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public getInFrame()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .locals 5

    .line 142
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v0

    .line 144
    .local v0, "jsr":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 146
    .local v1, "org":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v2

    return-object v2

    .line 147
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inFrame not set! This:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nInFrames: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->instruction:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;)",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;"
        }
    .end annotation

    .line 123
    .local p1, "execChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/List;

    .line 127
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v0

    .line 129
    .local v0, "jsr":Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->outFrames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 131
    .local v1, "org":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    move-result-object v2

    return-object v2

    .line 132
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outFrame not set! This:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nExecutionChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 133
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getExecutionChain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nOutFrames: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->outFrames:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSuccessors()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .locals 2

    .line 321
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->_getSuccessors()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph;->contextsOf([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->TAG:I

    return v0
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .line 107
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->TAG:I

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t[InstructionContext]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method
