.class public Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;
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
    name = "PostOrderIterator"
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
.field private final cursorStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private final nodesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field private final root:Lorg/checkerframework/com/github/javaparser/ast/Node;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "root"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->nodesStack:Ljava/util/Stack;

    .line 979
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->cursorStack:Ljava/util/Stack;

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->hasNext:Z

    .line 986
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->root:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 987
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->fillStackToLeaf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 988
    return-void
.end method

.method private fillStackToLeaf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 992
    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 993
    .local v0, "childNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    nop

    .line 1000
    .end local v0    # "childNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    return-void

    .line 996
    .restart local v0    # "childNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->nodesStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->cursorStack:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 999
    .end local v0    # "childNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    goto :goto_0
.end method

.method private nextFromLevel()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 4

    .line 1028
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->nodesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1029
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->cursorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1030
    .local v1, "cursor":I
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->cursorStack:Ljava/util/Stack;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v2
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1004
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->hasNext:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 975
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->next()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 5

    .line 1009
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->nodesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1010
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->cursorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1011
    .local v1, "cursor":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1012
    .local v2, "levelHasNext":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1013
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1014
    .local v3, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-direct {p0, v3}, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->fillStackToLeaf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1015
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->nextFromLevel()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    return-object v4

    .line 1017
    .end local v3    # "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->nodesStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1018
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->cursorStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1019
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->nodesStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->hasNext:Z

    .line 1020
    if-eqz v3, :cond_2

    .line 1021
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->nextFromLevel()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    return-object v3

    .line 1023
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;->root:Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v3
.end method
