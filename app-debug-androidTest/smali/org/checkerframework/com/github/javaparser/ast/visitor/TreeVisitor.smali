.class public abstract Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;
.super Ljava/lang/Object;
.source "TreeVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract process(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation
.end method

.method public visitBreadthFirst(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
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

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 75
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 76
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 78
    .local v1, "head":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 79
    .local v3, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-interface {v0, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 80
    .end local v3    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;->process(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 82
    .end local v1    # "head":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public visitDirectChildren(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 97
    return-void
.end method

.method public visitLeavesFirst(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 39
    .local v1, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;->visitLeavesFirst(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 40
    .end local v1    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;->process(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 42
    return-void
.end method

.method public visitPostOrder(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 65
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;->process(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 66
    return-void
.end method

.method public visitPreOrder(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;->process(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 54
    return-void
.end method
