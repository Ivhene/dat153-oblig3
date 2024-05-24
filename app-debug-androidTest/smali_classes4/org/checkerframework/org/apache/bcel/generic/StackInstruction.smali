.class public abstract Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "StackInstruction.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(S)V
    .locals 1
    .param p1, "opcode"    # S

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 40
    return-void
.end method


# virtual methods
.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 46
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-object v0
.end method
