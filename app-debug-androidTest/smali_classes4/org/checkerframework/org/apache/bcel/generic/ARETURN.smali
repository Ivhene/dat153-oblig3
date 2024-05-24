.class public Lorg/checkerframework/org/apache/bcel/generic/ARETURN;
.super Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;
.source "ARETURN.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const/16 v0, 0xb0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;-><init>(S)V

    .line 33
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 47
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 48
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 49
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitReturnInstruction(Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;)V

    .line 50
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitARETURN(Lorg/checkerframework/org/apache/bcel/generic/ARETURN;)V

    .line 51
    return-void
.end method
