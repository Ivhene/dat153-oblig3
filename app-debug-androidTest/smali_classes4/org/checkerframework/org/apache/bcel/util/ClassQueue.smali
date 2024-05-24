.class public Lorg/checkerframework/org/apache/bcel/util/ClassQueue;
.super Ljava/lang/Object;
.source "ClassQueue.java"


# instance fields
.field protected vec:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->vec:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public dequeue()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->vec:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    return-object v0
.end method

.method public empty()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->vec:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public enqueue(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 1
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 40
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->vec:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassQueue;->vec:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
