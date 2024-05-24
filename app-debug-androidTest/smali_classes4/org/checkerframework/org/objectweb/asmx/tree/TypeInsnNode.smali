.class public Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "TypeInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 58
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;->desc:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 72
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;->opcode:I

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;->desc:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 73
    return-void
.end method

.method public getType()I
    .locals 1

    .line 76
    const/4 v0, 0x3

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 68
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;->opcode:I

    .line 69
    return-void
.end method
