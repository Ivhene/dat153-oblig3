.class public Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;
.super Ljava/lang/Object;
.source "LocalVariableNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public end:Lorg/checkerframework/org/objectweb/asmx/Label;

.field public index:I

.field public name:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public start:Lorg/checkerframework/org/objectweb/asmx/Label;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->name:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->desc:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->signature:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 99
    iput-object p5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->end:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 100
    iput p6, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->index:I

    .line 101
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 7
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 109
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->end:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget v6, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->index:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 110
    return-void
.end method
