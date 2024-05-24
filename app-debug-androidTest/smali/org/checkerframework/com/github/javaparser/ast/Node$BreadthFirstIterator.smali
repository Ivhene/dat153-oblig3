.class public Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 879
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 880
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 884
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 874
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;->next()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3

    .line 889
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 890
    .local v0, "next":Lorg/checkerframework/com/github/javaparser/ast/Node;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 891
    return-object v0
.end method
