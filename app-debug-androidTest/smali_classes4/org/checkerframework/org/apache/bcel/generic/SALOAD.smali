.class public Lorg/checkerframework/org/apache/bcel/generic/SALOAD;
.super Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;
.source "SALOAD.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const/16 v0, 0x35

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;-><init>(S)V

    .line 30
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 43
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 44
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 45
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitArrayInstruction(Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;)V

    .line 47
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitSALOAD(Lorg/checkerframework/org/apache/bcel/generic/SALOAD;)V

    .line 48
    return-void
.end method
