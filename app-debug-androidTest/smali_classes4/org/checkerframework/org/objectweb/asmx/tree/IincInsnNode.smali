.class public Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "IincInsnNode.java"


# instance fields
.field public incr:I

.field public var:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "incr"    # I

    .line 59
    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 60
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;->var:I

    .line 61
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;->incr:I

    .line 62
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 65
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;->var:I

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;->incr:I

    invoke-interface {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 66
    return-void
.end method

.method public getType()I
    .locals 1

    .line 69
    const/16 v0, 0xa

    return v0
.end method
