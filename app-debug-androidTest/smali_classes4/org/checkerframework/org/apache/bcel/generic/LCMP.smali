.class public Lorg/checkerframework/org/apache/bcel/generic/LCMP;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "LCMP.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    const/16 v0, 0x94

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 52
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 53
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 54
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 55
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLCMP(Lorg/checkerframework/org/apache/bcel/generic/LCMP;)V

    .line 56
    return-void
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 38
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0
.end method
