.class public Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "IntInsnNode.java"


# instance fields
.field public operand:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 54
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 55
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;->operand:I

    .line 56
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 69
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;->opcode:I

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;->operand:I

    invoke-interface {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 70
    return-void
.end method

.method public getType()I
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 65
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;->opcode:I

    .line 66
    return-void
.end method
