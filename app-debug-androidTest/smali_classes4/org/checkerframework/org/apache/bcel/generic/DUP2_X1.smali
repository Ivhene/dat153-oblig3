.class public Lorg/checkerframework/org/apache/bcel/generic/DUP2_X1;
.super Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;
.source "DUP2_X1.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;-><init>(S)V

    .line 30
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 43
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackInstruction(Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;)V

    .line 44
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitDUP2_X1(Lorg/checkerframework/org/apache/bcel/generic/DUP2_X1;)V

    .line 45
    return-void
.end method
