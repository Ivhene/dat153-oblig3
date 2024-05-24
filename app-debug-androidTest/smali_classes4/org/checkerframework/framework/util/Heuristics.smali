.class public Lorg/checkerframework/framework/util/Heuristics;
.super Ljava/lang/Object;
.source "Heuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/Heuristics$OrMatcher;,
        Lorg/checkerframework/framework/util/Heuristics$OfKind;,
        Lorg/checkerframework/framework/util/Heuristics$WithinTrueBranch;,
        Lorg/checkerframework/framework/util/Heuristics$Within;,
        Lorg/checkerframework/framework/util/Heuristics$PreceededBy;,
        Lorg/checkerframework/framework/util/Heuristics$Matcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs matchParents(Lcom/sun/source/util/TreePath;[Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 6
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "kinds"    # [Lcom/sun/source/tree/Tree$Kind;

    .line 42
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 43
    .local v0, "parentPath":Lcom/sun/source/util/TreePath;
    const/4 v1, 0x1

    .line 45
    .local v1, "result":Z
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v2, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/sun/source/tree/Tree$Kind;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    move-object v4, v3

    .local v4, "tree":Lcom/sun/source/tree/Tree;
    if-eqz v3, :cond_4

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    goto :goto_3

    .line 54
    :cond_0
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v5, :cond_3

    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PARENTHESIZED:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v5, :cond_1

    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v5

    invoke-interface {v5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v1, v3

    .line 60
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 56
    goto :goto_0

    .line 63
    :cond_4
    :goto_3
    return v1
.end method
