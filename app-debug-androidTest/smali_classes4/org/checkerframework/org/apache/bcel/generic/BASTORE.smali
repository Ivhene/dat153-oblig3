.class public Lorg/checkerframework/org/apache/bcel/generic/BASTORE;
.super Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;
.source "BASTORE.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const/16 v0, 0x54

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;-><init>(S)V

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 45
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 47
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 48
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitArrayInstruction(Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;)V

    .line 49
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitBASTORE(Lorg/checkerframework/org/apache/bcel/generic/BASTORE;)V

    .line 50
    return-void
.end method
