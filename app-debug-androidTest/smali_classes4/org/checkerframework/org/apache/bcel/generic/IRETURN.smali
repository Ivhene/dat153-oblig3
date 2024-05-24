.class public Lorg/checkerframework/org/apache/bcel/generic/IRETURN;
.super Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;
.source "IRETURN.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const/16 v0, 0xac

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;-><init>(S)V

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 45
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 47
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 48
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitReturnInstruction(Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;)V

    .line 49
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitIRETURN(Lorg/checkerframework/org/apache/bcel/generic/IRETURN;)V

    .line 50
    return-void
.end method
