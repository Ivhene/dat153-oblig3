.class public Lorg/checkerframework/org/apache/bcel/generic/LALOAD;
.super Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;
.source "LALOAD.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;-><init>(S)V

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 45
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 47
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 48
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitArrayInstruction(Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;)V

    .line 49
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLALOAD(Lorg/checkerframework/org/apache/bcel/generic/LALOAD;)V

    .line 50
    return-void
.end method
