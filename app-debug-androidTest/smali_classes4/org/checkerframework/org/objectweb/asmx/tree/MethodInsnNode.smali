.class public Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "MethodInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public owner:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 76
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->owner:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->name:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->desc:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 92
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->opcode:I

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->owner:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public getType()I
    .locals 1

    .line 96
    const/4 v0, 0x5

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 88
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->opcode:I

    .line 89
    return-void
.end method
