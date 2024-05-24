.class public Lorg/checkerframework/org/apache/bcel/util/ClassStack;
.super Ljava/lang/Object;
.source "ClassStack.java"


# instance fields
.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassStack;->stack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method public pop()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    return-object v0
.end method

.method public push(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 1
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 36
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public top()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    return-object v0
.end method
