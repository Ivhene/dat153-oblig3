.class public Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;
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
    name = "PreOrderIterator"
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
.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
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

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;->stack:Ljava/util/Stack;

    .line 951
    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 952
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 956
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 946
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;->next()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 5

    .line 961
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 962
    .local v0, "next":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    .line 963
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 964
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;->stack:Ljava/util/Stack;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 963
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 966
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method
