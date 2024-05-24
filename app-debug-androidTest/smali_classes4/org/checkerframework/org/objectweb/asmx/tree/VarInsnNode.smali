.class public Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "VarInsnNode.java"


# instance fields
.field public var:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 59
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 60
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;->var:I

    .line 61
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 75
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;->opcode:I

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;->var:I

    invoke-interface {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 76
    return-void
.end method

.method public getType()I
    .locals 1

    .line 79
    const/4 v0, 0x2

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 71
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;->opcode:I

    .line 72
    return-void
.end method
