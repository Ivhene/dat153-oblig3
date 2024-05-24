.class public Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;
.super Ljava/lang/Object;
.source "InnerClassNode.java"


# instance fields
.field public access:I

.field public innerName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public outerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->name:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->outerName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->innerName:Ljava/lang/String;

    .line 90
    iput p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->access:I

    .line 91
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 4
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 99
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->outerName:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->innerName:Ljava/lang/String;

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InnerClassNode;->access:I

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    return-void
.end method
