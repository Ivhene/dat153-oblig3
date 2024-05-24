.class public abstract Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
.source "GotoInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/UnconditionalBranch;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;-><init>()V

    .line 37
    return-void
.end method

.method constructor <init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 0
    .param p1, "opcode"    # S
    .param p2, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;-><init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 29
    return-void
.end method
