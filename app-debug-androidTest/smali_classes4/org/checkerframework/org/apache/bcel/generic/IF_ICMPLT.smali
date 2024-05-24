.class public Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;
.super Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;
.source "IF_ICMPLT.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 38
    const/16 v0, 0xa1

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;-><init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 39
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 61
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 62
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitBranchInstruction(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V

    .line 63
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitIfInstruction(Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;)V

    .line 64
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitIF_ICMPLT(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;)V

    .line 65
    return-void
.end method

.method public negate()Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;
    .locals 2

    .line 47
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/IfInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    return-object v0
.end method
