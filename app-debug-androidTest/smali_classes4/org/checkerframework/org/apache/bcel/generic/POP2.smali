.class public Lorg/checkerframework/org/apache/bcel/generic/POP2;
.super Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;
.source "POP2.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/PopInstruction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;-><init>(S)V

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 44
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 45
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPopInstruction(Lorg/checkerframework/org/apache/bcel/generic/PopInstruction;)V

    .line 46
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackInstruction(Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;)V

    .line 47
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPOP2(Lorg/checkerframework/org/apache/bcel/generic/POP2;)V

    .line 48
    return-void
.end method
