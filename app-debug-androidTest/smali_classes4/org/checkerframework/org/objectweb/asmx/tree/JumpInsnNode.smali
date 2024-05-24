.class public Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "JumpInsnNode.java"


# instance fields
.field public label:Lorg/checkerframework/org/objectweb/asmx/Label;


# direct methods
.method public constructor <init>(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 61
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 62
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 78
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;->opcode:I

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-interface {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 79
    return-void
.end method

.method public getType()I
    .locals 1

    .line 82
    const/4 v0, 0x7

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 74
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;->opcode:I

    .line 75
    return-void
.end method
