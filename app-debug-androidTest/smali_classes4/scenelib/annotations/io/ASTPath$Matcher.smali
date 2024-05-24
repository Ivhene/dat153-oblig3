.class Lscenelib/annotations/io/ASTPath$Matcher;
.super Ljava/lang/Object;
.source "ASTPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/ASTPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Matcher"
.end annotation


# static fields
.field public static final dbug:Lscenelib/annotations/io/DebugWriter;


# instance fields
.field private astPath:Lscenelib/annotations/io/ASTPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 630
    new-instance v0, Lscenelib/annotations/io/DebugWriter;

    invoke-direct {v0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    sput-object v0, Lscenelib/annotations/io/ASTPath$Matcher;->dbug:Lscenelib/annotations/io/DebugWriter;

    return-void
.end method

.method constructor <init>(Lscenelib/annotations/io/ASTPath;)V
    .locals 0
    .param p1, "astPath"    # Lscenelib/annotations/io/ASTPath;

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p1, p0, Lscenelib/annotations/io/ASTPath$Matcher;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 635
    return-void
.end method

.method private static kindsMatch(Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 1
    .param p0, "kind1"    # Lcom/sun/source/tree/Tree$Kind;
    .param p1, "kind2"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1206
    if-eq p0, p1, :cond_4

    .line 1207
    invoke-static {p0}, Lscenelib/annotations/io/ASTPath;->isCompoundAssignment(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isCompoundAssignment(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1208
    :cond_0
    invoke-static {p0}, Lscenelib/annotations/io/ASTPath;->isUnaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isUnaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1209
    :cond_1
    invoke-static {p0}, Lscenelib/annotations/io/ASTPath;->isBinaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isBinaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1210
    :cond_2
    invoke-static {p0}, Lscenelib/annotations/io/ASTPath;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 1206
    :goto_1
    return v0
.end method

.method private nonDecl(Lcom/sun/source/util/TreePath;)Z
    .locals 5
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 638
    sget-object v0, Lscenelib/annotations/io/ASTPath$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 647
    return v1

    .line 643
    :pswitch_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 644
    .local v0, "parentPath":Lcom/sun/source/util/TreePath;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 644
    :goto_0
    return v1

    .line 641
    .end local v0    # "parentPath":Lcom/sun/source/util/TreePath;
    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public matches(Lcom/sun/source/util/TreePath;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 652
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lscenelib/annotations/io/ASTPath$Matcher;->matches(Lcom/sun/source/util/TreePath;I)Z

    move-result v0

    return v0
.end method

.method public matches(Lcom/sun/source/util/TreePath;I)Z
    .locals 17
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "depth"    # I

    .line 656
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 657
    return v1

    .line 666
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p1

    .line 667
    .end local p1    # "path":Lcom/sun/source/util/TreePath;
    .local v2, "actualPath":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    .local v3, "path":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v3, :cond_1

    invoke-direct {v0, v3}, Lscenelib/annotations/io/ASTPath$Matcher;->nonDecl(Lcom/sun/source/util/TreePath;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 669
    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    goto :goto_0

    .line 672
    :cond_1
    sget-object v4, Lscenelib/annotations/io/ASTPath$Matcher;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {v4}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 673
    iget-object v5, v0, Lscenelib/annotations/io/ASTPath$Matcher;->astPath:Lscenelib/annotations/io/ASTPath;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "AST [%s]%n"

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    .line 675
    .local v5, "t":Lcom/sun/source/tree/Tree;
    sget-object v6, Lscenelib/annotations/io/ASTPath$Matcher;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-interface {v5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    .line 676
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 675
    const-string v8, "  %s: %s%n"

    invoke-virtual {v6, v8, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    .end local v5    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_1

    .line 680
    :cond_2
    iget-object v4, v0, Lscenelib/annotations/io/ASTPath$Matcher;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    .line 681
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v0, Lscenelib/annotations/io/ASTPath$Matcher;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_3

    move/from16 v10, p2

    goto/16 :goto_9

    .line 685
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, v0, Lscenelib/annotations/io/ASTPath$Matcher;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v5

    if-ge v4, v5, :cond_4f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4f

    .line 686
    iget-object v5, v0, Lscenelib/annotations/io/ASTPath$Matcher;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v5, v4}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 687
    .local v5, "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    .line 694
    .local v7, "actualNode":Lcom/sun/source/tree/Tree;
    const/4 v8, 0x0

    .line 695
    .local v8, "next":Lcom/sun/source/tree/Tree;
    sget-object v9, Lscenelib/annotations/io/ASTPath$Matcher;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v10, "astNode: %s%n"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "actualNode: %s%n"

    invoke-virtual {v9, v11, v10}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v10

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    invoke-static {v10, v11}, Lscenelib/annotations/io/ASTPath$Matcher;->kindsMatch(Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 698
    return v1

    .line 701
    :cond_4
    sget-object v10, Lscenelib/annotations/io/ASTPath$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const-string v12, "typeArgument"

    const-string v13, "initializer"

    const-string v14, "parameter"

    const-string v15, "variable"

    const-string v6, "type"

    const-string v11, "condition"

    const-string v1, "expression"

    packed-switch v10, :pswitch_data_0

    .line 1119
    move/from16 v10, p2

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-static {v1}, Lscenelib/annotations/io/ASTPath;->isBinaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1120
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/BinaryTree;

    .line 1121
    .local v1, "binary":Lcom/sun/source/tree/BinaryTree;
    const-string v6, "leftOperand"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1122
    invoke-interface {v1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_6

    .line 1110
    .end local v1    # "binary":Lcom/sun/source/tree/BinaryTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_0
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/WhileLoopTree;

    .line 1111
    .local v1, "whileLoop":Lcom/sun/source/tree/WhileLoopTree;
    invoke-virtual {v5, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1112
    invoke-interface {v1}, Lcom/sun/source/tree/WhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    move/from16 v10, p2

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1114
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_5
    invoke-interface {v1}, Lcom/sun/source/tree/WhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    .line 1116
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 1091
    .end local v1    # "whileLoop":Lcom/sun/source/tree/WhileLoopTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_1
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/UnionTypeTree;

    .line 1092
    .local v1, "unionType":Lcom/sun/source/tree/UnionTypeTree;
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 1093
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/UnionTypeTree;->getTypeAlternatives()Ljava/util/List;

    move-result-object v10

    .line 1094
    .local v10, "typeAlts":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_6

    .line 1095
    const/4 v9, 0x0

    return v9

    .line 1097
    :cond_6
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    check-cast v8, Lcom/sun/source/tree/Tree;

    .line 1098
    move/from16 v10, p2

    move-object v6, v8

    goto/16 :goto_8

    .line 1082
    .end local v1    # "unionType":Lcom/sun/source/tree/UnionTypeTree;
    .end local v6    # "arg":I
    .end local v10    # "typeAlts":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :pswitch_2
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/TypeCastTree;

    .line 1083
    .local v1, "typeCast":Lcom/sun/source/tree/TypeCastTree;
    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1084
    invoke-interface {v1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    move/from16 v10, p2

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1086
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_7
    invoke-interface {v1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 1088
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 1059
    .end local v1    # "typeCast":Lcom/sun/source/tree/TypeCastTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_3
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/TryTree;

    .line 1060
    .local v1, "tryy":Lcom/sun/source/tree/TryTree;
    const-string v6, "block"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1061
    invoke-interface {v1}, Lcom/sun/source/tree/TryTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v6

    move/from16 v10, p2

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1062
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_8
    const-string v6, "catch"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1063
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 1064
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v10

    .line 1065
    .local v10, "catches":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CatchTree;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_9

    .line 1066
    const/4 v9, 0x0

    return v9

    .line 1068
    :cond_9
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 1069
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v10    # "catches":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CatchTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_a
    const-string v6, "finallyBlock"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1070
    invoke-interface {v1}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v6

    move/from16 v10, p2

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1072
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_b
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 1073
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v10

    .line 1074
    .local v10, "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_c

    .line 1075
    const/4 v9, 0x0

    return v9

    .line 1077
    :cond_c
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 1079
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v10    # "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 1054
    .end local v1    # "tryy":Lcom/sun/source/tree/TryTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_4
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ThrowTree;

    .line 1055
    .local v1, "throww":Lcom/sun/source/tree/ThrowTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 1056
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 1045
    .end local v1    # "throww":Lcom/sun/source/tree/ThrowTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_5
    move-object v6, v7

    check-cast v6, Lcom/sun/source/tree/SynchronizedTree;

    .line 1046
    .local v6, "synchronizzed":Lcom/sun/source/tree/SynchronizedTree;
    invoke-virtual {v5, v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1047
    invoke-interface {v6}, Lcom/sun/source/tree/SynchronizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    move/from16 v10, p2

    move-object v6, v1

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v1, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1049
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_d
    invoke-interface {v6}, Lcom/sun/source/tree/SynchronizedTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    .line 1051
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v1    # "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    move-object v6, v1

    goto/16 :goto_8

    .line 1031
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .end local v6    # "synchronizzed":Lcom/sun/source/tree/SynchronizedTree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_6
    move-object v6, v7

    check-cast v6, Lcom/sun/source/tree/SwitchTree;

    .line 1032
    .local v6, "zwitch":Lcom/sun/source/tree/SwitchTree;
    invoke-virtual {v5, v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1033
    invoke-interface {v6}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    move/from16 v10, p2

    move-object v6, v1

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v1    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1035
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_e
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v1

    .line 1036
    .local v1, "arg":I
    invoke-interface {v6}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object v10

    .line 1037
    .local v10, "cases":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CaseTree;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v1, v11, :cond_f

    .line 1038
    const/4 v9, 0x0

    return v9

    .line 1040
    :cond_f
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 1042
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v10    # "cases":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CaseTree;>;"
    .local v1, "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    move-object v6, v1

    goto/16 :goto_8

    .line 1026
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .end local v6    # "zwitch":Lcom/sun/source/tree/SwitchTree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_7
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ReturnTree;

    .line 1027
    .local v1, "returnn":Lcom/sun/source/tree/ReturnTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 1028
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v6, "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 1021
    .end local v1    # "returnn":Lcom/sun/source/tree/ReturnTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_8
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ParenthesizedTree;

    .line 1022
    .local v1, "parenthesized":Lcom/sun/source/tree/ParenthesizedTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 1023
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 1006
    .end local v1    # "parenthesized":Lcom/sun/source/tree/ParenthesizedTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_9
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 1008
    .local v1, "parameterizedType":Lcom/sun/source/tree/ParameterizedTypeTree;
    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1009
    invoke-interface {v1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    move/from16 v10, p2

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1011
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_10
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 1012
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v10

    .line 1013
    .local v10, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_11

    .line 1014
    const/4 v9, 0x0

    return v9

    .line 1016
    :cond_11
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 1018
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v10    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 981
    .end local v1    # "parameterizedType":Lcom/sun/source/tree/ParameterizedTypeTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_a
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/NewClassTree;

    .line 982
    .local v1, "newClass":Lcom/sun/source/tree/NewClassTree;
    const-string v6, "enclosingExpression"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 983
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    move/from16 v10, p2

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 984
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_12
    invoke-virtual {v5, v12}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 985
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 986
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v10

    .line 987
    .restart local v10    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_13

    .line 988
    const/4 v9, 0x0

    return v9

    .line 990
    :cond_13
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 991
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v10    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_14
    const-string v6, "identifier"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 992
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    move/from16 v10, p2

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 993
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_15
    const-string v6, "argument"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 994
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 995
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v10

    .line 996
    .local v10, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_16

    .line 997
    const/4 v9, 0x0

    return v9

    .line 999
    :cond_16
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 1000
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v10    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 1001
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_17
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v6

    .line 1003
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    move/from16 v10, p2

    goto/16 :goto_8

    .line 955
    .end local v1    # "newClass":Lcom/sun/source/tree/NewClassTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_b
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/NewArrayTree;

    .line 956
    .local v1, "newArray":Lcom/sun/source/tree/NewArrayTree;
    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 957
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 958
    .local v6, "arg":I
    if-gez v6, :cond_18

    .line 959
    invoke-interface {v1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v8

    .line 963
    .end local v6    # "arg":I
    move/from16 v10, p2

    move-object v6, v8

    goto/16 :goto_8

    .line 961
    .restart local v6    # "arg":I
    :cond_18
    move/from16 v10, p2

    if-ne v6, v10, :cond_19

    const/16 v16, 0x1

    goto :goto_3

    :cond_19
    const/16 v16, 0x0

    :goto_3
    return v16

    .line 963
    .end local v6    # "arg":I
    :cond_1a
    move/from16 v10, p2

    const-string v6, "dimension"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 964
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 965
    .restart local v6    # "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v11

    .line 966
    .local v11, "dims":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_1b

    .line 967
    const/4 v9, 0x0

    return v9

    .line 969
    :cond_1b
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 970
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "dims":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 971
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_1c
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 972
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v11

    .line 973
    .local v11, "inits":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_1d

    .line 974
    const/4 v9, 0x0

    return v9

    .line 976
    :cond_1d
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 978
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "inits":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 933
    .end local v1    # "newArray":Lcom/sun/source/tree/NewArrayTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_c
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    .line 935
    .local v1, "methodInvocation":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {v5, v12}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 936
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 937
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v11

    .line 938
    .local v11, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_1e

    .line 939
    const/4 v9, 0x0

    return v9

    .line 941
    :cond_1e
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 942
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_1f
    const-string v6, "methodSelect"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 943
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 945
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_20
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 946
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v11

    .line 947
    .local v11, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_21

    .line 948
    const/4 v9, 0x0

    return v9

    .line 950
    :cond_21
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 952
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 911
    .end local v1    # "methodInvocation":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_d
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/MemberSelectTree;

    .line 912
    .local v1, "memberSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {v1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 913
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 896
    .end local v1    # "memberSelect":Lcom/sun/source/tree/MemberSelectTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_e
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/MemberReferenceTree;

    .line 897
    .local v1, "memberReference":Lcom/sun/source/tree/MemberReferenceTree;
    const-string v6, "qualifierExpression"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 898
    invoke-interface {v1}, Lcom/sun/source/tree/MemberReferenceTree;->getQualifierExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 900
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_22
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 901
    .local v6, "arg":I
    nop

    .line 902
    invoke-interface {v1}, Lcom/sun/source/tree/MemberReferenceTree;->getTypeArguments()Ljava/util/List;

    move-result-object v11

    .line 903
    .local v11, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_23

    .line 904
    const/4 v9, 0x0

    return v9

    .line 906
    :cond_23
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 908
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 880
    .end local v1    # "memberReference":Lcom/sun/source/tree/MemberReferenceTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_f
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 882
    .local v1, "lambdaExpression":Lcom/sun/source/tree/LambdaExpressionTree;
    invoke-virtual {v5, v14}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 883
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 884
    .local v6, "arg":I
    nop

    .line 885
    invoke-interface {v1}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v11

    .line 886
    .local v11, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_24

    .line 887
    const/4 v9, 0x0

    return v9

    .line 889
    :cond_24
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 890
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 891
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_25
    invoke-interface {v1}, Lcom/sun/source/tree/LambdaExpressionTree;->getBody()Lcom/sun/source/tree/Tree;

    move-result-object v6

    .line 893
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 874
    .end local v1    # "lambdaExpression":Lcom/sun/source/tree/LambdaExpressionTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_10
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/LabeledStatementTree;

    .line 876
    .local v1, "labeledStatement":Lcom/sun/source/tree/LabeledStatementTree;
    invoke-interface {v1}, Lcom/sun/source/tree/LabeledStatementTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    .line 877
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 865
    .end local v1    # "labeledStatement":Lcom/sun/source/tree/LabeledStatementTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_11
    move/from16 v10, p2

    move-object v6, v7

    check-cast v6, Lcom/sun/source/tree/InstanceOfTree;

    .line 866
    .local v6, "instanceOf":Lcom/sun/source/tree/InstanceOfTree;
    invoke-virtual {v5, v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 867
    invoke-interface {v6}, Lcom/sun/source/tree/InstanceOfTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    move-object v6, v1

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v1, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 869
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_26
    invoke-interface {v6}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 871
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v1    # "next":Lcom/sun/source/tree/Tree;
    move-object v6, v1

    goto/16 :goto_8

    .line 854
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .end local v6    # "instanceOf":Lcom/sun/source/tree/InstanceOfTree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_12
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/IfTree;

    .line 855
    .local v1, "iff":Lcom/sun/source/tree/IfTree;
    invoke-virtual {v5, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 856
    invoke-interface {v1}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 857
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_27
    const-string v6, "thenStatement"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 858
    invoke-interface {v1}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 860
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_28
    invoke-interface {v1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    .line 862
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 831
    .end local v1    # "iff":Lcom/sun/source/tree/IfTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_13
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ForLoopTree;

    .line 832
    .local v1, "forLoop":Lcom/sun/source/tree/ForLoopTree;
    invoke-virtual {v5, v13}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 833
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 834
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v11

    .line 835
    .local v11, "inits":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_29

    .line 836
    const/4 v9, 0x0

    return v9

    .line 838
    :cond_29
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 839
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "inits":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_2a
    invoke-virtual {v5, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 840
    invoke-interface {v1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 841
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_2b
    const-string v6, "update"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 842
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 843
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v11

    .line 844
    .local v11, "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionStatementTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_2c

    .line 845
    const/4 v9, 0x0

    return v9

    .line 847
    :cond_2c
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 848
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionStatementTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 849
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_2d
    invoke-interface {v1}, Lcom/sun/source/tree/ForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    .line 851
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 825
    .end local v1    # "forLoop":Lcom/sun/source/tree/ForLoopTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_14
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ExpressionStatementTree;

    .line 827
    .local v1, "expressionStatement":Lcom/sun/source/tree/ExpressionStatementTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 828
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 814
    .end local v1    # "expressionStatement":Lcom/sun/source/tree/ExpressionStatementTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_15
    move/from16 v10, p2

    move-object v6, v7

    check-cast v6, Lcom/sun/source/tree/EnhancedForLoopTree;

    .line 815
    .local v6, "enhancedForLoop":Lcom/sun/source/tree/EnhancedForLoopTree;
    invoke-virtual {v5, v15}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 816
    invoke-interface {v6}, Lcom/sun/source/tree/EnhancedForLoopTree;->getVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v1

    move-object v6, v1

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v1, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 817
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_2e
    invoke-virtual {v5, v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 818
    invoke-interface {v6}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    move-object v6, v1

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v1    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 820
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_2f
    invoke-interface {v6}, Lcom/sun/source/tree/EnhancedForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    .line 822
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v1    # "next":Lcom/sun/source/tree/Tree;
    move-object v6, v1

    goto/16 :goto_8

    .line 805
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .end local v6    # "enhancedForLoop":Lcom/sun/source/tree/EnhancedForLoopTree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_16
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/DoWhileLoopTree;

    .line 806
    .local v1, "doWhileLoop":Lcom/sun/source/tree/DoWhileLoopTree;
    invoke-virtual {v5, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 807
    invoke-interface {v1}, Lcom/sun/source/tree/DoWhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 809
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_30
    invoke-interface {v1}, Lcom/sun/source/tree/DoWhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    .line 811
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 793
    .end local v1    # "doWhileLoop":Lcom/sun/source/tree/DoWhileLoopTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_17
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ConditionalExpressionTree;

    .line 795
    .local v1, "conditionalExpression":Lcom/sun/source/tree/ConditionalExpressionTree;
    invoke-virtual {v5, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 796
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 797
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_31
    const-string v6, "trueExpression"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 798
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 800
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_32
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 802
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 773
    .end local v1    # "conditionalExpression":Lcom/sun/source/tree/ConditionalExpressionTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_18
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/CatchTree;

    .line 774
    .local v1, "cach":Lcom/sun/source/tree/CatchTree;
    invoke-virtual {v5, v14}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 775
    invoke-interface {v1}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 777
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_33
    invoke-interface {v1}, Lcom/sun/source/tree/CatchTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v6

    .line 779
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 759
    .end local v1    # "cach":Lcom/sun/source/tree/CatchTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_19
    move/from16 v10, p2

    move-object v6, v7

    check-cast v6, Lcom/sun/source/tree/CaseTree;

    .line 760
    .local v6, "caze":Lcom/sun/source/tree/CaseTree;
    invoke-virtual {v5, v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 761
    invoke-interface {v6}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    move-object v6, v1

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v1, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 763
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_34
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v1

    .line 764
    .local v1, "arg":I
    invoke-interface {v6}, Lcom/sun/source/tree/CaseTree;->getStatements()Ljava/util/List;

    move-result-object v11

    .line 765
    .local v11, "statements":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v1, v12, :cond_35

    .line 766
    const/4 v9, 0x0

    return v9

    .line 768
    :cond_35
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 770
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "statements":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    .local v1, "next":Lcom/sun/source/tree/Tree;
    move-object v6, v1

    goto/16 :goto_8

    .line 749
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .end local v6    # "caze":Lcom/sun/source/tree/CaseTree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_1a
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/BlockTree;

    .line 750
    .local v1, "block":Lcom/sun/source/tree/BlockTree;
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 751
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v11

    .line 752
    .restart local v11    # "statements":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    invoke-interface {v1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_36

    .line 753
    const/4 v9, 0x0

    return v9

    .line 755
    :cond_36
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Lcom/sun/source/tree/Tree;

    .line 756
    move-object v6, v8

    goto/16 :goto_8

    .line 740
    .end local v1    # "block":Lcom/sun/source/tree/BlockTree;
    .end local v6    # "arg":I
    .end local v11    # "statements":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    :pswitch_1b
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/AssignmentTree;

    .line 741
    .local v1, "assignment":Lcom/sun/source/tree/AssignmentTree;
    invoke-virtual {v5, v15}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 742
    invoke-interface {v1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 744
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_37
    invoke-interface {v1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 746
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 731
    .end local v1    # "assignment":Lcom/sun/source/tree/AssignmentTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_1c
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/AssertTree;

    .line 732
    .local v1, "azzert":Lcom/sun/source/tree/AssertTree;
    invoke-virtual {v5, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 733
    invoke-interface {v1}, Lcom/sun/source/tree/AssertTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 735
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_38
    invoke-interface {v1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 737
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 726
    .end local v1    # "azzert":Lcom/sun/source/tree/AssertTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_1d
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ArrayTypeTree;

    .line 727
    .local v1, "arrayType":Lcom/sun/source/tree/ArrayTypeTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    .line 728
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 717
    .end local v1    # "arrayType":Lcom/sun/source/tree/ArrayTypeTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_1e
    move/from16 v10, p2

    move-object v6, v7

    check-cast v6, Lcom/sun/source/tree/ArrayAccessTree;

    .line 718
    .local v6, "arrayAccess":Lcom/sun/source/tree/ArrayAccessTree;
    invoke-virtual {v5, v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 719
    invoke-interface {v6}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    move-object v6, v1

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v1, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 721
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_39
    invoke-interface {v6}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 723
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v1    # "next":Lcom/sun/source/tree/Tree;
    move-object v6, v1

    goto/16 :goto_8

    .line 703
    .end local v1    # "next":Lcom/sun/source/tree/Tree;
    .end local v6    # "arrayAccess":Lcom/sun/source/tree/ArrayAccessTree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_1f
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 704
    .local v1, "annotatedType":Lcom/sun/source/tree/AnnotatedTypeTree;
    const-string v6, "annotation"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 705
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 706
    .local v6, "arg":I
    invoke-interface {v1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v11

    .line 707
    .local v11, "annos":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_3a

    .line 708
    const/4 v9, 0x0

    return v9

    .line 710
    :cond_3a
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 711
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .end local v11    # "annos":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    .local v6, "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 712
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_3b
    invoke-interface {v1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 714
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1101
    .end local v1    # "annotatedType":Lcom/sun/source/tree/AnnotatedTypeTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_20
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/VariableTree;

    .line 1102
    .local v1, "var":Lcom/sun/source/tree/VariableTree;
    invoke-virtual {v5, v13}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1103
    invoke-interface {v1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 1105
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_3c
    invoke-interface {v1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    .line 1107
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 916
    .end local v1    # "var":Lcom/sun/source/tree/VariableTree;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :pswitch_21
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/MethodTree;

    .line 917
    .local v1, "method":Lcom/sun/source/tree/MethodTree;
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v11

    .line 918
    .local v11, "arg":I
    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 919
    invoke-interface {v1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 920
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_3d
    invoke-virtual {v5, v14}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 921
    const/4 v6, -0x1

    if-ne v11, v6, :cond_3e

    invoke-interface {v1}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v6

    goto :goto_4

    .line 922
    :cond_3e
    invoke-interface {v1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    :goto_4
    nop

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 923
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_3f
    const-string v6, "typeParameter"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 924
    invoke-interface {v1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 925
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_40
    const-string v6, "body"

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 926
    invoke-interface {v1}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto/16 :goto_8

    .line 928
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_41
    const/4 v6, 0x0

    return v6

    .line 782
    .end local v1    # "method":Lcom/sun/source/tree/MethodTree;
    .end local v11    # "arg":I
    :pswitch_22
    move/from16 v10, p2

    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/ClassTree;

    .line 783
    .local v1, "clazz":Lcom/sun/source/tree/ClassTree;
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    .line 784
    .local v6, "arg":I
    const-string v11, "bound"

    invoke-virtual {v5, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_43

    .line 785
    const/4 v11, -0x1

    if-ne v6, v11, :cond_42

    invoke-interface {v1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v11

    goto :goto_5

    .line 786
    :cond_42
    invoke-interface {v1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/source/tree/Tree;

    :goto_5
    move-object v8, v11

    move-object v6, v8

    goto/16 :goto_8

    .line 788
    :cond_43
    invoke-interface {v1}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    check-cast v8, Lcom/sun/source/tree/Tree;

    .line 790
    move-object v6, v8

    goto/16 :goto_8

    .line 1124
    .end local v6    # "arg":I
    .local v1, "binary":Lcom/sun/source/tree/BinaryTree;
    :cond_44
    invoke-interface {v1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 1126
    .end local v1    # "binary":Lcom/sun/source/tree/BinaryTree;
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v6, "next":Lcom/sun/source/tree/Tree;
    :goto_6
    goto/16 :goto_8

    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_45
    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-static {v1}, Lscenelib/annotations/io/ASTPath;->isCompoundAssignment(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1127
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/CompoundAssignmentTree;

    .line 1129
    .local v1, "compoundAssignment":Lcom/sun/source/tree/CompoundAssignmentTree;
    invoke-virtual {v5, v15}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1130
    invoke-interface {v1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto :goto_7

    .line 1132
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_46
    invoke-interface {v1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 1134
    .end local v1    # "compoundAssignment":Lcom/sun/source/tree/CompoundAssignmentTree;
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    :goto_7
    goto :goto_8

    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_47
    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-static {v1}, Lscenelib/annotations/io/ASTPath;->isUnaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1135
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/UnaryTree;

    .line 1136
    .local v1, "unary":Lcom/sun/source/tree/UnaryTree;
    invoke-interface {v1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 1137
    .end local v1    # "unary":Lcom/sun/source/tree/UnaryTree;
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .restart local v6    # "next":Lcom/sun/source/tree/Tree;
    goto :goto_8

    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_48
    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-static {v1}, Lscenelib/annotations/io/ASTPath;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1138
    move-object v1, v7

    check-cast v1, Lcom/sun/source/tree/WildcardTree;

    .line 1143
    .local v1, "wildcard":Lcom/sun/source/tree/WildcardTree;
    if-lez v4, :cond_4a

    .line 1144
    add-int/lit8 v6, v4, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 1145
    .local v6, "ancestor":Lcom/sun/source/tree/Tree;
    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    if-ne v11, v12, :cond_49

    .line 1146
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "WARNING: wildcard bounds not allowed in \'instanceof\' expression; skipping insertion"

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1148
    const/4 v9, 0x0

    return v9

    .line 1149
    :cond_49
    const/4 v11, 0x1

    if-le v4, v11, :cond_4a

    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v11, v12, :cond_4a

    .line 1151
    add-int/lit8 v11, v4, -0x2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 1152
    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v11, v12, :cond_4a

    .line 1153
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "WARNING: wildcard bounds not allowed in generic array type; skipping insertion"

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1155
    const/4 v9, 0x0

    return v9

    .line 1159
    .end local v6    # "ancestor":Lcom/sun/source/tree/Tree;
    :cond_4a
    invoke-interface {v1}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v6

    .line 1160
    .end local v1    # "wildcard":Lcom/sun/source/tree/WildcardTree;
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    .local v6, "next":Lcom/sun/source/tree/Tree;
    nop

    .line 1168
    :goto_8
    invoke-virtual {v9}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1169
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, "nextString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v11, 0x50

    if-le v8, v11, :cond_4b

    .line 1171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "..."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    :cond_4b
    const-string v8, "next: %s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    .end local v1    # "nextString":Ljava/lang/String;
    :cond_4c
    add-int/lit8 v1, v4, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v6, v1, :cond_4d

    .line 1176
    const-string v1, "no next match%n"

    const/4 v8, 0x0

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v1, v11}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    return v8

    .line 685
    .end local v5    # "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .end local v7    # "actualNode":Lcom/sun/source/tree/Tree;
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1161
    .restart local v5    # "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v7    # "actualNode":Lcom/sun/source/tree/Tree;
    .restart local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal kind: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1162
    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    .end local v5    # "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v7    # "actualNode":Lcom/sun/source/tree/Tree;
    .end local v8    # "next":Lcom/sun/source/tree/Tree;
    :cond_4f
    move/from16 v10, p2

    .line 1180
    .end local v4    # "i":I
    const/4 v1, 0x1

    return v1

    .line 680
    :cond_50
    move/from16 v10, p2

    .line 682
    :goto_9
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
