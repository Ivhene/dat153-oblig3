.class public Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "FieldInsnNode.java"


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

    .line 74
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 75
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->owner:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->name:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->desc:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 4
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 91
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->opcode:I

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->owner:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public getType()I
    .locals 1

    .line 95
    const/4 v0, 0x4

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 87
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->opcode:I

    .line 88
    return-void
.end method
