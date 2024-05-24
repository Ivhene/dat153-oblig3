.class public Lorg/checkerframework/org/apache/bcel/generic/DUP2;
.super Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;
.source "DUP2.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const/16 v0, 0x5c

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;-><init>(S)V

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
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;)V

    .line 45
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackInstruction(Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;)V

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitDUP2(Lorg/checkerframework/org/apache/bcel/generic/DUP2;)V

    .line 47
    return-void
.end method
