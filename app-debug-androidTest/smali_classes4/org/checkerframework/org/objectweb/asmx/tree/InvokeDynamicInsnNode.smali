.class public Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "InvokeDynamicInsnNode.java"


# instance fields
.field public bsm:Lorg/checkerframework/org/objectweb/asmx/Handle;

.field public bsmArgs:[Ljava/lang/Object;

.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 46
    const/16 v0, 0xba

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 47
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->bsm:Lorg/checkerframework/org/objectweb/asmx/Handle;

    .line 50
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->bsmArgs:[Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 60
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->bsm:Lorg/checkerframework/org/objectweb/asmx/Handle;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->bsmArgs:[Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;->acceptAnnotations(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 62
    return-void
.end method

.method public getType()I
    .locals 1

    .line 55
    const/4 v0, 0x6

    return v0
.end method
