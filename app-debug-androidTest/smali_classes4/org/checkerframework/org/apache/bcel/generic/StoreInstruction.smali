.class public abstract Lorg/checkerframework/org/apache/bcel/generic/StoreInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;
.source "StoreInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/PopInstruction;


# direct methods
.method constructor <init>(SS)V
    .locals 0
    .param p1, "canon_tag"    # S
    .param p2, "c_tag"    # S

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;-><init>(SS)V

    .line 35
    return-void
.end method

.method protected constructor <init>(SSI)V
    .locals 0
    .param p1, "opcode"    # S
    .param p2, "c_tag"    # S
    .param p3, "n"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;-><init>(SSI)V

    .line 45
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 58
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 59
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPopInstruction(Lorg/checkerframework/org/apache/bcel/generic/PopInstruction;)V

    .line 60
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 61
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLocalVariableInstruction(Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;)V

    .line 62
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStoreInstruction(Lorg/checkerframework/org/apache/bcel/generic/StoreInstruction;)V

    .line 63
    return-void
.end method