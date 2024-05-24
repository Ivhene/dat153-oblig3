.class public Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "LabelNode.java"


# instance fields
.field public label:Lorg/checkerframework/org/objectweb/asmx/Label;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 43
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 44
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 45
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 1
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 48
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 49
    return-void
.end method

.method public getType()I
    .locals 1

    .line 52
    const/16 v0, 0x8

    return v0
.end method
