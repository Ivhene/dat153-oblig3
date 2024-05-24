.class public Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;
.super Ljava/lang/Object;
.source "LineNumberNode.java"


# instance fields
.field public line:I

.field public start:Lorg/checkerframework/org/objectweb/asmx/Label;


# direct methods
.method public constructor <init>(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;->line:I

    .line 62
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 71
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;->line:I

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-interface {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 72
    return-void
.end method
