.class Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode$1;
.super Ljava/util/ArrayList;
.source "MethodNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;
    .param p2, "x0"    # I

    .line 206
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode$1;->this$0:Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode$1;->this$0:Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;

    iput-object p1, v0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    .line 209
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
