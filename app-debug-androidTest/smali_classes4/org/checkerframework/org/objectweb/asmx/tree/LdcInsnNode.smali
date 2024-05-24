.class public Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "LdcInsnNode.java"


# instance fields
.field public cst:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 57
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 58
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 62
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public getType()I
    .locals 1

    .line 66
    const/16 v0, 0x9

    return v0
.end method
