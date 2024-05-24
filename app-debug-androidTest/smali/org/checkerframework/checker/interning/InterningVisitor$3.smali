.class Lorg/checkerframework/checker/interning/InterningVisitor$3;
.super Lorg/checkerframework/framework/util/Heuristics$Matcher;
.source "InterningVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/interning/InterningVisitor;->suppressEarlyCompareTo(Lcom/sun/source/tree/BinaryTree;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/interning/InterningVisitor;

.field final synthetic val$lhs:Ljavax/lang/model/element/Element;

.field final synthetic val$node:Lcom/sun/source/tree/BinaryTree;

.field final synthetic val$rhs:Ljavax/lang/model/element/Element;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/interning/InterningVisitor;Lcom/sun/source/tree/BinaryTree;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/interning/InterningVisitor;

    .line 705
    iput-object p1, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->this$0:Lorg/checkerframework/checker/interning/InterningVisitor;

    iput-object p2, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->val$node:Lcom/sun/source/tree/BinaryTree;

    iput-object p3, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->val$lhs:Ljavax/lang/model/element/Element;

    iput-object p4, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->val$rhs:Ljavax/lang/model/element/Element;

    invoke-direct {p0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 709
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x0

    .line 731
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 709
    if-ne v0, v1, :cond_2

    .line 710
    nop

    .line 711
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 713
    .local v0, "leftTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 715
    .local v1, "rightTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->INT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v5, :cond_0

    .line 716
    return-object v3

    .line 718
    :cond_0
    move-object v4, v1

    check-cast v4, Lcom/sun/source/tree/LiteralTree;

    .line 719
    .local v4, "rightLiteral":Lcom/sun/source/tree/LiteralTree;
    invoke-interface {v4}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 720
    return-object v3

    .line 723
    :cond_1
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$3;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    return-object v2

    .line 726
    .end local v0    # "leftTree":Lcom/sun/source/tree/ExpressionTree;
    .end local v1    # "rightTree":Lcom/sun/source/tree/ExpressionTree;
    .end local v4    # "rightLiteral":Lcom/sun/source/tree/LiteralTree;
    :cond_2
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 727
    .restart local v0    # "leftTree":Lcom/sun/source/tree/ExpressionTree;
    nop

    .line 728
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 730
    .restart local v1    # "rightTree":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->val$node:Lcom/sun/source/tree/BinaryTree;

    if-eq v0, v2, :cond_3

    .line 731
    return-object v3

    .line 733
    :cond_3
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v4, :cond_4

    .line 734
    return-object v3

    .line 736
    :cond_4
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$3;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    return-object v2
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 705
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$3;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 742
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->this$0:Lorg/checkerframework/checker/interning/InterningVisitor;

    .line 743
    invoke-static {v0}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$200(Lorg/checkerframework/checker/interning/InterningVisitor;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->this$0:Lorg/checkerframework/checker/interning/InterningVisitor;

    invoke-static {v1}, Lorg/checkerframework/checker/interning/InterningVisitor;->access$300(Lorg/checkerframework/checker/interning/InterningVisitor;)Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    .line 742
    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    const/4 v1, 0x0

    .line 744
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 742
    if-nez v0, :cond_0

    .line 744
    return-object v2

    .line 747
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 748
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 749
    return-object v2

    .line 751
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 752
    .local v1, "arg":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v5, :cond_2

    .line 753
    return-object v2

    .line 755
    :cond_2
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 757
    .local v3, "argElt":Ljavax/lang/model/element/Element;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 758
    .local v5, "exp":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v6, v7, :cond_3

    .line 759
    return-object v2

    .line 761
    :cond_3
    move-object v6, v5

    check-cast v6, Lcom/sun/source/tree/MemberSelectTree;

    .line 762
    .local v6, "member":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {v6}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v7, v8, :cond_4

    .line 763
    return-object v2

    .line 766
    :cond_4
    invoke-interface {v6}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v7

    .line 768
    .local v7, "refElt":Ljavax/lang/model/element/Element;
    iget-object v8, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->val$lhs:Ljavax/lang/model/element/Element;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->val$rhs:Ljavax/lang/model/element/Element;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    iget-object v8, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->val$rhs:Ljavax/lang/model/element/Element;

    .line 769
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/checkerframework/checker/interning/InterningVisitor$3;->val$lhs:Ljavax/lang/model/element/Element;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_0

    .line 772
    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 770
    :cond_7
    :goto_0
    return-object v2
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 705
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor$3;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
