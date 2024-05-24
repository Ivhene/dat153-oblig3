.class public Lannotator/find/ASTPathCriterion;
.super Ljava/lang/Object;
.source "ASTPathCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static debug:Z


# instance fields
.field astPath:Lscenelib/annotations/io/ASTPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    nop

    .line 68
    sget-boolean v0, Lannotator/Main;->debug:Z

    sput-boolean v0, Lannotator/find/ASTPathCriterion;->debug:Z

    return-void
.end method

.method public constructor <init>(Lscenelib/annotations/io/ASTPath;)V
    .locals 0
    .param p1, "astPath"    # Lscenelib/annotations/io/ASTPath;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lannotator/find/ASTPathCriterion;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p0, "x0"    # Lannotator/find/ASTPathCriterion;
    .param p1, "x1"    # Lcom/sun/source/tree/Tree;
    .param p2, "x2"    # Lcom/sun/source/tree/Tree;

    .line 66
    invoke-direct {p0, p1, p2}, Lannotator/find/ASTPathCriterion;->matchNext(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v0

    return v0
.end method

.method private static arrayDepth(Lcom/sun/source/tree/Tree;)I
    .locals 8
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 809
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 810
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/NewArrayTree;

    .line 811
    .local v0, "newArray":Lcom/sun/source/tree/NewArrayTree;
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 812
    .local v1, "type":Lcom/sun/source/tree/Tree;
    if-eqz v1, :cond_0

    .line 813
    new-instance v3, Lannotator/find/ASTPathCriterion$2;

    invoke-direct {v3}, Lannotator/find/ASTPathCriterion$2;-><init>()V

    .line 822
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 813
    invoke-interface {v1, v3, v2}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 824
    :cond_0
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 825
    .local v3, "depth":I
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/ExpressionTree;

    .line 826
    .local v5, "elem":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    .line 827
    .local v6, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_2

    .line 829
    :cond_1
    invoke-static {v5}, Lannotator/find/ASTPathCriterion;->arrayDepth(Lcom/sun/source/tree/Tree;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 831
    .end local v5    # "elem":Lcom/sun/source/tree/ExpressionTree;
    .end local v6    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :cond_2
    goto :goto_0

    .line 832
    :cond_3
    return v3

    .line 833
    .end local v0    # "newArray":Lcom/sun/source/tree/NewArrayTree;
    .end local v1    # "type":Lcom/sun/source/tree/Tree;
    .end local v3    # "depth":I
    :cond_4
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_5

    .line 834
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v0}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lannotator/find/ASTPathCriterion;->arrayDepth(Lcom/sun/source/tree/Tree;)I

    move-result v0

    return v0

    .line 835
    :cond_5
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_6

    .line 836
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0}, Lannotator/find/ASTPathCriterion;->arrayDepth(Lcom/sun/source/tree/Tree;)I

    move-result v0

    add-int/2addr v0, v2

    return v0

    .line 838
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private checkNull(Ljava/util/List;I)Z
    .locals 13
    .param p2, "ix"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/Tree;",
            ">;I)Z"
        }
    .end annotation

    .line 734
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 735
    .local v0, "node":Lcom/sun/source/tree/Tree;
    iget-object v2, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 736
    .local v2, "last":I
    iget-object v3, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v3, p2}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 737
    .local v3, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    .line 739
    .local v4, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v5, Lannotator/find/ASTPathCriterion$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "bound"

    const/4 v8, -0x1

    const/4 v9, 0x0

    sparse-switch v5, :sswitch_data_0

    .line 804
    return v9

    .line 802
    :sswitch_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {p0, p1, v5}, Lannotator/find/ASTPathCriterion;->isBoundableWildcard(Ljava/util/List;I)Z

    move-result v1

    return v1

    .line 747
    :sswitch_1
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_0

    if-ne p2, v2, :cond_0

    .line 748
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v5

    if-nez v5, :cond_0

    .line 749
    invoke-virtual {v3, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v9

    .line 747
    :goto_0
    return v1

    .line 779
    :sswitch_2
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-eq v5, v7, :cond_1

    return v9

    .line 780
    :cond_1
    move-object v5, v0

    check-cast v5, Lcom/sun/source/tree/NewArrayTree;

    .line 781
    .local v5, "newArray":Lcom/sun/source/tree/NewArrayTree;
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v7

    .line 782
    .local v7, "arg":I
    const-string v8, "type"

    invoke-virtual {v3, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 783
    if-ne p2, v2, :cond_2

    return v1

    .line 790
    :cond_2
    invoke-static {v5}, Lannotator/find/ASTPathCriterion;->arrayDepth(Lcom/sun/source/tree/Tree;)I

    move-result v6

    if-ne v7, v6, :cond_3

    goto :goto_1

    :cond_3
    move v1, v9

    :goto_1
    return v1

    .line 792
    :cond_4
    nop

    .line 793
    const-string v8, "dimension"

    invoke-virtual {v3, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 794
    invoke-interface {v5}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_5
    nop

    .line 795
    const-string v8, "initializer"

    invoke-virtual {v3, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 796
    invoke-interface {v5}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_6
    nop

    :goto_2
    nop

    .line 798
    .local v6, "typeTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    add-int/lit8 v8, p2, 0x1

    .line 799
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/source/tree/Tree;

    invoke-direct {p0, v8, v10}, Lannotator/find/ASTPathCriterion;->checkTypePath(ILcom/sun/source/tree/Tree;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    move v1, v9

    .line 798
    :goto_3
    return v1

    .line 751
    .end local v5    # "newArray":Lcom/sun/source/tree/NewArrayTree;
    .end local v6    # "typeTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v7    # "arg":I
    :sswitch_3
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v5, v7, :cond_8

    return v9

    .line 752
    :cond_8
    move-object v5, v0

    check-cast v5, Lcom/sun/source/tree/MethodTree;

    .line 753
    .local v5, "method":Lcom/sun/source/tree/MethodTree;
    invoke-interface {v5}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v7

    .line 754
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {v5}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "<init>"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "parameter"

    if-eqz v10, :cond_d

    .line 755
    if-ne p2, v2, :cond_9

    return v1

    .line 756
    :cond_9
    iget-object v8, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    add-int/2addr p2, v1

    invoke-virtual {v8, p2}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 757
    .local v8, "next":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getChildSelector()Ljava/lang/String;

    move-result-object v10

    .line 758
    .local v10, "selector":Ljava/lang/String;
    nop

    .line 759
    const-string v12, "typeParameter"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 760
    invoke-interface {v5}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    goto :goto_4

    :cond_a
    nop

    .line 761
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 762
    invoke-virtual {v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v6}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    goto :goto_4

    :cond_b
    nop

    :goto_4
    nop

    .line 764
    .local v6, "typeTree":Lcom/sun/source/tree/Tree;
    if-eqz v6, :cond_c

    invoke-direct {p0, p2, v6}, Lannotator/find/ASTPathCriterion;->checkTypePath(ILcom/sun/source/tree/Tree;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_5

    :cond_c
    move v1, v9

    :goto_5
    return v1

    .line 765
    .end local v6    # "typeTree":Lcom/sun/source/tree/Tree;
    .end local v8    # "next":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v10    # "selector":Ljava/lang/String;
    :cond_d
    invoke-virtual {v3, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 766
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v6

    if-ne v6, v8, :cond_10

    .line 767
    if-ne p2, v2, :cond_e

    return v1

    .line 768
    :cond_e
    invoke-interface {v5}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v1

    .line 769
    .local v1, "rcvrParam":Lcom/sun/source/tree/VariableTree;
    if-nez v1, :cond_f

    goto :goto_6

    .line 774
    :cond_f
    add-int/lit8 v6, p2, 0x1

    invoke-interface {v1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lannotator/find/ASTPathCriterion;->checkTypePath(ILcom/sun/source/tree/Tree;)Z

    move-result v6

    return v6

    .line 777
    .end local v1    # "rcvrParam":Lcom/sun/source/tree/VariableTree;
    :cond_10
    :goto_6
    return v9

    .line 743
    .end local v5    # "method":Lcom/sun/source/tree/MethodTree;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    :sswitch_4
    invoke-static {v4}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v5

    if-eqz v5, :cond_11

    if-ne p2, v2, :cond_11

    .line 744
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v5

    if-ne v5, v8, :cond_11

    .line 745
    invoke-virtual {v3, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_11
    move v1, v9

    .line 743
    :goto_7
    return v1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0x18 -> :sswitch_3
        0x1a -> :sswitch_2
        0x24 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkReceiverType(ILcom/sun/tools/javac/code/Type;)Z
    .locals 5
    .param p1, "i"    # I
    .param p2, "t"    # Lcom/sun/tools/javac/code/Type;

    .line 843
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 844
    :cond_0
    :goto_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    iget-object v2, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v2

    if-ge p1, v2, :cond_a

    .line 845
    iget-object v1, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v1, p1}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 846
    .local v1, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    sget-object v2, Lannotator/find/ASTPathCriterion$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 882
    return v0

    .line 874
    :sswitch_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_1

    return v0

    .line 875
    :cond_1
    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type$WildcardType;->getSuperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 876
    goto :goto_1

    .line 870
    :sswitch_1
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_2

    return v0

    .line 871
    :cond_2
    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type$WildcardType;->getExtendsBound()Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 872
    goto :goto_1

    .line 878
    :sswitch_2
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_3

    return v0

    .line 879
    :cond_3
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getLowerBound()Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 880
    goto :goto_1

    .line 866
    :sswitch_3
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_4

    return v0

    .line 867
    :cond_4
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getLowerBound()Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 868
    goto :goto_1

    .line 857
    :sswitch_4
    const-string v2, "typeParameter"

    invoke-virtual {v1, v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 858
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 859
    :cond_5
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 860
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Type;>;"
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 861
    .local v3, "a":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    return v0

    .line 862
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object p2, v4

    check-cast p2, Lcom/sun/tools/javac/code/Type;

    .line 863
    .end local v2    # "args":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Type;>;"
    .end local v3    # "a":I
    goto :goto_1

    .line 855
    :sswitch_5
    goto :goto_1

    .line 850
    :sswitch_6
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_7

    return v0

    .line 851
    :cond_7
    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type$ArrayType;->getComponentType()Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 852
    goto :goto_1

    .line 848
    :sswitch_7
    nop

    .line 884
    :cond_8
    :goto_1
    if-nez p2, :cond_9

    return v0

    .line 885
    .end local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_9
    goto/16 :goto_0

    .line 886
    :cond_a
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x3 -> :sswitch_6
        0x17 -> :sswitch_5
        0x1c -> :sswitch_4
        0x24 -> :sswitch_3
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private checkTypePath(ILcom/sun/source/tree/Tree;)Z
    .locals 5
    .param p1, "i"    # I
    .param p2, "typeTree"    # Lcom/sun/source/tree/Tree;

    .line 933
    nop

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v1, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 934
    iget-object v1, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v1, p1}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 935
    .local v1, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    .line 936
    .local v2, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v3, Lannotator/find/ASTPathCriterion$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 957
    invoke-direct {p0, v2}, Lannotator/find/ASTPathCriterion;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v3

    goto :goto_2

    .line 948
    :sswitch_0
    const-string v3, "typeArgument"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 950
    .local v3, "arg":I
    move-object v4, p2

    check-cast v4, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 951
    invoke-interface {v4}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/Tree;

    move-object p2, v4

    .line 952
    .end local v3    # "arg":I
    goto :goto_1

    .line 953
    :cond_0
    move-object v3, p2

    check-cast v3, Lcom/sun/source/tree/ParameterizedTypeTree;

    invoke-interface {v3}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    move-object p2, v0

    .line 955
    goto :goto_1

    .line 945
    :sswitch_1
    move-object v3, p2

    check-cast v3, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v3}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    move-object p2, v0

    .line 946
    goto :goto_1

    .line 942
    :sswitch_2
    move-object v3, p2

    check-cast v3, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v3}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    move-object p2, v0

    .line 943
    nop

    .line 962
    :goto_1
    nop

    .end local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v2    # "kind":Lcom/sun/source/tree/Tree$Kind;
    add-int/lit8 p1, p1, 0x1

    .line 963
    goto :goto_0

    .line 938
    .restart local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v2    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :sswitch_3
    move-object v3, p2

    check-cast v3, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 939
    invoke-interface {v3}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    move-object p2, v0

    .line 940
    goto :goto_0

    .line 957
    :goto_2
    if-eqz v3, :cond_2

    .line 958
    add-int/lit8 p1, p1, 0x1

    iget-object v3, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 964
    .end local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v2    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :catch_0
    move-exception v1

    :cond_2
    nop

    .line 965
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_2
        0x17 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method private getNext(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTPath;I)Lcom/sun/source/tree/Tree;
    .locals 11
    .param p1, "actualNode"    # Lcom/sun/source/tree/Tree;
    .param p2, "astPath"    # Lscenelib/annotations/io/ASTPath;
    .param p3, "ix"    # I

    .line 293
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p3}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 294
    .local v1, "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    sget-object v2, Lannotator/find/ASTPathCriterion$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "typeParameter"

    const-string v4, "typeArgument"

    const-string v5, "initializer"

    const-string v6, "parameter"

    const-string v7, "variable"

    const-string v8, "type"

    const-string v9, "condition"

    const-string v10, "expression"

    packed-switch v2, :pswitch_data_0

    .line 703
    :try_start_1
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    goto/16 :goto_4

    .line 695
    :pswitch_0
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/WhileLoopTree;

    .line 696
    .local v2, "whileLoop":Lcom/sun/source/tree/WhileLoopTree;
    invoke-virtual {v1, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    invoke-interface {v2}, Lcom/sun/source/tree/WhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 699
    :cond_0
    invoke-interface {v2}, Lcom/sun/source/tree/WhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    return-object v0

    .line 685
    .end local v2    # "whileLoop":Lcom/sun/source/tree/WhileLoopTree;
    :pswitch_1
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/VariableTree;

    .line 686
    .local v2, "var":Lcom/sun/source/tree/VariableTree;
    invoke-virtual {v1, v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    invoke-interface {v2}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 688
    :cond_1
    invoke-virtual {v1, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 689
    invoke-interface {v2}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0

    .line 691
    :cond_2
    return-object v0

    .line 673
    .end local v2    # "var":Lcom/sun/source/tree/VariableTree;
    :pswitch_2
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/UnionTypeTree;

    .line 674
    .local v2, "unionType":Lcom/sun/source/tree/UnionTypeTree;
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 675
    .local v3, "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/UnionTypeTree;->getTypeAlternatives()Ljava/util/List;

    move-result-object v4

    .line 676
    .local v4, "typeAlts":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 677
    return-object v0

    .line 679
    :cond_3
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 667
    .end local v2    # "unionType":Lcom/sun/source/tree/UnionTypeTree;
    .end local v3    # "arg":I
    .end local v4    # "typeAlts":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :pswitch_3
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/TypeParameterTree;

    .line 668
    .local v2, "typeParam":Lcom/sun/source/tree/TypeParameterTree;
    invoke-interface {v2}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v3

    .line 669
    .local v3, "bounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v4

    .line 670
    .local v4, "arg":I
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 659
    .end local v2    # "typeParam":Lcom/sun/source/tree/TypeParameterTree;
    .end local v3    # "bounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .end local v4    # "arg":I
    :pswitch_4
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/TypeCastTree;

    .line 660
    .local v2, "typeCast":Lcom/sun/source/tree/TypeCastTree;
    invoke-virtual {v1, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 661
    invoke-interface {v2}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0

    .line 663
    :cond_4
    invoke-interface {v2}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 637
    .end local v2    # "typeCast":Lcom/sun/source/tree/TypeCastTree;
    :pswitch_5
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/TryTree;

    .line 638
    .local v2, "tryy":Lcom/sun/source/tree/TryTree;
    const-string v3, "block"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 639
    invoke-interface {v2}, Lcom/sun/source/tree/TryTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    return-object v0

    .line 640
    :cond_5
    const-string v3, "catch"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 641
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 642
    .local v3, "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v4

    .line 643
    .local v4, "catches":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CatchTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_6

    .line 644
    return-object v0

    .line 646
    :cond_6
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 647
    .end local v3    # "arg":I
    .end local v4    # "catches":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CatchTree;>;"
    :cond_7
    const-string v3, "finallyBlock"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 648
    invoke-interface {v2}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    return-object v0

    .line 650
    :cond_8
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 651
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v4

    .line 652
    .local v4, "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_9

    .line 653
    return-object v0

    .line 655
    :cond_9
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 633
    .end local v2    # "tryy":Lcom/sun/source/tree/TryTree;
    .end local v3    # "arg":I
    .end local v4    # "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :pswitch_6
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ThrowTree;

    .line 634
    .local v2, "throww":Lcom/sun/source/tree/ThrowTree;
    invoke-interface {v2}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 625
    .end local v2    # "throww":Lcom/sun/source/tree/ThrowTree;
    :pswitch_7
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/SynchronizedTree;

    .line 626
    .local v2, "synchronizzed":Lcom/sun/source/tree/SynchronizedTree;
    invoke-virtual {v1, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 627
    invoke-interface {v2}, Lcom/sun/source/tree/SynchronizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 629
    :cond_a
    invoke-interface {v2}, Lcom/sun/source/tree/SynchronizedTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    return-object v0

    .line 612
    .end local v2    # "synchronizzed":Lcom/sun/source/tree/SynchronizedTree;
    :pswitch_8
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/SwitchTree;

    .line 613
    .local v2, "zwitch":Lcom/sun/source/tree/SwitchTree;
    invoke-virtual {v1, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 614
    invoke-interface {v2}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 616
    :cond_b
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 617
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object v4

    .line 618
    .local v4, "cases":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CaseTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_c

    .line 619
    return-object v0

    .line 621
    :cond_c
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 608
    .end local v2    # "zwitch":Lcom/sun/source/tree/SwitchTree;
    .end local v3    # "arg":I
    .end local v4    # "cases":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CaseTree;>;"
    :pswitch_9
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ReturnTree;

    .line 609
    .local v2, "returnn":Lcom/sun/source/tree/ReturnTree;
    invoke-interface {v2}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 604
    .end local v2    # "returnn":Lcom/sun/source/tree/ReturnTree;
    :pswitch_a
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ParenthesizedTree;

    .line 605
    .local v2, "parenthesized":Lcom/sun/source/tree/ParenthesizedTree;
    invoke-interface {v2}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 591
    .end local v2    # "parenthesized":Lcom/sun/source/tree/ParenthesizedTree;
    :pswitch_b
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 592
    .local v2, "parameterizedType":Lcom/sun/source/tree/ParameterizedTypeTree;
    invoke-virtual {v1, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 593
    invoke-interface {v2}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0

    .line 595
    :cond_d
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 596
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    .line 597
    .local v4, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_e

    .line 598
    return-object v0

    .line 600
    :cond_e
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 567
    .end local v2    # "parameterizedType":Lcom/sun/source/tree/ParameterizedTypeTree;
    .end local v3    # "arg":I
    .end local v4    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :pswitch_c
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/NewClassTree;

    .line 568
    .local v2, "newClass":Lcom/sun/source/tree/NewClassTree;
    const-string v3, "enclosingExpression"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 569
    invoke-interface {v2}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 570
    :cond_f
    invoke-virtual {v1, v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 571
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 572
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    .line 573
    .restart local v4    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_10

    .line 574
    return-object v0

    .line 576
    :cond_10
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 577
    .end local v3    # "arg":I
    .end local v4    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :cond_11
    const-string v3, "identifier"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 578
    invoke-interface {v2}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 579
    :cond_12
    const-string v3, "argument"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 580
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 581
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v4

    .line 582
    .local v4, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_13

    .line 583
    return-object v0

    .line 585
    :cond_13
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 587
    .end local v3    # "arg":I
    .end local v4    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :cond_14
    invoke-interface {v2}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    return-object v0

    .line 535
    .end local v2    # "newClass":Lcom/sun/source/tree/NewClassTree;
    :pswitch_d
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/NewArrayTree;

    .line 536
    .local v2, "newArray":Lcom/sun/source/tree/NewArrayTree;
    invoke-virtual {v1, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 537
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    .line 538
    .local v3, "type":Lcom/sun/tools/javac/code/Type;
    invoke-static {v3}, Lannotator/find/Insertions$TypeTree;->fromJavacType(Lcom/sun/tools/javac/code/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v4

    .line 539
    .local v4, "typeTree":Lcom/sun/source/tree/Tree;
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v5

    .line 540
    .local v5, "arg":I
    if-nez v5, :cond_15

    invoke-virtual {p2}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v6

    add-int/lit8 v7, p3, 0x1

    if-ne v6, v7, :cond_15

    .line 541
    return-object v2

    .line 547
    :cond_15
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/NewArrayTree;

    invoke-interface {v6}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    move-object v4, v6

    .line 548
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_17

    .line 549
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v6, v7, :cond_16

    .line 550
    return-object v0

    .line 552
    :cond_16
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v6}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 554
    :cond_17
    return-object v4

    .line 555
    .end local v3    # "type":Lcom/sun/tools/javac/code/Type;
    .end local v4    # "typeTree":Lcom/sun/source/tree/Tree;
    .end local v5    # "arg":I
    :cond_18
    const-string v3, "dimension"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 556
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 557
    .local v3, "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v4

    .line 558
    .local v4, "dims":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_19

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    move-object v0, v5

    :cond_19
    return-object v0

    .line 560
    .end local v3    # "arg":I
    .end local v4    # "dims":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :cond_1a
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 561
    .restart local v3    # "arg":I
    nop

    .line 562
    invoke-interface {v2}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v4

    .line 563
    .local v4, "inits":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1b

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    move-object v0, v5

    :cond_1b
    return-object v0

    .line 515
    .end local v2    # "newArray":Lcom/sun/source/tree/NewArrayTree;
    .end local v3    # "arg":I
    .end local v4    # "inits":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :pswitch_e
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/MethodInvocationTree;

    .line 516
    .local v2, "methodInvocation":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {v1, v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 517
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 518
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    .line 519
    .local v4, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1c

    .line 520
    return-object v0

    .line 522
    :cond_1c
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 523
    .end local v3    # "arg":I
    .end local v4    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :cond_1d
    const-string v3, "methodSelect"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 524
    invoke-interface {v2}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 526
    :cond_1e
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 527
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    .line 528
    .local v4, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1f

    .line 529
    return-object v0

    .line 531
    :cond_1f
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 498
    .end local v2    # "methodInvocation":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v3    # "arg":I
    .end local v4    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :pswitch_f
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/MethodTree;

    .line 499
    .local v2, "method":Lcom/sun/source/tree/MethodTree;
    invoke-virtual {v1, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 500
    invoke-interface {v2}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0

    .line 501
    :cond_20
    invoke-virtual {v1, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 502
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 503
    .restart local v3    # "arg":I
    nop

    .line 504
    invoke-interface {v2}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v4

    .line 505
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    if-gez v3, :cond_21

    invoke-interface {v2}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    goto :goto_1

    .line 506
    :cond_21
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_22

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    move-object v0, v5

    .line 505
    :cond_22
    :goto_1
    return-object v0

    .line 507
    .end local v3    # "arg":I
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    :cond_23
    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 508
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 509
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/Tree;

    return-object v4

    .line 511
    .end local v3    # "arg":I
    :cond_24
    invoke-interface {v2}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    return-object v0

    .line 494
    .end local v2    # "method":Lcom/sun/source/tree/MethodTree;
    :pswitch_10
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/MemberSelectTree;

    .line 495
    .local v2, "memberSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {v2}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 481
    .end local v2    # "memberSelect":Lcom/sun/source/tree/MemberSelectTree;
    :pswitch_11
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/MemberReferenceTree;

    .line 482
    .local v2, "memberReference":Lcom/sun/source/tree/MemberReferenceTree;
    const-string v3, "qualifierExpression"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 483
    invoke-interface {v2}, Lcom/sun/source/tree/MemberReferenceTree;->getQualifierExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 485
    :cond_25
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 486
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/MemberReferenceTree;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    .line 487
    .local v4, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_26

    .line 488
    return-object v0

    .line 490
    :cond_26
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 468
    .end local v2    # "memberReference":Lcom/sun/source/tree/MemberReferenceTree;
    .end local v3    # "arg":I
    .end local v4    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :pswitch_12
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 469
    .local v2, "lambdaExpression":Lcom/sun/source/tree/LambdaExpressionTree;
    invoke-virtual {v1, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 470
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 471
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v4

    .line 472
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_27

    .line 473
    return-object v0

    .line 475
    :cond_27
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 477
    .end local v3    # "arg":I
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    :cond_28
    invoke-interface {v2}, Lcom/sun/source/tree/LambdaExpressionTree;->getBody()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0

    .line 464
    .end local v2    # "lambdaExpression":Lcom/sun/source/tree/LambdaExpressionTree;
    :pswitch_13
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/LabeledStatementTree;

    .line 465
    .local v2, "labeledStatement":Lcom/sun/source/tree/LabeledStatementTree;
    invoke-interface {v2}, Lcom/sun/source/tree/LabeledStatementTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    return-object v0

    .line 456
    .end local v2    # "labeledStatement":Lcom/sun/source/tree/LabeledStatementTree;
    :pswitch_14
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/InstanceOfTree;

    .line 457
    .local v2, "instanceOf":Lcom/sun/source/tree/InstanceOfTree;
    invoke-virtual {v1, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 458
    invoke-interface {v2}, Lcom/sun/source/tree/InstanceOfTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 460
    :cond_29
    invoke-interface {v2}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0

    .line 446
    .end local v2    # "instanceOf":Lcom/sun/source/tree/InstanceOfTree;
    :pswitch_15
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/IfTree;

    .line 447
    .local v2, "iff":Lcom/sun/source/tree/IfTree;
    invoke-virtual {v1, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 448
    invoke-interface {v2}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 449
    :cond_2a
    const-string v3, "thenStatement"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 450
    invoke-interface {v2}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    return-object v0

    .line 452
    :cond_2b
    invoke-interface {v2}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    return-object v0

    .line 424
    .end local v2    # "iff":Lcom/sun/source/tree/IfTree;
    :pswitch_16
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ForLoopTree;

    .line 425
    .local v2, "forLoop":Lcom/sun/source/tree/ForLoopTree;
    invoke-virtual {v1, v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 426
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 427
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v4

    .line 428
    .local v4, "inits":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_2c

    .line 429
    return-object v0

    .line 431
    :cond_2c
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 432
    .end local v3    # "arg":I
    .end local v4    # "inits":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    :cond_2d
    invoke-virtual {v1, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 433
    invoke-interface {v2}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 434
    :cond_2e
    const-string v3, "update"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 435
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 436
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v4

    .line 437
    .local v4, "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionStatementTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_2f

    .line 438
    return-object v0

    .line 440
    :cond_2f
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 442
    .end local v3    # "arg":I
    .end local v4    # "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionStatementTree;>;"
    :cond_30
    invoke-interface {v2}, Lcom/sun/source/tree/ForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    return-object v0

    .line 420
    .end local v2    # "forLoop":Lcom/sun/source/tree/ForLoopTree;
    :pswitch_17
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ExpressionStatementTree;

    .line 421
    .local v2, "expressionStatement":Lcom/sun/source/tree/ExpressionStatementTree;
    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 410
    .end local v2    # "expressionStatement":Lcom/sun/source/tree/ExpressionStatementTree;
    :pswitch_18
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/EnhancedForLoopTree;

    .line 411
    .local v2, "enhancedForLoop":Lcom/sun/source/tree/EnhancedForLoopTree;
    invoke-virtual {v1, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 412
    invoke-interface {v2}, Lcom/sun/source/tree/EnhancedForLoopTree;->getVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    return-object v0

    .line 413
    :cond_31
    invoke-virtual {v1, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 414
    invoke-interface {v2}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 416
    :cond_32
    invoke-interface {v2}, Lcom/sun/source/tree/EnhancedForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    return-object v0

    .line 402
    .end local v2    # "enhancedForLoop":Lcom/sun/source/tree/EnhancedForLoopTree;
    :pswitch_19
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/DoWhileLoopTree;

    .line 403
    .local v2, "doWhileLoop":Lcom/sun/source/tree/DoWhileLoopTree;
    invoke-virtual {v1, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 404
    invoke-interface {v2}, Lcom/sun/source/tree/DoWhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 406
    :cond_33
    invoke-interface {v2}, Lcom/sun/source/tree/DoWhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    return-object v0

    .line 392
    .end local v2    # "doWhileLoop":Lcom/sun/source/tree/DoWhileLoopTree;
    :pswitch_1a
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ConditionalExpressionTree;

    .line 393
    .local v2, "conditionalExpression":Lcom/sun/source/tree/ConditionalExpressionTree;
    invoke-virtual {v1, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 394
    invoke-interface {v2}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 395
    :cond_34
    const-string v3, "trueExpression"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 396
    invoke-interface {v2}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 398
    :cond_35
    invoke-interface {v2}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 372
    .end local v2    # "conditionalExpression":Lcom/sun/source/tree/ConditionalExpressionTree;
    :pswitch_1b
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ClassTree;

    .line 373
    .local v2, "clazz":Lcom/sun/source/tree/ClassTree;
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v4

    .line 374
    .local v4, "arg":I
    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 375
    invoke-interface {v2}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    return-object v3

    .line 376
    :cond_36
    invoke-virtual {v1, v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, "i":I
    invoke-interface {v2}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 379
    .local v6, "member":Lcom/sun/source/tree/Tree;
    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_38

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    if-ne v4, v3, :cond_37

    .line 380
    return-object v6

    .line 379
    :cond_37
    move v3, v7

    .line 382
    .end local v6    # "member":Lcom/sun/source/tree/Tree;
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_38
    goto :goto_2

    .line 383
    :cond_39
    return-object v0

    .line 384
    .end local v3    # "i":I
    :cond_3a
    const-string v3, "bound"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 385
    if-gez v4, :cond_3b

    invoke-interface {v2}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v0

    goto :goto_3

    .line 386
    :cond_3b
    invoke-interface {v2}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    move-object v0, v3

    .line 385
    :goto_3
    return-object v0

    .line 388
    :cond_3c
    return-object v0

    .line 361
    .end local v2    # "clazz":Lcom/sun/source/tree/ClassTree;
    .end local v4    # "arg":I
    :pswitch_1c
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/CatchTree;

    .line 362
    .local v2, "cach":Lcom/sun/source/tree/CatchTree;
    invoke-virtual {v1, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 363
    invoke-interface {v2}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    return-object v0

    .line 365
    :cond_3d
    invoke-interface {v2}, Lcom/sun/source/tree/CatchTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    return-object v0

    .line 348
    .end local v2    # "cach":Lcom/sun/source/tree/CatchTree;
    :pswitch_1d
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/CaseTree;

    .line 349
    .local v2, "caze":Lcom/sun/source/tree/CaseTree;
    invoke-virtual {v1, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 350
    invoke-interface {v2}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 352
    :cond_3e
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 353
    .local v3, "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/CaseTree;->getStatements()Ljava/util/List;

    move-result-object v4

    .line 354
    .local v4, "statements":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_3f

    .line 355
    return-object v0

    .line 357
    :cond_3f
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 339
    .end local v2    # "caze":Lcom/sun/source/tree/CaseTree;
    .end local v3    # "arg":I
    .end local v4    # "statements":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    :pswitch_1e
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/BlockTree;

    .line 340
    .local v2, "block":Lcom/sun/source/tree/BlockTree;
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 341
    .restart local v3    # "arg":I
    invoke-interface {v2}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v4

    .line 342
    .restart local v4    # "statements":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    invoke-interface {v2}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_40

    .line 343
    return-object v0

    .line 345
    :cond_40
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 331
    .end local v2    # "block":Lcom/sun/source/tree/BlockTree;
    .end local v3    # "arg":I
    .end local v4    # "statements":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    :pswitch_1f
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/AssignmentTree;

    .line 332
    .local v2, "assignment":Lcom/sun/source/tree/AssignmentTree;
    invoke-virtual {v1, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 333
    invoke-interface {v2}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 335
    :cond_41
    invoke-interface {v2}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 323
    .end local v2    # "assignment":Lcom/sun/source/tree/AssignmentTree;
    :pswitch_20
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/AssertTree;

    .line 324
    .local v2, "azzert":Lcom/sun/source/tree/AssertTree;
    invoke-virtual {v1, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 325
    invoke-interface {v2}, Lcom/sun/source/tree/AssertTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 327
    :cond_42
    invoke-interface {v2}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 319
    .end local v2    # "azzert":Lcom/sun/source/tree/AssertTree;
    :pswitch_21
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ArrayTypeTree;

    .line 320
    .local v2, "arrayType":Lcom/sun/source/tree/ArrayTypeTree;
    invoke-interface {v2}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0

    .line 311
    .end local v2    # "arrayType":Lcom/sun/source/tree/ArrayTypeTree;
    :pswitch_22
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/ArrayAccessTree;

    .line 312
    .local v2, "arrayAccess":Lcom/sun/source/tree/ArrayAccessTree;
    invoke-virtual {v1, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 313
    invoke-interface {v2}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 315
    :cond_43
    invoke-interface {v2}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 296
    .end local v2    # "arrayAccess":Lcom/sun/source/tree/ArrayAccessTree;
    :pswitch_23
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 298
    .local v2, "annotatedType":Lcom/sun/source/tree/AnnotatedTypeTree;
    const-string v3, "annotation"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 299
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    .line 300
    .restart local v3    # "arg":I
    nop

    .line 301
    invoke-interface {v2}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v4

    .line 302
    .local v4, "annos":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_44

    .line 303
    return-object v0

    .line 305
    :cond_44
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    return-object v5

    .line 307
    .end local v3    # "arg":I
    .end local v4    # "annos":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    :cond_45
    invoke-interface {v2}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 703
    .end local v2    # "annotatedType":Lcom/sun/source/tree/AnnotatedTypeTree;
    :goto_4
    invoke-static {v2}, Lscenelib/annotations/io/ASTPath;->isBinaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 704
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/BinaryTree;

    .line 705
    .local v2, "binary":Lcom/sun/source/tree/BinaryTree;
    const-string v3, "leftOperand"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 706
    invoke-interface {v2}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 708
    :cond_46
    invoke-interface {v2}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 710
    .end local v2    # "binary":Lcom/sun/source/tree/BinaryTree;
    :cond_47
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-static {v2}, Lscenelib/annotations/io/ASTPath;->isCompoundAssignment(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 711
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/CompoundAssignmentTree;

    .line 713
    .local v2, "compoundAssignment":Lcom/sun/source/tree/CompoundAssignmentTree;
    invoke-virtual {v1, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 714
    invoke-interface {v2}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 716
    :cond_48
    invoke-interface {v2}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 718
    .end local v2    # "compoundAssignment":Lcom/sun/source/tree/CompoundAssignmentTree;
    :cond_49
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-static {v2}, Lscenelib/annotations/io/ASTPath;->isUnaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 719
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/UnaryTree;

    .line 720
    .local v2, "unary":Lcom/sun/source/tree/UnaryTree;
    invoke-interface {v2}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 721
    .end local v2    # "unary":Lcom/sun/source/tree/UnaryTree;
    :cond_4a
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-direct {p0, v2}, Lannotator/find/ASTPathCriterion;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 722
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/WildcardTree;

    .line 723
    .local v2, "wildcard":Lcom/sun/source/tree/WildcardTree;
    invoke-interface {v2}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0

    .line 725
    .end local v2    # "wildcard":Lcom/sun/source/tree/WildcardTree;
    :cond_4b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal kind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 726
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "actualNode":Lcom/sun/source/tree/Tree;
    .end local p2    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local p3    # "ix":I
    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 730
    .end local v1    # "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local p1    # "actualNode":Lcom/sun/source/tree/Tree;
    .restart local p2    # "astPath":Lscenelib/annotations/io/ASTPath;
    .restart local p3    # "ix":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/RuntimeException;
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
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

.method private isBoundableWildcard(Ljava/util/List;I)Z
    .locals 7
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/Tree;",
            ">;I)Z"
        }
    .end annotation

    .line 1114
    .local p1, "actualPath":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 1115
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 1116
    .local v1, "actualNode":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_3

    .line 1119
    add-int/lit8 v2, p2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 1120
    .local v2, "ancestor":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    const-string v5, "WARNING: wildcard bounds not allowed in \'instanceof\' expression; skipping insertion%n"

    if-ne v3, v4, :cond_1

    .line 1121
    sget-object v3, Lannotator/find/TreeFinder;->warn:Lscenelib/annotations/io/DebugWriter;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    return v0

    .line 1124
    :cond_1
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v6, :cond_2

    .line 1126
    add-int/lit8 v4, p2, -0x2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 1127
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v6, :cond_2

    .line 1128
    sget-object v3, Lannotator/find/TreeFinder;->warn:Lscenelib/annotations/io/DebugWriter;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    return v0

    .line 1133
    :cond_2
    return v3

    .line 1135
    .end local v2    # "ancestor":Lcom/sun/source/tree/Tree;
    :cond_3
    return v0
.end method

.method private isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 1
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1104
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private kindsMatch(Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 1
    .param p1, "kind1"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "kind2"    # Lcom/sun/source/tree/Tree$Kind;

    .line 991
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 992
    :cond_0
    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    invoke-static {p2}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    goto :goto_0

    .line 994
    :cond_1
    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isCompoundAssignment(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    invoke-static {p2}, Lscenelib/annotations/io/ASTPath;->isCompoundAssignment(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    goto :goto_0

    .line 996
    :cond_2
    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isUnaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 997
    invoke-static {p2}, Lscenelib/annotations/io/ASTPath;->isUnaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    goto :goto_0

    .line 998
    :cond_3
    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isBinaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 999
    invoke-static {p2}, Lscenelib/annotations/io/ASTPath;->isBinaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    goto :goto_0

    .line 1000
    :cond_4
    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1001
    invoke-static {p2}, Lscenelib/annotations/io/ASTPath;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 991
    :goto_0
    return v0
.end method

.method private matchNext(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z
    .locals 4
    .param p1, "next"    # Lcom/sun/source/tree/Tree;
    .param p2, "node"    # Lcom/sun/source/tree/Tree;

    .line 209
    instance-of v0, p1, Lcom/sun/tools/javac/tree/JCTree;

    .line 210
    .local v0, "b1":Z
    instance-of v1, p2, Lcom/sun/tools/javac/tree/JCTree;

    .line 211
    .local v1, "b2":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 212
    move-object v2, p1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object p1

    goto :goto_0

    .line 213
    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 214
    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object p2

    .line 218
    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Lannotator/find/ASTPathCriterion$1;

    invoke-direct {v2, p0}, Lannotator/find/ASTPathCriterion$1;-><init>(Lannotator/find/ASTPathCriterion;)V

    invoke-interface {p1, v2, p2}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "ex":Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    return v3
.end method

.method private static methodReceiverType(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;
    .locals 11
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 890
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 891
    .local v0, "t":Lcom/sun/source/tree/Tree;
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    .line 892
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 893
    .local v1, "method":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    iget-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    return-object v3

    .line 900
    :cond_1
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 901
    .local v2, "parent":Lcom/sun/source/util/TreePath;
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 902
    .local v3, "leaf":Lcom/sun/source/tree/Tree;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    .line 906
    .local v4, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getReturnType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    .line 908
    .local v5, "skip":Z
    :goto_0
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->COMPILATION_UNIT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v8, :cond_a

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v8, :cond_a

    .line 910
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v8, :cond_3

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v8, :cond_3

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v8, :cond_3

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v8, :cond_8

    .line 914
    :cond_3
    move-object v8, v3

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 915
    .local v8, "clazz":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v9, :cond_5

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v9, :cond_5

    .line 917
    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getModifiers()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->getFlags()Ljava/util/Set;

    move-result-object v9

    sget-object v10, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    move v9, v7

    goto :goto_2

    :cond_5
    :goto_1
    move v9, v6

    .line 918
    .local v9, "isStatic":Z
    :goto_2
    if-nez v9, :cond_6

    move v10, v6

    goto :goto_3

    :cond_6
    move v10, v7

    :goto_3
    and-int/2addr v5, v10

    .line 919
    if-eqz v5, :cond_9

    if-eqz v9, :cond_7

    goto :goto_4

    .line 920
    :cond_7
    const/4 v5, 0x0

    .line 923
    .end local v8    # "clazz":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .end local v9    # "isStatic":Z
    :cond_8
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 924
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 925
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    goto :goto_0

    .line 919
    .restart local v8    # "clazz":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .restart local v9    # "isStatic":Z
    :cond_9
    :goto_4
    return-object v8

    .line 928
    .end local v8    # "clazz":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .end local v9    # "isStatic":Z
    :cond_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "no receiver for non-inner constructor"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 1140
    sget-object v0, Lannotator/find/Criterion$Kind;->AST_PATH:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isBinaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 1
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1013
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DIVIDE:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->REMAINDER:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MINUS:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->AND:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->XOR:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->OR:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_AND:Lcom/sun/source/tree/Tree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_OR:Lcom/sun/source/tree/Tree$Kind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isExpression(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1029
    sget-object v0, Lannotator/find/ASTPathCriterion$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1092
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1090
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 13
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 99
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 100
    return v0

    .line 109
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "actualPath":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 111
    .local v2, "leaf":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    .line 112
    .local v3, "kind":Lcom/sun/source/tree/Tree$Kind;
    :goto_0
    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_2

    invoke-static {v3}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 114
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    .line 115
    if-nez p1, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 117
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    goto :goto_0

    .line 122
    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    iget-object v4, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 123
    iget-object v4, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v4, v0}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    .line 124
    .local v4, "entryKind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_3

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v5, :cond_4

    :cond_3
    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_5

    .line 127
    invoke-static {v3}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    :cond_4
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    .end local v4    # "entryKind":Lcom/sun/source/tree/Tree$Kind;
    :cond_5
    sget-boolean v4, Lannotator/find/ASTPathCriterion;->debug:Z

    if-eqz v4, :cond_6

    .line 133
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "ASTPathCriterion.isSatisfiedBy"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  path elements:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    .line 137
    .local v5, "t":Lcom/sun/source/tree/Tree;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lannotator/Main;->treeToString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    .end local v5    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_2

    .line 141
    :cond_6
    iget-object v4, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v4

    .line 142
    .local v4, "astPathLen":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 143
    .local v5, "actualPathLen":I
    if-eqz v4, :cond_15

    if-nez v5, :cond_7

    goto/16 :goto_4

    .line 148
    :cond_7
    const/4 v6, 0x0

    .line 149
    .local v6, "next":Lcom/sun/source/tree/Tree;
    const/4 v7, 0x0

    .line 151
    .local v7, "i":I
    :goto_3
    iget-object v8, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v8, v7}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 152
    .local v8, "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/Tree;

    .line 153
    .local v9, "actualNode":Lcom/sun/source/tree/Tree;
    invoke-virtual {v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v10

    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lannotator/find/ASTPathCriterion;->kindsMatch(Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 154
    invoke-direct {p0, v1, v7}, Lannotator/find/ASTPathCriterion;->isBoundableWildcard(Ljava/util/List;I)Z

    move-result v0

    return v0

    .line 157
    :cond_8
    sget-boolean v10, Lannotator/find/ASTPathCriterion;->debug:Z

    if-eqz v10, :cond_9

    .line 158
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "astNode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "actualNode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :cond_9
    iget-object v10, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-direct {p0, v9, v10, v7}, Lannotator/find/ASTPathCriterion;->getNext(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTPath;I)Lcom/sun/source/tree/Tree;

    move-result-object v6

    .line 168
    if-nez v6, :cond_a

    .line 169
    invoke-direct {p0, v1, v7}, Lannotator/find/ASTPathCriterion;->checkNull(Ljava/util/List;I)Z

    move-result v0

    return v0

    .line 171
    :cond_a
    instance-of v10, v6, Lcom/sun/tools/javac/tree/JCTree;

    if-nez v10, :cond_b

    .line 173
    add-int/lit8 v10, v7, 0x1

    if-ne v5, v10, :cond_b

    .line 175
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 179
    :cond_b
    sget-boolean v10, Lannotator/find/ASTPathCriterion;->debug:Z

    if-eqz v10, :cond_c

    .line 180
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "next: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    :cond_c
    add-int/lit8 v7, v7, 0x1

    const-string v10, "no next match"

    if-lt v7, v4, :cond_11

    .line 196
    .end local v8    # "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v9    # "actualNode":Lcom/sun/source/tree/Tree;
    if-ge v7, v5, :cond_d

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/Tree;

    invoke-direct {p0, v6, v8}, Lannotator/find/ASTPathCriterion;->matchNext(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v8

    if-nez v8, :cond_e

    :cond_d
    if-gt v7, v5, :cond_f

    .line 198
    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v9, :cond_f

    .line 199
    :cond_e
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_f
    sget-boolean v8, Lannotator/find/ASTPathCriterion;->debug:Z

    if-eqz v8, :cond_10

    .line 203
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    :cond_10
    return v0

    .line 185
    .restart local v8    # "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v9    # "actualNode":Lcom/sun/source/tree/Tree;
    :cond_11
    if-lt v7, v5, :cond_12

    .line 186
    add-int/lit8 v0, v7, -0x1

    invoke-direct {p0, v1, v0}, Lannotator/find/ASTPathCriterion;->checkNull(Ljava/util/List;I)Z

    move-result v0

    return v0

    .line 188
    :cond_12
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/source/tree/Tree;

    invoke-direct {p0, v6, v11}, Lannotator/find/ASTPathCriterion;->matchNext(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 189
    sget-boolean v11, Lannotator/find/ASTPathCriterion;->debug:Z

    if-eqz v11, :cond_13

    .line 190
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    :cond_13
    return v0

    .line 194
    .end local v8    # "astNode":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v9    # "actualNode":Lcom/sun/source/tree/Tree;
    :cond_14
    goto/16 :goto_3

    .line 143
    .end local v6    # "next":Lcom/sun/source/tree/Tree;
    .end local v7    # "i":I
    :cond_15
    :goto_4
    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 90
    if-nez p1, :cond_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Lannotator/find/ASTPathCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASTPathCriterion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
