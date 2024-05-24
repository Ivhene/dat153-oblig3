.class public Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "MultiANewArrayInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public dims:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 59
    const/16 v0, 0xc5

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 60
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    .line 61
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;->dims:I

    .line 62
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;->dims:I

    invoke-interface {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public getType()I
    .locals 1

    .line 69
    const/16 v0, 0xd

    return v0
.end method
