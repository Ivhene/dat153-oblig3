.class public Lorg/checkerframework/org/apache/bcel/generic/ACONST_NULL;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "ACONST_NULL.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 33
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 54
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 55
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;)V

    .line 56
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 57
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitACONST_NULL(Lorg/checkerframework/org/apache/bcel/generic/ACONST_NULL;)V

    .line 58
    return-void
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 40
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    return-object v0
.end method
