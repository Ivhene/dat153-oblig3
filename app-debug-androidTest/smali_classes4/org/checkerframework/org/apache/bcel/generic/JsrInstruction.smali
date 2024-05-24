.class public abstract Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
.source "JsrInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/UnconditionalBranch;
.implements Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;


# annotations
.annotation runtime Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;-><init>()V

    .line 41
    return-void
.end method

.method constructor <init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 0
    .param p1, "opcode"    # S
    .param p2, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;-><init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 48
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->physicalSuccessor()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0
.end method

.method public physicalSuccessor()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 4

    .line 65
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 67
    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 72
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_1
    move-object v1, v0

    .line 75
    .local v1, "toThis":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    :goto_2
    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    if-eq v2, p0, :cond_3

    goto :goto_2

    .line 78
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "physicalSuccessor() called on a shared JsrInstruction."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_4
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    return-object v2
.end method
