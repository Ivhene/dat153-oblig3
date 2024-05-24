.class public Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;
.super Ljava/lang/Object;
.source "Analyzer.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/Opcodes;


# instance fields
.field private frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

.field private handlers:[Ljava/util/List;

.field private indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

.field private interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

.field private jsr:Z

.field private n:I

.field private queue:[I

.field private queued:[Z

.field private subroutines:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

.field private top:I


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;)V
    .locals 0
    .param p1, "interpreter"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    .line 83
    return-void
.end method

.method private merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;[Z)V
    .locals 6
    .param p1, "insn"    # I
    .param p2, "beforeJSR"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .param p3, "afterRET"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .param p4, "subroutineBeforeJSR"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .param p5, "access"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 382
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->n:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_4

    .line 386
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    aget-object v0, v0, p1

    .line 387
    .local v0, "oldFrame":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->subroutines:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    aget-object v2, v2, p1

    .line 388
    .local v2, "oldSubroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    const/4 v3, 0x0

    .line 390
    .local v3, "changes":Z
    invoke-virtual {p3, p2, p5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;[Z)Z

    .line 392
    if-nez v0, :cond_0

    .line 393
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->newFrame(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    move-result-object v5

    aput-object v5, v4, p1

    .line 394
    const/4 v3, 0x1

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v0, p3, p5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;[Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 399
    :goto_0
    invoke-virtual {p0, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->newControlFlowEdge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)V

    .line 401
    if-nez v2, :cond_1

    .line 402
    if-eqz p4, :cond_2

    .line 403
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->subroutines:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    invoke-virtual {p4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->copy()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    move-result-object v5

    aput-object v5, v4, p1

    .line 404
    const/4 v3, 0x1

    goto :goto_1

    .line 407
    :cond_1
    if-eqz p4, :cond_2

    .line 408
    iget-boolean v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->jsr:Z

    xor-int/2addr v4, v1

    invoke-virtual {v2, p4, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 411
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->queued:[Z

    aget-boolean v5, v4, p1

    if-nez v5, :cond_3

    .line 412
    aput-boolean v1, v4, p1

    .line 413
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->queue:[I

    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->top:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->top:I

    aput p1, v1, v4

    .line 415
    :cond_3
    return-void

    .line 383
    .end local v0    # "oldFrame":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v2    # "oldSubroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .end local v3    # "changes":Z
    :cond_4
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "Execution can fall off end of the code"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V
    .locals 6
    .param p1, "insn"    # I
    .param p2, "frame"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .param p3, "subroutine"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 342
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->n:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_4

    .line 346
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    aget-object v2, v0, p1

    .line 347
    .local v2, "oldFrame":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->subroutines:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    aget-object v3, v3, p1

    .line 348
    .local v3, "oldSubroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    const/4 v4, 0x0

    .line 350
    .local v4, "changes":Z
    if-nez v2, :cond_0

    .line 351
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->newFrame(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    move-result-object v5

    aput-object v5, v0, p1

    .line 352
    const/4 v0, 0x1

    .end local v4    # "changes":Z
    .local v0, "changes":Z
    goto :goto_0

    .line 354
    .end local v0    # "changes":Z
    .restart local v4    # "changes":Z
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    invoke-virtual {v2, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;)Z

    move-result v0

    or-int/2addr v0, v4

    .line 357
    .end local v4    # "changes":Z
    .restart local v0    # "changes":Z
    :goto_0
    invoke-virtual {p0, p2, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->newControlFlowEdge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)V

    .line 359
    if-nez v3, :cond_1

    .line 360
    if-eqz p3, :cond_2

    .line 361
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->subroutines:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    invoke-virtual {p3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->copy()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    move-result-object v5

    aput-object v5, v4, p1

    .line 362
    const/4 v0, 0x1

    goto :goto_1

    .line 365
    :cond_1
    if-eqz p3, :cond_2

    .line 366
    iget-boolean v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->jsr:Z

    xor-int/2addr v4, v1

    invoke-virtual {v3, p3, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;Z)Z

    move-result v4

    or-int/2addr v0, v4

    .line 369
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->queued:[Z

    aget-boolean v5, v4, p1

    if-nez v5, :cond_3

    .line 370
    aput-boolean v1, v4, p1

    .line 371
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->queue:[I

    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->top:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->top:I

    aput p1, v1, v4

    .line 373
    :cond_3
    return-void

    .line 343
    .end local v0    # "changes":Z
    .end local v2    # "oldFrame":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "oldSubroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    :cond_4
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "Execution can fall off end of the code"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public analyze(Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;)[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .locals 27
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "m"    # Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 100
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v9, ": "

    const-string v10, "Error at instruction "

    iget-object v0, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->n:I

    .line 101
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    iget v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->n:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;-><init>(I)V

    iput-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    .line 102
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->n:I

    new-array v1, v0, [Ljava/util/List;

    iput-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->handlers:[Ljava/util/List;

    .line 103
    new-array v1, v0, [Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    iput-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    .line 104
    new-array v1, v0, [Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    iput-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->subroutines:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    .line 105
    new-array v1, v0, [Z

    iput-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->queued:[Z

    .line 106
    new-array v0, v0, [I

    iput-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->queue:[I

    .line 107
    const/4 v0, 0x0

    iput v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->top:I

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->n:I

    if-ge v1, v3, :cond_1

    .line 111
    iget-object v3, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 112
    .local v3, "insn":Ljava/lang/Object;
    instance-of v4, v3, Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;

    if-eqz v4, :cond_0

    .line 113
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;

    iget-object v3, v4, Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 115
    :cond_0
    iget-object v4, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    invoke-virtual {v4, v3, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->put(Ljava/lang/Object;I)V

    .line 110
    .end local v3    # "insn":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 120
    iget-object v3, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;

    .line 121
    .local v3, "tcb":Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;
    iget-object v4, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    iget-object v5, v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v4

    .line 122
    .local v4, "begin":I
    iget-object v5, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    iget-object v6, v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->end:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v5

    .line 123
    .local v5, "end":I
    move v6, v4

    .local v6, "j":I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 124
    iget-object v11, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->handlers:[Ljava/util/List;

    aget-object v11, v11, v6

    .line 125
    .local v11, "insnHandlers":Ljava/util/List;
    if-nez v11, :cond_2

    .line 126
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 127
    iget-object v12, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->handlers:[Ljava/util/List;

    aput-object v11, v12, v6

    .line 129
    :cond_2
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v11    # "insnHandlers":Ljava/util/List;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 119
    .end local v3    # "tcb":Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;
    .end local v4    # "begin":I
    .end local v5    # "end":I
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    .end local v1    # "i":I
    :cond_4
    iget v1, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxLocals:I

    iget v3, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxStack:I

    invoke-virtual {v7, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->newFrame(II)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    move-result-object v11

    .line 136
    .local v11, "current":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    iget v1, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxLocals:I

    iget v3, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxStack:I

    invoke-virtual {v7, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->newFrame(II)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    move-result-object v12

    .line 137
    .local v12, "handler":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    iget-object v1, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v13

    .line 138
    .local v13, "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    const/4 v1, 0x0

    .line 139
    .local v1, "local":I
    iget v3, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->access:I

    and-int/lit8 v3, v3, 0x8

    const-string v14, ";"

    const-string v15, "L"

    if-nez v3, :cond_5

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v3

    .line 141
    .local v3, "ctype":Lorg/checkerframework/org/objectweb/asmx/Type;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "local":I
    .local v4, "local":I
    iget-object v5, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    invoke-interface {v5, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v5

    invoke-virtual {v11, v1, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    move v1, v4

    goto :goto_3

    .line 139
    .end local v3    # "ctype":Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v4    # "local":I
    .restart local v1    # "local":I
    :cond_5
    move-object/from16 v6, p1

    .line 143
    :goto_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v13

    if-ge v3, v4, :cond_7

    .line 144
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "local":I
    .restart local v4    # "local":I
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    aget-object v5, v13, v3

    invoke-interface {v0, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 145
    aget-object v0, v13, v3

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 146
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "local":I
    .local v0, "local":I
    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    move v1, v0

    goto :goto_5

    .line 145
    .end local v0    # "local":I
    .restart local v4    # "local":I
    :cond_6
    move v1, v4

    .line 143
    .end local v4    # "local":I
    .restart local v1    # "local":I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    move v5, v1

    .line 149
    .end local v1    # "local":I
    .end local v3    # "i":I
    .local v5, "local":I
    :goto_6
    iget v0, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxLocals:I

    if-ge v5, v0, :cond_8

    .line 150
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "local":I
    .restart local v1    # "local":I
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    move v5, v1

    goto :goto_6

    .line 152
    .end local v1    # "local":I
    .restart local v5    # "local":I
    :cond_8
    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {v7, v0, v11, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V

    .line 155
    :goto_7
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->top:I

    if-lez v0, :cond_1e

    .line 156
    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->queue:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->top:I

    aget v3, v1, v0

    .line 157
    .local v3, "insn":I
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    aget-object v2, v0, v3

    .line 158
    .local v2, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->subroutines:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    aget-object v1, v0, v3

    .line 159
    .local v1, "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->queued:[Z

    move-object/from16 v17, v13

    const/4 v13, 0x0

    .end local v13    # "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    .local v17, "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    aput-boolean v13, v0, v3

    .line 162
    :try_start_0
    iget-object v0, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;
    :try_end_0
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1b

    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "o":Ljava/lang/Object;
    iput-boolean v13, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->jsr:Z

    .line 165
    instance-of v4, v0, Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;
    :try_end_1
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1b

    if-eqz v4, :cond_9

    .line 166
    add-int/lit8 v4, v3, 0x1

    :try_start_2
    invoke-direct {v7, v4, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V
    :try_end_2
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v20, v0

    move-object/from16 v19, v2

    move/from16 v16, v5

    move-object/from16 v22, v9

    move-object/from16 v25, v10

    const/16 v23, 0x0

    move v10, v3

    goto/16 :goto_11

    .line 254
    .end local v0    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v22, v9

    move-object/from16 v25, v10

    move-object v5, v2

    move v10, v3

    goto/16 :goto_15

    .line 251
    :catch_1
    move-exception v0

    move/from16 v16, v5

    move-object v6, v9

    move-object v4, v10

    move-object v5, v2

    move v10, v3

    goto/16 :goto_16

    .line 168
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_9
    :try_start_3
    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;

    .line 169
    .local v4, "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    invoke-virtual {v4}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v18

    move/from16 v19, v18

    .line 171
    .local v19, "insnOpcode":I
    invoke-virtual {v11, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->init(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    move-result-object v13

    move-object/from16 v20, v0

    .end local v0    # "o":Ljava/lang/Object;
    .local v20, "o":Ljava/lang/Object;
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    invoke-virtual {v13, v4, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->execute(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;)V

    .line 172
    if-nez v1, :cond_a

    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->copy()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    move-result-object v0
    :try_end_3
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1b

    :goto_8
    move-object v13, v0

    .line 174
    .end local v1    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .local v13, "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    :try_start_4
    instance-of v0, v4, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
    :try_end_4
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_18

    if-eqz v0, :cond_d

    .line 175
    :try_start_5
    move-object v0, v4

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
    :try_end_5
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 176
    .local v0, "j":Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
    const/16 v1, 0xa7

    move-object/from16 v22, v2

    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .local v22, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    move/from16 v2, v19

    .end local v19    # "insnOpcode":I
    .local v2, "insnOpcode":I
    if-eq v2, v1, :cond_b

    const/16 v1, 0xa8

    if-eq v2, v1, :cond_b

    .line 177
    add-int/lit8 v1, v3, 0x1

    :try_start_6
    invoke-direct {v7, v1, v11, v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V
    :try_end_6
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    .line 254
    .end local v0    # "j":Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
    .end local v2    # "insnOpcode":I
    .end local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v20    # "o":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v25, v10

    move-object v1, v13

    move-object/from16 v5, v22

    move v10, v3

    move-object/from16 v22, v9

    goto/16 :goto_15

    .line 251
    :catch_3
    move-exception v0

    move/from16 v16, v5

    move-object v6, v9

    move-object v4, v10

    move-object v1, v13

    move-object/from16 v5, v22

    move v10, v3

    goto/16 :goto_16

    .line 179
    .restart local v0    # "j":Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
    .restart local v2    # "insnOpcode":I
    .restart local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .restart local v20    # "o":Ljava/lang/Object;
    :cond_b
    :goto_9
    const/16 v1, 0xa8

    if-ne v2, v1, :cond_c

    .line 180
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->jsr:Z

    .line 181
    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;
    :try_end_7
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move/from16 v19, v3

    .end local v3    # "insn":I
    .local v19, "insn":I
    :try_start_8
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v1

    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    :try_end_8
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move/from16 v23, v5

    .end local v5    # "local":I
    .local v23, "local":I
    :try_start_9
    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget v6, v8, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxLocals:I

    invoke-direct {v3, v5, v6, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;-><init>(Lorg/checkerframework/org/objectweb/asmx/Label;ILorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;)V

    invoke-direct {v7, v1, v11, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V

    goto :goto_a

    .line 254
    .end local v0    # "j":Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
    .end local v2    # "insnOpcode":I
    .end local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v20    # "o":Ljava/lang/Object;
    .end local v23    # "local":I
    .restart local v5    # "local":I
    :catch_4
    move-exception v0

    move/from16 v23, v5

    move-object/from16 v25, v10

    move-object v1, v13

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    .end local v5    # "local":I
    .restart local v23    # "local":I
    goto/16 :goto_15

    .line 251
    .end local v23    # "local":I
    .restart local v5    # "local":I
    :catch_5
    move-exception v0

    move/from16 v23, v5

    move-object v6, v9

    move-object v4, v10

    move-object v1, v13

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    .end local v5    # "local":I
    .restart local v23    # "local":I
    goto/16 :goto_16

    .line 254
    .end local v19    # "insn":I
    .end local v23    # "local":I
    .restart local v3    # "insn":I
    .restart local v5    # "local":I
    :catch_6
    move-exception v0

    move/from16 v19, v3

    move/from16 v23, v5

    move-object/from16 v25, v10

    move-object v1, v13

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    .end local v3    # "insn":I
    .end local v5    # "local":I
    .restart local v19    # "insn":I
    .restart local v23    # "local":I
    goto/16 :goto_15

    .line 251
    .end local v19    # "insn":I
    .end local v23    # "local":I
    .restart local v3    # "insn":I
    .restart local v5    # "local":I
    :catch_7
    move-exception v0

    move/from16 v19, v3

    move/from16 v23, v5

    move-object v6, v9

    move-object v4, v10

    move-object v1, v13

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    .end local v3    # "insn":I
    .end local v5    # "local":I
    .restart local v19    # "insn":I
    .restart local v23    # "local":I
    goto/16 :goto_16

    .line 185
    .end local v19    # "insn":I
    .end local v23    # "local":I
    .restart local v0    # "j":Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
    .restart local v2    # "insnOpcode":I
    .restart local v3    # "insn":I
    .restart local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .restart local v5    # "local":I
    .restart local v20    # "o":Ljava/lang/Object;
    :cond_c
    move/from16 v19, v3

    move/from16 v23, v5

    .end local v3    # "insn":I
    .end local v5    # "local":I
    .restart local v19    # "insn":I
    .restart local v23    # "local":I
    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v7, v1, v11, v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V
    :try_end_9
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 187
    .end local v0    # "j":Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
    :goto_a
    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move/from16 v16, v23

    const/16 v23, 0x0

    move-object/from16 v22, v9

    goto/16 :goto_10

    .line 254
    .end local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v19    # "insn":I
    .end local v20    # "o":Ljava/lang/Object;
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .local v2, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v3    # "insn":I
    .restart local v5    # "local":I
    :catch_8
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v19, v3

    move/from16 v23, v5

    move-object/from16 v25, v10

    move-object v1, v13

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "insn":I
    .end local v5    # "local":I
    .restart local v19    # "insn":I
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    goto/16 :goto_15

    .line 251
    .end local v19    # "insn":I
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v3    # "insn":I
    .restart local v5    # "local":I
    :catch_9
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v19, v3

    move/from16 v23, v5

    move-object v6, v9

    move-object v4, v10

    move-object v1, v13

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "insn":I
    .end local v5    # "local":I
    .restart local v19    # "insn":I
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    goto/16 :goto_16

    .line 187
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v3    # "insn":I
    .restart local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .restart local v5    # "local":I
    .local v19, "insnOpcode":I
    .restart local v20    # "o":Ljava/lang/Object;
    :cond_d
    move-object/from16 v22, v2

    move/from16 v23, v5

    move/from16 v2, v19

    move/from16 v19, v3

    .end local v3    # "insn":I
    .end local v5    # "local":I
    .local v2, "insnOpcode":I
    .local v19, "insn":I
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    :try_start_a
    instance-of v0, v4, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;
    :try_end_a
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_16

    if-eqz v0, :cond_f

    .line 188
    :try_start_b
    move-object v0, v4

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;

    .line 189
    .local v0, "lsi":Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;
    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->dflt:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v7, v1, v11, v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V

    .line 190
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_b
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 191
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 192
    .local v3, "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    iget-object v5, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    invoke-virtual {v5, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {v7, v5, v11, v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V
    :try_end_b
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 190
    .end local v3    # "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 194
    .end local v0    # "lsi":Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;
    .end local v1    # "j":I
    :cond_e
    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move/from16 v16, v23

    const/16 v23, 0x0

    move-object/from16 v22, v9

    goto/16 :goto_10

    .line 254
    .end local v2    # "insnOpcode":I
    .end local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v20    # "o":Ljava/lang/Object;
    :catch_a
    move-exception v0

    move-object/from16 v25, v10

    move-object v1, v13

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    goto/16 :goto_15

    .line 251
    :catch_b
    move-exception v0

    move-object v6, v9

    move-object v4, v10

    move-object v1, v13

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    goto/16 :goto_16

    .line 194
    .restart local v2    # "insnOpcode":I
    .restart local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .restart local v20    # "o":Ljava/lang/Object;
    :cond_f
    :try_start_c
    instance-of v0, v4, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;
    :try_end_c
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_16

    if-eqz v0, :cond_11

    .line 195
    :try_start_d
    move-object v0, v4

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;

    .line 196
    .local v0, "tsi":Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;
    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->dflt:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v7, v1, v11, v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V

    .line 197
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_c
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_10

    .line 198
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 199
    .restart local v3    # "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    iget-object v5, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    invoke-virtual {v5, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {v7, v5, v11, v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V
    :try_end_d
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 197
    .end local v3    # "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 201
    .end local v0    # "tsi":Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;
    .end local v1    # "j":I
    :cond_10
    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move/from16 v16, v23

    const/16 v23, 0x0

    move-object/from16 v22, v9

    goto/16 :goto_10

    :cond_11
    const/16 v0, 0xa9

    if-ne v2, v0, :cond_14

    .line 202
    if-eqz v13, :cond_13

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    :try_start_e
    iget-object v1, v13, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 206
    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    iget-object v3, v13, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v1

    move/from16 v21, v1

    .line 207
    .local v21, "caller":I
    add-int/lit8 v3, v21, 0x1

    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    aget-object v5, v1, v21

    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->subroutines:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    aget-object v6, v1, v21

    iget-object v1, v13, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z
    :try_end_e
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    move-object/from16 v24, v1

    move-object/from16 v1, p0

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move v9, v2

    .end local v2    # "insnOpcode":I
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .local v8, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .local v9, "insnOpcode":I
    move v2, v3

    move-object/from16 v25, v10

    move/from16 v10, v19

    .end local v19    # "insn":I
    .local v10, "insn":I
    move-object v3, v5

    move-object v5, v4

    const/16 v16, 0x0

    .end local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .local v5, "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    move-object v4, v11

    move-object/from16 v19, v8

    move-object v8, v5

    move/from16 v26, v23

    move-object/from16 v23, v16

    move/from16 v16, v26

    .end local v5    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v23    # "local":I
    .local v8, "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .local v16, "local":I
    .local v19, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    move-object v5, v6

    move-object/from16 v6, v24

    :try_start_f
    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;[Z)V

    .line 205
    .end local v21    # "caller":I
    add-int/lit8 v0, v0, 0x1

    move-object v4, v8

    move v2, v9

    move/from16 v23, v16

    move-object/from16 v9, v22

    move-object/from16 v8, p2

    move-object/from16 v22, v19

    move/from16 v19, v10

    move-object/from16 v10, v25

    goto :goto_d

    .end local v8    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v9    # "insnOpcode":I
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .restart local v2    # "insnOpcode":I
    .restart local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .local v19, "insn":I
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    :cond_12
    move-object v8, v4

    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move/from16 v16, v23

    const/16 v23, 0x0

    move-object/from16 v22, v9

    move v9, v2

    .end local v0    # "i":I
    .end local v2    # "insnOpcode":I
    .end local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v8    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .restart local v9    # "insnOpcode":I
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    .local v19, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    goto/16 :goto_10

    .line 254
    .end local v8    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v9    # "insnOpcode":I
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .end local v20    # "o":Ljava/lang/Object;
    .local v19, "insn":I
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    :catch_c
    move-exception v0

    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    move-object v1, v13

    move-object/from16 v5, v19

    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    .local v19, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    goto/16 :goto_15

    .line 251
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .local v19, "insn":I
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    :catch_d
    move-exception v0

    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    move-object v1, v13

    move-object/from16 v5, v19

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    .local v19, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    goto/16 :goto_16

    .line 203
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .restart local v2    # "insnOpcode":I
    .restart local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .local v19, "insn":I
    .restart local v20    # "o":Ljava/lang/Object;
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    :cond_13
    move-object v8, v4

    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    move v9, v2

    .end local v2    # "insnOpcode":I
    .end local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v8    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .restart local v9    # "insnOpcode":I
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    .local v19, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "RET instruction outside of a sub routine"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    .end local v10    # "insn":I
    .end local v11    # "current":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v12    # "handler":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v13    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .end local v16    # "local":I
    .end local v17    # "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "m":Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;
    throw v0

    .line 254
    .end local v8    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v9    # "insnOpcode":I
    .end local v20    # "o":Ljava/lang/Object;
    .restart local v10    # "insn":I
    .restart local v11    # "current":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v12    # "handler":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v13    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .restart local v16    # "local":I
    .restart local v17    # "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    .restart local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local p1    # "owner":Ljava/lang/String;
    .restart local p2    # "m":Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;
    :catch_e
    move-exception v0

    move-object v1, v13

    move-object/from16 v5, v19

    goto/16 :goto_15

    .line 251
    :catch_f
    move-exception v0

    move-object v1, v13

    move-object/from16 v5, v19

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    goto/16 :goto_16

    .line 213
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .restart local v2    # "insnOpcode":I
    .restart local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .local v19, "insn":I
    .restart local v20    # "o":Ljava/lang/Object;
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    :cond_14
    move-object v8, v4

    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move/from16 v16, v23

    const/16 v23, 0x0

    move-object/from16 v22, v9

    move v9, v2

    .end local v2    # "insnOpcode":I
    .end local v4    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v8    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .restart local v9    # "insnOpcode":I
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    .local v19, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    const/16 v0, 0xbf

    if-eq v9, v0, :cond_1a

    const/16 v0, 0xac

    if-lt v9, v0, :cond_15

    const/16 v0, 0xb1

    if-le v9, v0, :cond_1a

    .line 216
    :cond_15
    if-eqz v13, :cond_19

    .line 217
    instance-of v0, v8, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;

    if-eqz v0, :cond_17

    .line 218
    move-object v0, v8

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;->var:I

    .line 219
    .local v0, "var":I
    iget-object v1, v13, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 220
    const/16 v1, 0x16

    if-eq v9, v1, :cond_16

    const/16 v1, 0x18

    if-eq v9, v1, :cond_16

    const/16 v1, 0x37

    if-eq v9, v1, :cond_16

    const/16 v1, 0x39

    if-ne v9, v1, :cond_18

    .line 224
    :cond_16
    iget-object v1, v13, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    goto :goto_e

    .line 226
    .end local v0    # "var":I
    :cond_17
    instance-of v0, v8, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;

    if-eqz v0, :cond_18

    .line 227
    move-object v0, v8

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;->var:I

    .line 228
    .restart local v0    # "var":I
    iget-object v1, v13, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_f

    .line 226
    .end local v0    # "var":I
    :cond_18
    :goto_e
    nop

    .line 231
    :cond_19
    :goto_f
    add-int/lit8 v3, v10, 0x1

    invoke-direct {v7, v3, v11, v13}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V
    :try_end_f
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 235
    .end local v8    # "insnNode":Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .end local v9    # "insnOpcode":I
    :cond_1a
    :goto_10
    move-object v1, v13

    .end local v13    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .local v1, "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    :goto_11
    :try_start_10
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->handlers:[Ljava/util/List;

    aget-object v0, v0, v10

    .line 236
    .local v0, "insnHandlers":Ljava/util/List;
    if-eqz v0, :cond_1d

    .line 237
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 238
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;

    .line 240
    .local v3, "tcb":Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;
    iget-object v4, v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->type:Ljava/lang/String;
    :try_end_10
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    if-nez v4, :cond_1b

    .line 241
    :try_start_11
    const-string v4, "Ljava/lang/Throwable;"

    invoke-static {v4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v4
    :try_end_11
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_11 .. :try_end_11} :catch_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    .local v4, "type":Lorg/checkerframework/org/objectweb/asmx/Type;
    goto :goto_13

    .line 254
    .end local v0    # "insnHandlers":Ljava/util/List;
    .end local v2    # "i":I
    .end local v3    # "tcb":Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;
    .end local v4    # "type":Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v20    # "o":Ljava/lang/Object;
    :catch_10
    move-exception v0

    move-object/from16 v5, v19

    goto/16 :goto_15

    .line 251
    :catch_11
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    goto/16 :goto_16

    .line 243
    .restart local v0    # "insnHandlers":Ljava/util/List;
    .restart local v2    # "i":I
    .restart local v3    # "tcb":Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;
    .restart local v20    # "o":Ljava/lang/Object;
    :cond_1b
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v4
    :try_end_12
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14

    .line 245
    .restart local v4    # "type":Lorg/checkerframework/org/objectweb/asmx/Type;
    :goto_13
    move-object/from16 v5, v19

    .end local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .local v5, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :try_start_13
    invoke-virtual {v12, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->init(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    .line 246
    invoke-virtual {v12}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->clearStack()V

    .line 247
    iget-object v6, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->interpreter:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;

    invoke-interface {v6, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v6

    invoke-virtual {v12, v6}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 248
    iget-object v6, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    iget-object v8, v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->handler:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v6, v8}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {v7, v6, v12, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->merge(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;)V
    :try_end_13
    .catch Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    .line 237
    .end local v3    # "tcb":Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;
    .end local v4    # "type":Lorg/checkerframework/org/objectweb/asmx/Type;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v19, v5

    goto :goto_12

    .line 254
    .end local v0    # "insnHandlers":Ljava/util/List;
    .end local v2    # "i":I
    .end local v20    # "o":Ljava/lang/Object;
    :catch_12
    move-exception v0

    goto/16 :goto_15

    .line 251
    :catch_13
    move-exception v0

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    goto/16 :goto_16

    .line 237
    .end local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v0    # "insnHandlers":Ljava/util/List;
    .restart local v2    # "i":I
    .restart local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v20    # "o":Ljava/lang/Object;
    :cond_1c
    move-object/from16 v5, v19

    .end local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    goto :goto_14

    .line 236
    .end local v2    # "i":I
    .end local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :cond_1d
    move-object/from16 v5, v19

    .line 257
    .end local v0    # "insnHandlers":Ljava/util/List;
    .end local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v20    # "o":Ljava/lang/Object;
    .restart local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :goto_14
    nop

    .line 258
    .end local v1    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .end local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v10    # "insn":I
    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v9, v22

    move-object/from16 v4, v23

    move-object/from16 v10, v25

    goto/16 :goto_7

    .line 254
    .restart local v1    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .restart local v10    # "insn":I
    .restart local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :catch_14
    move-exception v0

    move-object/from16 v5, v19

    .end local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    goto/16 :goto_15

    .line 251
    .end local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    :catch_15
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    .end local v19    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    goto/16 :goto_16

    .line 254
    .end local v1    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .end local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .restart local v13    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .local v19, "insn":I
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    :catch_16
    move-exception v0

    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    move-object v1, v13

    .end local v19    # "insn":I
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    goto :goto_15

    .line 251
    .end local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .restart local v19    # "insn":I
    .restart local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v23    # "local":I
    :catch_17
    move-exception v0

    move-object/from16 v25, v10

    move/from16 v10, v19

    move-object/from16 v5, v22

    move/from16 v16, v23

    move-object/from16 v22, v9

    move-object v1, v13

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    .end local v19    # "insn":I
    .end local v22    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v23    # "local":I
    .restart local v5    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    goto/16 :goto_16

    .line 254
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .local v2, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .local v3, "insn":I
    .local v5, "local":I
    :catch_18
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v22, v9

    move-object/from16 v25, v10

    move-object v5, v2

    move v10, v3

    move-object v1, v13

    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "insn":I
    .local v5, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    goto :goto_15

    .line 251
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .restart local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v3    # "insn":I
    .local v5, "local":I
    :catch_19
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v22, v9

    move-object/from16 v25, v10

    move-object v5, v2

    move v10, v3

    move-object v1, v13

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "insn":I
    .local v5, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    goto :goto_16

    .end local v10    # "insn":I
    .end local v13    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .end local v16    # "local":I
    .restart local v1    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .restart local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v3    # "insn":I
    .local v5, "local":I
    :catch_1a
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v22, v9

    move-object/from16 v25, v10

    move-object v5, v2

    move v10, v3

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "insn":I
    .local v5, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    goto :goto_16

    .line 254
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .restart local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v3    # "insn":I
    .local v5, "local":I
    :catch_1b
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v22, v9

    move-object/from16 v25, v10

    move-object v5, v2

    move v10, v3

    .line 255
    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "insn":I
    .local v0, "e":Ljava/lang/Exception;
    .local v5, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    :goto_15
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, v22

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .restart local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v3    # "insn":I
    .local v5, "local":I
    :catch_1c
    move-exception v0

    move/from16 v16, v5

    move-object v6, v9

    move-object v4, v10

    move-object v5, v2

    move v10, v3

    .line 252
    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .end local v3    # "insn":I
    .local v0, "e":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
    .local v5, "f":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .restart local v10    # "insn":I
    .restart local v16    # "local":I
    :goto_16
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 260
    .end local v0    # "e":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
    .end local v1    # "subroutine":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .end local v10    # "insn":I
    .end local v16    # "local":I
    .end local v17    # "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    .local v5, "local":I
    .local v13, "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    :cond_1e
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    return-object v0
.end method

.method public getFrames()[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->frames:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    return-object v0
.end method

.method public getHandlers(I)Ljava/util/List;
    .locals 1
    .param p1, "insn"    # I

    .line 298
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->handlers:[Ljava/util/List;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insn"    # Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Analyzer;->indexes:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected newControlFlowEdge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)V
    .locals 0
    .param p1, "frame"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .param p2, "successor"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    .line 333
    return-void
.end method

.method protected newFrame(II)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .locals 1
    .param p1, "nLocals"    # I
    .param p2, "nStack"    # I

    .line 309
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;-><init>(II)V

    return-object v0
.end method

.method protected newFrame(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .locals 1
    .param p1, "src"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    .line 319
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;-><init>(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)V

    return-object v0
.end method
