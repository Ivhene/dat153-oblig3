.class public Lorg/checkerframework/org/apache/bcel/generic/DCMPG;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "DCMPG.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    const/16 v0, 0x98

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 30
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 49
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 50
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 51
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 52
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitDCMPG(Lorg/checkerframework/org/apache/bcel/generic/DCMPG;)V

    .line 53
    return-void
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 36
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0
.end method