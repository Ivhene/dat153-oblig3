.class public Lorg/checkerframework/org/apache/bcel/generic/LMUL;
.super Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;
.source "LMUL.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;-><init>(S)V

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 44
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 45
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 47
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitArithmeticInstruction(Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;)V

    .line 48
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLMUL(Lorg/checkerframework/org/apache/bcel/generic/LMUL;)V

    .line 49
    return-void
.end method