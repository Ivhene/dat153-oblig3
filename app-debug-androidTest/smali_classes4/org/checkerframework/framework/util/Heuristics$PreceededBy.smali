.class public Lorg/checkerframework/framework/util/Heuristics$PreceededBy;
.super Lorg/checkerframework/framework/util/Heuristics$Matcher;
.source "Heuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Heuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreceededBy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-class v0, Lorg/checkerframework/framework/util/Heuristics;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/util/Heuristics$Matcher;)V
    .locals 0
    .param p1, "matcher"    # Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 87
    invoke-direct {p0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/checkerframework/framework/util/Heuristics$PreceededBy;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 89
    return-void
.end method


# virtual methods
.method public match(Lcom/sun/source/util/TreePath;)Z
    .locals 8
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 93
    const-class v0, Lcom/sun/source/tree/StatementTree;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfClass(Lcom/sun/source/util/TreePath;Ljava/lang/Class;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    .line 94
    .local v0, "stmt":Lcom/sun/source/tree/StatementTree;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    move-object v2, p1

    .line 98
    .local v2, "p":Lcom/sun/source/util/TreePath;
    :goto_0
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    if-eq v3, v0, :cond_1

    .line 99
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    if-ne v3, v0, :cond_6

    .line 103
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/source/tree/StatementTree;

    if-eqz v3, :cond_5

    .line 104
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/source/tree/BlockTree;

    if-eqz v3, :cond_4

    .line 105
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/BlockTree;

    .line 106
    .local v3, "block":Lcom/sun/source/tree/BlockTree;
    invoke-interface {v3}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/StatementTree;

    .line 107
    .local v5, "st":Lcom/sun/source/tree/StatementTree;
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 108
    goto :goto_3

    .line 111
    :cond_2
    iget-object v6, p0, Lorg/checkerframework/framework/util/Heuristics$PreceededBy;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    new-instance v7, Lcom/sun/source/util/TreePath;

    invoke-direct {v7, v2, v5}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    const/4 v1, 0x1

    return v1

    .line 114
    .end local v5    # "st":Lcom/sun/source/tree/StatementTree;
    :cond_3
    goto :goto_2

    .line 116
    .end local v3    # "block":Lcom/sun/source/tree/BlockTree;
    :cond_4
    :goto_3
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    goto :goto_1

    .line 119
    :cond_5
    return v1

    .line 101
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
