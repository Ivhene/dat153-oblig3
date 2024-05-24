.class Lorg/checkerframework/checker/interning/InterningVisitor$1;
.super Lorg/checkerframework/framework/util/Heuristics$Matcher;
.source "InterningVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/interning/InterningVisitor;->suppressInsideComparison(Lcom/sun/source/tree/BinaryTree;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/interning/InterningVisitor;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/interning/InterningVisitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/interning/InterningVisitor;

    .line 458
    iput-object p1, p0, Lorg/checkerframework/checker/interning/InterningVisitor$1;->this$0:Lorg/checkerframework/checker/interning/InterningVisitor;

    invoke-direct {p0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/BlockTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 467
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 470
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$1;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$1;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/IfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 462
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$1;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$1;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/ReturnTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 475
    invoke-interface {p1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 476
    .local v0, "expr":Lcom/sun/source/tree/ExpressionTree;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->INT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/sun/source/tree/LiteralTree;

    .line 478
    invoke-interface {v2}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 476
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$1;->visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
