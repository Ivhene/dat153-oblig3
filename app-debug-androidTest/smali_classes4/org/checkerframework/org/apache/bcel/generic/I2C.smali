.class public Lorg/checkerframework/org/apache/bcel/generic/I2C;
.super Lorg/checkerframework/org/apache/bcel/generic/ConversionInstruction;
.source "I2C.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const/16 v0, 0x92

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConversionInstruction;-><init>(S)V

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 45
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 47
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 48
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitConversionInstruction(Lorg/checkerframework/org/apache/bcel/generic/ConversionInstruction;)V

    .line 49
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitI2C(Lorg/checkerframework/org/apache/bcel/generic/I2C;)V

    .line 50
    return-void
.end method
