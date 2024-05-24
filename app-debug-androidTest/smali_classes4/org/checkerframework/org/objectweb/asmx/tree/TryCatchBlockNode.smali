.class public Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;
.super Ljava/lang/Object;
.source "TryCatchBlockNode.java"


# instance fields
.field public end:Lorg/checkerframework/org/objectweb/asmx/Label;

.field public handler:Lorg/checkerframework/org/objectweb/asmx/Label;

.field public start:Lorg/checkerframework/org/objectweb/asmx/Label;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 80
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->end:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 81
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->handler:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 82
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->end:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->handler:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    .line 92
    return-void
.end method
