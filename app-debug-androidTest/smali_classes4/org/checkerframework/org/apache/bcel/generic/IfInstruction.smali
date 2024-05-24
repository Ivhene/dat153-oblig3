.class public abstract Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
.source "IfInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 0
    .param p1, "opcode"    # S
    .param p2, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;-><init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract negate()Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;
.end method
