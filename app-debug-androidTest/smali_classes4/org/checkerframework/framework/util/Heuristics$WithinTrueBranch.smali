.class public Lorg/checkerframework/framework/util/Heuristics$WithinTrueBranch;
.super Lorg/checkerframework/framework/util/Heuristics$Matcher;
.source "Heuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Heuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithinTrueBranch"
.end annotation


# instance fields
.field private final matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/util/Heuristics$Matcher;)V
    .locals 0
    .param p1, "conditionMatcher"    # Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 163
    invoke-direct {p0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;-><init>()V

    .line 164
    iput-object p1, p0, Lorg/checkerframework/framework/util/Heuristics$WithinTrueBranch;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 165
    return-void
.end method


# virtual methods
.method public match(Lcom/sun/source/util/TreePath;)Z
    .locals 8
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 169
    move-object v0, p1

    .local v0, "prev":Lcom/sun/source/util/TreePath;
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 170
    .local v1, "p":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    .line 172
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/IfTree;

    .line 173
    .local v2, "ifTree":Lcom/sun/source/tree/IfTree;
    invoke-interface {v2}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 174
    .local v3, "cond":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v2}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/checkerframework/framework/util/Heuristics$WithinTrueBranch;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    new-instance v5, Lcom/sun/source/util/TreePath;

    invoke-direct {v5, v1, v3}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V

    .line 175
    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    return v6

    .line 178
    :cond_0
    invoke-interface {v3}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->LOGICAL_COMPLEMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lorg/checkerframework/framework/util/Heuristics$WithinTrueBranch;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    new-instance v5, Lcom/sun/source/util/TreePath;

    move-object v7, v3

    check-cast v7, Lcom/sun/source/tree/UnaryTree;

    .line 179
    invoke-interface {v7}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-direct {v5, v1, v7}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    return v6

    .line 183
    .end local v2    # "ifTree":Lcom/sun/source/tree/IfTree;
    .end local v3    # "cond":Lcom/sun/source/tree/ExpressionTree;
    :cond_1
    move-object v0, v1

    .line 184
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    goto :goto_0

    .line 187
    :cond_2
    const/4 v2, 0x0

    return v2
.end method
