.class Lorg/checkerframework/checker/interning/InterningVisitor$2;
.super Lorg/checkerframework/framework/util/Heuristics$Matcher;
.source "InterningVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/interning/InterningVisitor;->suppressEarlyEquals(Lcom/sun/source/tree/BinaryTree;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/interning/InterningVisitor;

.field final synthetic val$left:Lcom/sun/source/tree/ExpressionTree;

.field final synthetic val$node:Lcom/sun/source/tree/BinaryTree;

.field final synthetic val$right:Lcom/sun/source/tree/ExpressionTree;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/interning/InterningVisitor;Lcom/sun/source/tree/BinaryTree;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/interning/InterningVisitor;

    .line 573
    iput-object p1, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->this$0:Lorg/checkerframework/checker/interning/InterningVisitor;

    iput-object p2, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$node:Lcom/sun/source/tree/BinaryTree;

    iput-object p3, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$left:Lcom/sun/source/tree/ExpressionTree;

    iput-object p4, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$right:Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;-><init>()V

    return-void
.end method

.method private isNeqNull(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 5
    .param p1, "e"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "e1"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "e2"    # Lcom/sun/source/tree/ExpressionTree;

    .line 578
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object p1

    .line 579
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 580
    return v2

    .line 582
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/BinaryTree;

    invoke-interface {v0}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 583
    .local v0, "neqLeft":Lcom/sun/source/tree/ExpressionTree;
    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/BinaryTree;

    invoke-interface {v1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 584
    .local v1, "neqRight":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0, p2}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0, p3}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 585
    :cond_1
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_5

    .line 587
    :cond_2
    invoke-static {v1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, p3}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 588
    :cond_3
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x1

    .line 584
    :goto_1
    return v2
.end method


# virtual methods
.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 593
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 594
    .local v0, "leftTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 596
    .local v1, "rightTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_OR:Lcom/sun/source/tree/Tree$Kind;

    const/4 v4, 0x0

    .line 615
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 596
    if-ne v2, v3, :cond_1

    .line 597
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$node:Lcom/sun/source/tree/BinaryTree;

    invoke-static {v0, v2}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$2;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    return-object v2

    .line 603
    :cond_0
    return-object v4

    .line 607
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_AND:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_3

    .line 609
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$left:Lcom/sun/source/tree/ExpressionTree;

    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$right:Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v0, v2, v3}, Lorg/checkerframework/checker/interning/InterningVisitor$2;->isNeqNull(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$2;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    return-object v2

    .line 612
    :cond_2
    return-object v4

    .line 615
    :cond_3
    return-object v4
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 573
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$2;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 622
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 623
    .local v0, "cond":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 624
    .local v1, "trueExp":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 625
    .local v2, "falseExp":Lcom/sun/source/tree/ExpressionTree;
    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$left:Lcom/sun/source/tree/ExpressionTree;

    iget-object v4, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$right:Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v0, v3, v4}, Lorg/checkerframework/checker/interning/InterningVisitor$2;->isNeqNull(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v3

    const/4 v4, 0x0

    .line 630
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 625
    if-eqz v3, :cond_0

    .line 626
    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->BOOLEAN_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v5, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/LiteralTree;

    .line 627
    invoke-interface {v3}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$2;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    return-object v3

    .line 630
    :cond_0
    return-object v4
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 573
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$2;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 635
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->this$0:Lorg/checkerframework/checker/interning/InterningVisitor;

    invoke-static {v0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$100(Lorg/checkerframework/checker/interning/InterningVisitor;Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    const/4 v1, 0x0

    .line 636
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 635
    if-nez v0, :cond_0

    .line 636
    return-object v2

    .line 639
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 640
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 641
    return-object v2

    .line 643
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 649
    .local v1, "arg":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 650
    .local v3, "exp":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v3}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v5, v6, :cond_2

    .line 651
    return-object v2

    .line 653
    :cond_2
    move-object v5, v3

    check-cast v5, Lcom/sun/source/tree/MemberSelectTree;

    .line 654
    .local v5, "member":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {v5}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 662
    .local v6, "receiver":Lcom/sun/source/tree/ExpressionTree;
    iget-object v7, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$left:Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v6, v7}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$right:Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v1, v7}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 663
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 665
    :cond_3
    iget-object v7, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$right:Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v6, v7}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/checkerframework/checker/interning/InterningVisitor$2;->val$left:Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v1, v7}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 666
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 669
    :cond_4
    return-object v2
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 573
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$2;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
