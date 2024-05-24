.class public Lannotator/find/Insertions;
.super Ljava/lang/Object;
.source "Insertions.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lannotator/find/Insertions$TypeTree;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lannotator/find/Insertion;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final byASTRecord:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private size:I

.field private store:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lannotator/find/Insertion;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    nop

    .line 1135
    new-instance v0, Lannotator/find/Insertions$2;

    invoke-direct {v0}, Lannotator/find/Insertions$2;-><init>()V

    sput-object v0, Lannotator/find/Insertions;->byASTRecord:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lannotator/find/Insertions;->store:Ljava/util/Map;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lannotator/find/Insertions;->size:I

    .line 85
    return-void
.end method

.method static synthetic access$000(Lannotator/find/Insertions;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lannotator/find/Insertions;

    .line 71
    iget-object v0, p0, Lannotator/find/Insertions;->store:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lannotator/find/Insertion;)I
    .locals 1
    .param p0, "x0"    # Lannotator/find/Insertion;

    .line 71
    invoke-static {p0}, Lannotator/find/Insertions;->kindLevel(Lannotator/find/Insertion;)I

    move-result v0

    return v0
.end method

.method private extendToInnerType(Lscenelib/annotations/io/ASTRecord;Ljava/util/List;)Lscenelib/annotations/io/ASTRecord;
    .locals 7
    .param p1, "rec"    # Lscenelib/annotations/io/ASTRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lscenelib/annotations/io/ASTRecord;"
        }
    .end annotation

    .line 854
    .local p2, "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    move-object v0, p1

    .line 855
    .local v0, "r":Lscenelib/annotations/io/ASTRecord;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 856
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    const/4 v2, 0x0

    .line 858
    .local v2, "depth":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "expression"

    if-eqz v3, :cond_2

    .line 859
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 860
    .local v3, "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    sget-object v5, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    iget-object v6, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 882
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 876
    :goto_1
    :pswitch_0
    add-int/lit8 v5, v2, -0x1

    .end local v2    # "depth":I
    .local v5, "depth":I
    if-lez v2, :cond_0

    .line 877
    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v2, v4}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    move v2, v5

    goto :goto_1

    .line 879
    :cond_0
    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    const-string v4, "bound"

    invoke-virtual {v0, v2, v4}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 880
    move v2, v5

    goto :goto_3

    .line 871
    .end local v5    # "depth":I
    .restart local v2    # "depth":I
    :pswitch_1
    const/4 v2, 0x0

    .line 872
    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    const-string v5, "typeArgument"

    iget v6, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v0, v4, v5, v6}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 874
    goto :goto_3

    .line 868
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    .line 869
    goto :goto_3

    .line 862
    :goto_2
    :pswitch_3
    add-int/lit8 v5, v2, -0x1

    .end local v2    # "depth":I
    .restart local v5    # "depth":I
    if-lez v2, :cond_1

    .line 863
    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v2, v4}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    move v2, v5

    goto :goto_2

    .line 865
    :cond_1
    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    const-string v4, "type"

    invoke-virtual {v0, v2, v4}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 866
    move v2, v5

    .line 884
    .end local v3    # "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    .end local v5    # "depth":I
    .restart local v2    # "depth":I
    :goto_3
    goto :goto_0

    .line 885
    :cond_2
    :goto_4
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "depth":I
    .local v3, "depth":I
    if-lez v2, :cond_3

    .line 886
    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v2, v4}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    move v2, v3

    goto :goto_4

    .line 888
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extendToInnerType(Lscenelib/annotations/io/ASTRecord;Ljava/util/List;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;
    .locals 10
    .param p1, "rec"    # Lscenelib/annotations/io/ASTRecord;
    .param p3, "node"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Lscenelib/annotations/io/ASTRecord;"
        }
    .end annotation

    .line 903
    .local p2, "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    move-object v0, p1

    .line 904
    .local v0, "r":Lscenelib/annotations/io/ASTRecord;
    move-object v1, p3

    .line 905
    .local v1, "t":Lcom/sun/source/tree/Tree;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 906
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 910
    .local v3, "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    :goto_0
    invoke-direct {p0, p3}, Lannotator/find/Insertions;->localDepth(Lcom/sun/source/tree/Tree;)I

    move-result v4

    .line 912
    .local v4, "d":I
    sget-object v5, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, "expression"

    const-string v7, "type"

    packed-switch v5, :pswitch_data_0

    .line 1014
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_6

    .line 914
    :pswitch_0
    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v5, v7}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 915
    move-object v5, v1

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;->getUnderlyingType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 916
    goto/16 :goto_6

    .line 1007
    :pswitch_1
    iget-object v5, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v5, v6, :cond_0

    .line 1008
    move-object v5, v1

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->getBound()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 1009
    goto/16 :goto_6

    .line 1011
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 979
    :pswitch_2
    if-nez v4, :cond_1

    iget-object v5, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v5, v8, :cond_1

    .line 980
    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    const-string v6, "typeArgument"

    iget v7, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v0, v5, v6, v7}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 982
    move-object v5, v1

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    iget v6, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 983
    goto/16 :goto_6

    .line 984
    :cond_1
    if-lez v4, :cond_5

    iget-object v5, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v5, v8, :cond_5

    .line 985
    move-object v5, v1

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v5

    .line 986
    .local v5, "temp":Lcom/sun/source/tree/Tree;
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v8, v7}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 987
    move-object v1, v5

    .line 989
    :goto_1
    move-object v7, v5

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    .line 990
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 992
    :cond_2
    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v7, v6}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 993
    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_2

    .line 994
    return-object v0

    .line 996
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 997
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 998
    goto/16 :goto_0

    .line 1000
    :cond_4
    iget-object v7, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v7, v8, :cond_5

    goto :goto_1

    .line 1002
    .end local v5    # "temp":Lcom/sun/source/tree/Tree;
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 938
    :pswitch_3
    if-lez v4, :cond_9

    iget-object v5, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v5, v7, :cond_9

    .line 939
    move-object v5, v1

    .line 941
    .restart local v5    # "temp":Lcom/sun/source/tree/Tree;
    :goto_2
    move-object v7, v5

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    .line 942
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 944
    :cond_6
    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v7, v6}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 945
    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_6

    .line 946
    return-object v0

    .line 948
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 949
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_8

    .line 950
    goto/16 :goto_0

    .line 952
    :cond_8
    iget-object v7, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v7, v8, :cond_9

    goto :goto_2

    .line 954
    .end local v5    # "temp":Lcom/sun/source/tree/Tree;
    :cond_9
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 919
    :pswitch_4
    if-nez v4, :cond_c

    iget-object v5, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v5, v6, :cond_c

    .line 920
    const/4 v5, 0x0

    .line 921
    .local v5, "a":I
    iget-object v6, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 922
    iget-object v6, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v6

    .line 923
    .local v6, "e":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v9, :cond_a

    .line 924
    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 925
    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 928
    .end local v6    # "e":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_a
    if-lez v5, :cond_b

    iget-object v6, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 929
    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v6

    invoke-virtual {v0, v6}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v6

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    .line 930
    invoke-virtual {v6, v8, v7, v5}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v6

    goto :goto_3

    :cond_b
    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    .line 931
    invoke-virtual {v0, v6, v7}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v6

    :goto_3
    move-object v0, v6

    .line 932
    move-object v6, v1

    check-cast v6, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v6}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 933
    goto :goto_6

    .line 935
    .end local v5    # "a":I
    :cond_c
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 957
    :pswitch_5
    if-nez v4, :cond_10

    .line 958
    iget-object v5, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 959
    iget-object v5, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v5

    .line 960
    .local v5, "e":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v8, :cond_f

    .line 961
    const/4 v6, 0x0

    .line 962
    .local v6, "a":I
    :goto_4
    iget-object v8, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v9, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v8, v9, :cond_e

    .line 963
    add-int/lit8 v6, v6, 0x1

    .line 964
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_5

    .line 965
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    goto :goto_4

    .line 967
    :cond_e
    :goto_5
    iget-object v8, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v8}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v8

    invoke-virtual {v0, v8}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    .line 968
    invoke-virtual {v8, v9, v7, v6}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 969
    goto :goto_6

    .line 972
    .end local v5    # "e":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v6    # "a":I
    :cond_f
    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v5, v7}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 973
    move-object v5, v1

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 974
    goto :goto_6

    .line 976
    :cond_10
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 1019
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_11

    return-object v0

    .line 1020
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 1021
    .end local v4    # "d":I
    goto/16 :goto_0

    .line 1015
    .restart local v4    # "d":I
    :cond_12
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private forClass(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .param p1, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "qualifiedClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lannotator/find/Insertion;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p3, "result":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "calling forClass(cut, %s, set of size %d)%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 136
    :cond_0
    invoke-static {p2}, Lannotator/find/Insertions;->outerClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "outerClass":Ljava/lang/String;
    iget-object v1, p0, Lannotator/find/Insertions;->store:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 138
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lannotator/find/Insertion;>;>;"
    if-eqz v1, :cond_3

    .line 139
    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Lannotator/find/Insertions;->byASTRecord:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 140
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    invoke-static {p2}, Lannotator/find/Insertions;->innerClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 141
    sget-boolean v3, Lannotator/Main;->temporaryDebug:Z

    if-eqz v3, :cond_1

    .line 142
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "organizeTypedInsertions argument set size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    :cond_1
    invoke-direct {p0, p1, p2, v2}, Lannotator/find/Insertions;->organizeTypedInsertions(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    .line 145
    .local v3, "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    sget-boolean v4, Lannotator/Main;->temporaryDebug:Z

    if-eqz v4, :cond_2

    .line 146
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "organizeTypedInsertions result set size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 150
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v3    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_3
    return-void
.end method

.method private static innerClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 1178
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1179
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1180
    const-string v1, ""

    return-object v1

    .line 1182
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static kindLevel(Lannotator/find/Insertion;)I
    .locals 2
    .param p0, "i"    # Lannotator/find/Insertion;

    .line 1118
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$annotator$find$Insertion$Kind:[I

    invoke-virtual {p0}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lannotator/find/Insertion$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1130
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unrecognized case"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1125
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1123
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1120
    :pswitch_3
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private localDepth(Lcom/sun/source/tree/Tree;)I
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 1089
    move-object v0, p1

    .line 1090
    .local v0, "t":Lcom/sun/source/tree/Tree;
    const/4 v1, 0x0

    .line 1092
    .local v1, "result":I
    :goto_0
    if-eqz v0, :cond_1

    .line 1093
    sget-object v2, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1109
    goto :goto_1

    .line 1095
    :sswitch_0
    move-object v2, v0

    check-cast v2, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v2}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 1096
    goto :goto_0

    .line 1098
    :sswitch_1
    instance-of v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    if-eqz v2, :cond_0

    .line 1099
    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 1100
    .local v2, "jfa":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->kind:Lcom/sun/tools/javac/code/Kinds$Kind;

    sget-object v4, Lcom/sun/tools/javac/code/Kinds$Kind;->PCK:Lcom/sun/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_0

    .line 1101
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1102
    goto :goto_0

    .line 1105
    .end local v2    # "jfa":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v2}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 1106
    add-int/lit8 v1, v1, 0x1

    .line 1107
    goto :goto_0

    .line 1112
    :cond_1
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private mergeTypedInsertions(Lannotator/find/TypedInsertion;Lannotator/find/TypedInsertion;)V
    .locals 2
    .param p1, "ins1"    # Lannotator/find/TypedInsertion;
    .param p2, "ins2"    # Lannotator/find/TypedInsertion;

    .line 1029
    invoke-virtual {p1}, Lannotator/find/TypedInsertion;->getType()Lscenelib/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lannotator/find/TypedInsertion;->getType()Lscenelib/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lannotator/find/Insertions;->mergeTypes(Lscenelib/type/Type;Lscenelib/type/Type;)V

    .line 1030
    return-void
.end method

.method private mergeTypes(Lscenelib/type/Type;Lscenelib/type/Type;)V
    .locals 8
    .param p1, "t1"    # Lscenelib/type/Type;
    .param p2, "t2"    # Lscenelib/type/Type;

    .line 1038
    if-ne p1, p2, :cond_0

    return-void

    .line 1039
    :cond_0
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$scenelib$type$Type$Kind:[I

    invoke-virtual {p1}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1080
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1060
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lscenelib/type/DeclaredType;

    .line 1061
    .local v0, "dt1":Lscenelib/type/DeclaredType;
    move-object v1, p2

    check-cast v1, Lscenelib/type/DeclaredType;

    .line 1062
    .local v1, "dt2":Lscenelib/type/DeclaredType;
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    .line 1063
    .local v2, "params1":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    invoke-virtual {v1}, Lscenelib/type/DeclaredType;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    .line 1064
    .local v3, "params2":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1065
    .local v4, "numParams":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 1068
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v5

    invoke-virtual {v1}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lannotator/find/Insertions;->mergeTypes(Lscenelib/type/Type;Lscenelib/type/Type;)V

    .line 1069
    invoke-virtual {v1}, Lscenelib/type/DeclaredType;->getAnnotations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1070
    .local v6, "anno":Ljava/lang/String;
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getAnnotations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1071
    invoke-virtual {v0, v6}, Lscenelib/type/DeclaredType;->addAnnotation(Ljava/lang/String;)V

    .line 1073
    .end local v6    # "anno":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1074
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 1075
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/type/Type;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/type/Type;

    invoke-direct {p0, v6, v7}, Lannotator/find/Insertions;->mergeTypes(Lscenelib/type/Type;Lscenelib/type/Type;)V

    .line 1074
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1077
    .end local v5    # "i":I
    :cond_3
    return-void

    .line 1066
    :cond_4
    new-instance v5, Ljava/lang/Error;

    const-string v6, "Types have different numbers of parameters: %s %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1049
    .end local v0    # "dt1":Lscenelib/type/DeclaredType;
    .end local v1    # "dt2":Lscenelib/type/DeclaredType;
    .end local v2    # "params1":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    .end local v3    # "params2":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    .end local v4    # "numParams":I
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lscenelib/type/BoundedType;

    .line 1050
    .local v0, "bt1":Lscenelib/type/BoundedType;
    move-object v1, p2

    check-cast v1, Lscenelib/type/BoundedType;

    .line 1051
    .local v1, "bt2":Lscenelib/type/BoundedType;
    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getBoundKind()Lscenelib/type/BoundedType$BoundKind;

    move-result-object v2

    invoke-virtual {v1}, Lscenelib/type/BoundedType;->getBoundKind()Lscenelib/type/BoundedType$BoundKind;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 1054
    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object v2

    invoke-virtual {v1}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lannotator/find/Insertions;->mergeTypes(Lscenelib/type/Type;Lscenelib/type/Type;)V

    .line 1055
    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getName()Lscenelib/type/DeclaredType;

    move-result-object v2

    invoke-virtual {v1}, Lscenelib/type/BoundedType;->getName()Lscenelib/type/DeclaredType;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lannotator/find/Insertions;->mergeTypes(Lscenelib/type/Type;Lscenelib/type/Type;)V

    .line 1056
    return-void

    .line 1052
    :cond_5
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Types have different bounds: %s %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1042
    .end local v0    # "bt1":Lscenelib/type/BoundedType;
    .end local v1    # "bt2":Lscenelib/type/BoundedType;
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lscenelib/type/ArrayType;

    .line 1043
    .local v0, "at1":Lscenelib/type/ArrayType;
    move-object v1, p2

    check-cast v1, Lscenelib/type/ArrayType;

    .line 1044
    .local v1, "at2":Lscenelib/type/ArrayType;
    invoke-virtual {v0}, Lscenelib/type/ArrayType;->getComponentType()Lscenelib/type/Type;

    move-result-object v2

    invoke-virtual {v1}, Lscenelib/type/ArrayType;->getComponentType()Lscenelib/type/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lannotator/find/Insertions;->mergeTypes(Lscenelib/type/Type;Lscenelib/type/Type;)V

    .line 1045
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private newArrayInnerTypeDepth(Lscenelib/annotations/io/ASTPath;)I
    .locals 5
    .param p1, "path"    # Lscenelib/annotations/io/ASTPath;

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, "result":I
    :goto_0
    invoke-virtual {p1}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 821
    invoke-virtual {p1}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    .line 822
    .local v1, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    sget-object v3, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 838
    return v2

    .line 827
    :pswitch_0
    const/4 v0, 0x0

    .line 828
    goto :goto_1

    .line 830
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 831
    nop

    .line 840
    :goto_1
    invoke-virtual {p1}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object p1

    .line 841
    .end local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_0

    .line 833
    .restart local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :pswitch_2
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->hasArgument()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 834
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v2

    add-int/2addr v0, v2

    .line 836
    :cond_0
    return v0

    .line 842
    .end local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private organizeTypedInsertions(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Set;
    .locals 37
    .param p1, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lannotator/find/Insertion;",
            ">;)",
            "Ljava/util/Set<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 267
    .local p3, "insertions":Ljava/util/Collection;, "Ljava/util/Collection<Lannotator/find/Insertion;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 268
    .local v9, "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v10, v0

    .line 269
    .local v10, "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 270
    .local v11, "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v12, v0

    .line 272
    .local v12, "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "organizeTypedInsertions (1): insertions.size()= %d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 282
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v15, "{"

    const/4 v7, 0x0

    const-string v6, "type"

    if-eqz v0, :cond_26

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lannotator/find/Insertion;

    .line 283
    .local v4, "ins":Lannotator/find/Insertion;
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_1

    .line 284
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lannotator/find/Insertion;->isInserted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Considering insertion %s (isInserted=%s)%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 286
    :cond_1
    invoke-virtual {v4}, Lannotator/find/Insertion;->isInserted()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {v4}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v3

    .line 288
    .local v3, "criteria":Lannotator/find/Criteria;
    nop

    .line 289
    invoke-virtual {v3}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v16

    .line 290
    .local v16, "galc":Lannotator/find/GenericArrayLocationCriterion;
    invoke-virtual {v3}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v2

    .line 291
    .local v2, "p":Lscenelib/annotations/io/ASTPath;
    const-string v0, "  organized now has size %d%n"

    const-string v14, "Adding to organized (size %d): %s%n"

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_23

    if-eqz v16, :cond_4

    .line 292
    invoke-virtual/range {v16 .. v16}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object/from16 v25, v10

    move-object/from16 v24, v13

    move-object v13, v4

    move-object/from16 v36, v3

    move-object v3, v2

    move-object/from16 v2, v36

    goto/16 :goto_11

    :cond_4
    :goto_2
    instance-of v5, v4, Lannotator/find/CastInsertion;

    if-nez v5, :cond_22

    instance-of v5, v4, Lannotator/find/CloseParenthesisInsertion;

    if-eqz v5, :cond_5

    goto :goto_1

    .line 303
    :cond_5
    new-instance v19, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {v3}, Lannotator/find/Criteria;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 304
    invoke-virtual {v3}, Lannotator/find/Criteria;->getMethodName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Lannotator/find/Criteria;->getFieldName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v2

    .end local v2    # "p":Lscenelib/annotations/io/ASTPath;
    .local v22, "p":Lscenelib/annotations/io/ASTPath;
    move-object/from16 v2, v19

    move-object/from16 v23, v3

    .end local v3    # "criteria":Lannotator/find/Criteria;
    .local v23, "criteria":Lannotator/find/Criteria;
    move-object/from16 v3, p1

    move-object/from16 v24, v13

    move-object v13, v4

    .end local v4    # "ins":Lannotator/find/Insertion;
    .local v13, "ins":Lannotator/find/Insertion;
    move-object v4, v5

    move-object/from16 v25, v10

    const/4 v10, 0x1

    .end local v10    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v25, "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    move-object/from16 v5, v20

    move-object v10, v6

    move-object/from16 v6, v21

    move-object/from16 v20, v11

    move v11, v7

    .end local v11    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v20, "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    move-object/from16 v7, v22

    invoke-direct/range {v2 .. v7}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 305
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    iget-object v3, v2, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v3

    .line 308
    .local v3, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_7

    .line 309
    invoke-virtual {v3, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 310
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v4

    if-nez v4, :cond_7

    .line 311
    iget-object v4, v2, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v4

    .line 312
    .local v4, "parentPath":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v2, v4}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v5

    invoke-static {v8, v5}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 313
    .local v5, "node":Lcom/sun/source/tree/Tree;
    instance-of v6, v5, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    .line 314
    invoke-static {v6}, Lannotator/find/Insertions$TypeTree;->fromJavacType(Lcom/sun/tools/javac/code/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_3

    :cond_6
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v4, v17

    .line 316
    .end local v5    # "node":Lcom/sun/source/tree/Tree;
    .local v4, "node":Lcom/sun/source/tree/Tree;
    goto :goto_4

    .line 317
    .end local v4    # "node":Lcom/sun/source/tree/Tree;
    :cond_7
    invoke-static {v8, v2}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 320
    .restart local v4    # "node":Lcom/sun/source/tree/Tree;
    :goto_4
    instance-of v5, v13, Lannotator/find/TypedInsertion;

    if-eqz v5, :cond_18

    .line 321
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lannotator/find/TypedInsertion;

    .line 322
    .local v5, "tins":Lannotator/find/TypedInsertion;
    instance-of v6, v13, Lannotator/find/NewInsertion;

    if-eqz v6, :cond_15

    .line 323
    move-object v6, v13

    check-cast v6, Lannotator/find/NewInsertion;

    .line 324
    .local v6, "nins":Lannotator/find/NewInsertion;
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v11, :cond_14

    .line 325
    invoke-virtual {v3, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 326
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v7

    .line 327
    .local v7, "a":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v11, "loc0":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    const/16 v17, 0x0

    .line 329
    .local v17, "rec0":Lscenelib/annotations/io/ASTRecord;
    if-nez v7, :cond_a

    .line 330
    move-object/from16 v21, v3

    .end local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .local v21, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual/range {v22 .. v22}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v3

    .line 331
    .end local v17    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .local v3, "rec0":Lscenelib/annotations/io/ASTRecord;
    invoke-static {v8, v3}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v17

    .line 332
    .local v17, "t":Lcom/sun/source/tree/Tree;
    if-eqz v17, :cond_9

    move-object/from16 v26, v9

    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .local v26, "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    .line 335
    :cond_8
    move-object v2, v3

    .line 336
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const/4 v15, 0x0

    invoke-virtual {v2, v9, v10, v15}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_6

    .line 332
    .end local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    :cond_9
    move-object/from16 v26, v9

    .line 333
    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v17, v3

    .line 339
    .end local v3    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .local v17, "rec0":Lscenelib/annotations/io/ASTRecord;
    :goto_6
    move-object/from16 v3, v17

    goto :goto_7

    .end local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .local v3, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    :cond_a
    move-object/from16 v21, v3

    move-object/from16 v26, v9

    .end local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    if-eqz v4, :cond_d

    .line 340
    invoke-virtual {v6}, Lannotator/find/NewInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 341
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_b

    .line 342
    nop

    .line 343
    invoke-virtual/range {v22 .. v22}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v3

    .line 342
    invoke-static {v8, v3}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 345
    :cond_b
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v9, :cond_c

    .line 346
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_d

    .line 347
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 348
    invoke-virtual/range {v22 .. v22}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v2

    .line 350
    sget-object v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-static {v11, v3}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    .line 353
    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v10, v9}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v17

    move-object/from16 v3, v17

    goto :goto_7

    .line 359
    :cond_d
    move-object/from16 v3, v17

    .end local v17    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .local v3, "rec0":Lscenelib/annotations/io/ASTRecord;
    :goto_7
    if-eqz v3, :cond_12

    .line 360
    invoke-virtual {v6}, Lannotator/find/NewInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lannotator/find/Insertion;

    .line 361
    .local v10, "inner":Lannotator/find/Insertion;
    invoke-virtual {v10}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v15

    .line 362
    .local v15, "icriteria":Lannotator/find/Criteria;
    nop

    .line 363
    invoke-virtual {v15}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v17

    .line 364
    .local v17, "igalc":Lannotator/find/GenericArrayLocationCriterion;
    if-eqz v17, :cond_f

    .line 366
    invoke-virtual/range {v17 .. v17}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    .line 367
    .local v18, "b":I
    move-object/from16 v27, v2

    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v27, "rec":Lscenelib/annotations/io/ASTRecord;
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v28, v9

    add-int v9, v7, v18

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .local v2, "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    invoke-virtual/range {v17 .. v17}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-direct {v1, v3, v2, v4}, Lannotator/find/Insertions;->extendToInnerType(Lscenelib/annotations/io/ASTRecord;Ljava/util/List;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v9

    .line 372
    .local v9, "rec1":Lscenelib/annotations/io/ASTRecord;
    move-object/from16 v29, v2

    .end local v2    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .local v29, "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    new-instance v2, Lannotator/find/GenericArrayLocationCriterion;

    invoke-direct {v2}, Lannotator/find/GenericArrayLocationCriterion;-><init>()V

    invoke-virtual {v15, v2}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 373
    new-instance v2, Lannotator/find/ASTPathCriterion;

    move-object/from16 v30, v3

    .end local v3    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .local v30, "rec0":Lscenelib/annotations/io/ASTRecord;
    iget-object v3, v9, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-direct {v2, v3}, Lannotator/find/ASTPathCriterion;-><init>(Lscenelib/annotations/io/ASTPath;)V

    invoke-virtual {v15, v2}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lannotator/find/Insertion;->setInserted(Z)V

    .line 375
    sget-boolean v2, Lannotator/Main;->temporaryDebug:Z

    if-eqz v2, :cond_e

    .line 376
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v13}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 378
    :cond_e
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    sget-boolean v2, Lannotator/Main;->temporaryDebug:Z

    if-eqz v2, :cond_10

    .line 380
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_9

    .line 364
    .end local v9    # "rec1":Lscenelib/annotations/io/ASTRecord;
    .end local v18    # "b":I
    .end local v27    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v29    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .end local v30    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v3    # "rec0":Lscenelib/annotations/io/ASTRecord;
    :cond_f
    move-object/from16 v27, v2

    move-object/from16 v30, v3

    move-object/from16 v28, v9

    .line 383
    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v3    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .end local v10    # "inner":Lannotator/find/Insertion;
    .end local v15    # "icriteria":Lannotator/find/Criteria;
    .end local v17    # "igalc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v27    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v30    # "rec0":Lscenelib/annotations/io/ASTRecord;
    :cond_10
    :goto_9
    move-object/from16 v2, v27

    move-object/from16 v9, v28

    move-object/from16 v3, v30

    goto/16 :goto_8

    .line 384
    .end local v27    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v30    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .restart local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v3    # "rec0":Lscenelib/annotations/io/ASTRecord;
    :cond_11
    move-object/from16 v27, v2

    move-object/from16 v30, v3

    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v3    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .restart local v27    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v30    # "rec0":Lscenelib/annotations/io/ASTRecord;
    invoke-virtual {v6}, Lannotator/find/NewInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_a

    .line 359
    .end local v27    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v30    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .restart local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v3    # "rec0":Lscenelib/annotations/io/ASTRecord;
    :cond_12
    move-object/from16 v27, v2

    move-object/from16 v30, v3

    .line 388
    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v3    # "rec0":Lscenelib/annotations/io/ASTRecord;
    .end local v6    # "nins":Lannotator/find/NewInsertion;
    .end local v7    # "a":I
    .end local v11    # "loc0":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .restart local v27    # "rec":Lscenelib/annotations/io/ASTRecord;
    :goto_a
    move-object/from16 v2, v27

    goto :goto_b

    .line 325
    .end local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .end local v27    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v3, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v6    # "nins":Lannotator/find/NewInsertion;
    .local v9, "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    :cond_13
    move-object/from16 v21, v3

    move-object/from16 v26, v9

    .end local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    goto :goto_b

    .line 324
    .end local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    :cond_14
    move-object/from16 v21, v3

    move-object/from16 v26, v9

    .end local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    goto :goto_b

    .line 322
    .end local v6    # "nins":Lannotator/find/NewInsertion;
    .end local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    :cond_15
    move-object/from16 v21, v3

    move-object/from16 v26, v9

    .line 388
    .end local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    :goto_b
    if-nez v5, :cond_16

    .line 389
    move-object v0, v13

    check-cast v0, Lannotator/find/TypedInsertion;

    move-object/from16 v9, v26

    .end local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 390
    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    :cond_16
    move-object/from16 v9, v26

    .end local v26    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    invoke-virtual {v5}, Lannotator/find/TypedInsertion;->getType()Lscenelib/type/Type;

    move-result-object v0

    move-object v3, v13

    check-cast v3, Lannotator/find/TypedInsertion;

    invoke-virtual {v3}, Lannotator/find/TypedInsertion;->getType()Lscenelib/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 391
    move-object v0, v13

    check-cast v0, Lannotator/find/TypedInsertion;

    invoke-direct {v1, v5, v0}, Lannotator/find/Insertions;->mergeTypedInsertions(Lannotator/find/TypedInsertion;Lannotator/find/TypedInsertion;)V

    .line 393
    .end local v5    # "tins":Lannotator/find/TypedInsertion;
    :cond_17
    :goto_c
    move-object/from16 v11, v20

    goto/16 :goto_12

    .line 394
    .end local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_18
    move-object/from16 v21, v3

    .end local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    move-object/from16 v3, v22

    .end local v22    # "p":Lscenelib/annotations/io/ASTPath;
    .local v3, "p":Lscenelib/annotations/io/ASTPath;
    invoke-direct {v1, v3}, Lannotator/find/Insertions;->newArrayInnerTypeDepth(Lscenelib/annotations/io/ASTPath;)I

    move-result v5

    .line 395
    .local v5, "d":I
    if-lez v5, :cond_21

    .line 396
    move-object v0, v3

    .line 397
    .local v0, "temp":Lscenelib/annotations/io/ASTPath;
    :goto_d
    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    if-eqz v4, :cond_19

    .line 398
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-eq v6, v7, :cond_1a

    .line 400
    :cond_19
    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 401
    invoke-virtual {v2, v0}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v6

    invoke-static {v8, v6}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v4

    goto :goto_d

    .line 403
    :cond_1a
    if-eqz v4, :cond_20

    .line 407
    new-instance v6, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    .line 408
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v6, v7, v10, v14}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    invoke-virtual {v0, v6}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v6

    .line 409
    .end local v0    # "temp":Lscenelib/annotations/io/ASTPath;
    .local v6, "temp":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 410
    invoke-virtual {v2, v6}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lannotator/find/TypedInsertion;

    .line 411
    .local v0, "tins":Lannotator/find/TypedInsertion;
    if-eqz v0, :cond_1b

    .line 415
    invoke-virtual {v0}, Lannotator/find/TypedInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    const/4 v7, 0x1

    invoke-virtual {v13, v7}, Lannotator/find/Insertion;->setInserted(Z)V

    .line 418
    .end local v0    # "tins":Lannotator/find/TypedInsertion;
    move-object/from16 v18, v2

    move-object/from16 v2, v23

    goto/16 :goto_10

    .line 413
    .restart local v0    # "tins":Lannotator/find/TypedInsertion;
    :cond_1b
    new-instance v7, Ljava/lang/Error;

    const-string v10, "tins == null case not yet implemented"

    invoke-direct {v7, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 419
    .end local v0    # "tins":Lannotator/find/TypedInsertion;
    :cond_1c
    move-object v0, v4

    check-cast v0, Lcom/sun/source/tree/NewArrayTree;

    .line 420
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v7

    .line 421
    .local v7, "dims":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    .line 422
    const/4 v14, 0x0

    invoke-virtual {v0, v11, v10, v14}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 423
    .local v0, "irec":Lscenelib/annotations/io/ASTRecord;
    nop

    .line 424
    invoke-virtual/range {v23 .. v23}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v11

    .line 425
    .local v11, "igalc":Lannotator/find/GenericArrayLocationCriterion;
    const/4 v14, 0x0

    move/from16 v36, v14

    move-object v14, v0

    move/from16 v0, v36

    .local v0, "i":I
    .local v14, "irec":Lscenelib/annotations/io/ASTRecord;
    :goto_e
    if-ge v0, v5, :cond_1d

    .line 426
    sget-object v15, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v14, v15, v10}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v14

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 428
    .end local v0    # "i":I
    :cond_1d
    if-eqz v11, :cond_1f

    .line 429
    invoke-virtual {v11}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v10

    .line 430
    .local v10, "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 432
    add-int/lit8 v0, v5, -0x1

    :try_start_0
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 433
    .local v0, "dim":Lcom/sun/source/tree/Tree;
    invoke-direct {v1, v14, v10, v0}, Lannotator/find/Insertions;->extendToInnerType(Lscenelib/annotations/io/ASTRecord;Ljava/util/List;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v15

    move-object v14, v15

    .line 434
    new-instance v15, Lannotator/find/ASTPathCriterion;

    move-object/from16 v17, v0

    .end local v0    # "dim":Lcom/sun/source/tree/Tree;
    .local v17, "dim":Lcom/sun/source/tree/Tree;
    iget-object v0, v14, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-direct {v15, v0}, Lannotator/find/ASTPathCriterion;-><init>(Lscenelib/annotations/io/ASTPath;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v18, v2

    move-object/from16 v2, v23

    .end local v23    # "criteria":Lannotator/find/Criteria;
    .local v2, "criteria":Lannotator/find/Criteria;
    .local v18, "rec":Lscenelib/annotations/io/ASTRecord;
    :try_start_1
    invoke-virtual {v2, v15}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 435
    new-instance v0, Lannotator/find/GenericArrayLocationCriterion;

    invoke-direct {v0}, Lannotator/find/GenericArrayLocationCriterion;-><init>()V

    invoke-virtual {v2, v0}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v17    # "dim":Lcom/sun/source/tree/Tree;
    goto :goto_f

    .line 436
    :catch_0
    move-exception v0

    goto :goto_f

    .end local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v23    # "criteria":Lannotator/find/Criteria;
    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v2, v23

    .end local v23    # "criteria":Lannotator/find/Criteria;
    .local v2, "criteria":Lannotator/find/Criteria;
    .restart local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    :goto_f
    goto :goto_10

    .line 430
    .end local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v23    # "criteria":Lannotator/find/Criteria;
    :cond_1e
    move-object/from16 v18, v2

    move-object/from16 v2, v23

    .end local v23    # "criteria":Lannotator/find/Criteria;
    .local v2, "criteria":Lannotator/find/Criteria;
    .restart local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    goto :goto_10

    .line 428
    .end local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .end local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v23    # "criteria":Lannotator/find/Criteria;
    :cond_1f
    move-object/from16 v18, v2

    move-object/from16 v2, v23

    .end local v23    # "criteria":Lannotator/find/Criteria;
    .local v2, "criteria":Lannotator/find/Criteria;
    .restart local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    goto :goto_10

    .line 405
    .end local v6    # "temp":Lscenelib/annotations/io/ASTPath;
    .end local v7    # "dims":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v11    # "igalc":Lannotator/find/GenericArrayLocationCriterion;
    .end local v14    # "irec":Lscenelib/annotations/io/ASTRecord;
    .end local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v0, "temp":Lscenelib/annotations/io/ASTPath;
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v23    # "criteria":Lannotator/find/Criteria;
    :cond_20
    new-instance v6, Ljava/lang/Error;

    const-string v7, "node == null case not yet implemented"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 395
    .end local v0    # "temp":Lscenelib/annotations/io/ASTPath;
    :cond_21
    move-object/from16 v18, v2

    move-object/from16 v2, v23

    .line 441
    .end local v23    # "criteria":Lannotator/find/Criteria;
    .local v2, "criteria":Lannotator/find/Criteria;
    .restart local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    :goto_10
    move-object/from16 v11, v20

    .end local v20    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v11, "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 292
    .end local v5    # "d":I
    .end local v13    # "ins":Lannotator/find/Insertion;
    .end local v18    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v21    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v25    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v2, "p":Lscenelib/annotations/io/ASTPath;
    .local v3, "criteria":Lannotator/find/Criteria;
    .local v4, "ins":Lannotator/find/Insertion;
    .local v10, "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_22
    move-object/from16 v25, v10

    move-object/from16 v24, v13

    move-object v13, v4

    move-object/from16 v36, v3

    move-object v3, v2

    move-object/from16 v2, v36

    .end local v4    # "ins":Lannotator/find/Insertion;
    .end local v10    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v2, "criteria":Lannotator/find/Criteria;
    .local v3, "p":Lscenelib/annotations/io/ASTPath;
    .restart local v13    # "ins":Lannotator/find/Insertion;
    .restart local v25    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    goto :goto_11

    .line 291
    .end local v13    # "ins":Lannotator/find/Insertion;
    .end local v25    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v2, "p":Lscenelib/annotations/io/ASTPath;
    .local v3, "criteria":Lannotator/find/Criteria;
    .restart local v4    # "ins":Lannotator/find/Insertion;
    .restart local v10    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_23
    move-object/from16 v25, v10

    move-object/from16 v24, v13

    move-object v13, v4

    move-object/from16 v36, v3

    move-object v3, v2

    move-object/from16 v2, v36

    .line 295
    .end local v4    # "ins":Lannotator/find/Insertion;
    .end local v10    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v2, "criteria":Lannotator/find/Criteria;
    .local v3, "p":Lscenelib/annotations/io/ASTPath;
    .restart local v13    # "ins":Lannotator/find/Insertion;
    .restart local v25    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :goto_11
    sget-boolean v4, Lannotator/Main;->temporaryDebug:Z

    if-eqz v4, :cond_24

    .line 296
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v13}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 298
    :cond_24
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    sget-boolean v4, Lannotator/Main;->temporaryDebug:Z

    if-eqz v4, :cond_25

    .line 300
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 444
    .end local v2    # "criteria":Lannotator/find/Criteria;
    .end local v3    # "p":Lscenelib/annotations/io/ASTPath;
    .end local v13    # "ins":Lannotator/find/Insertion;
    .end local v16    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    :cond_25
    :goto_12
    move-object/from16 v13, v24

    move-object/from16 v10, v25

    goto/16 :goto_0

    .line 449
    .end local v25    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v10    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_26
    move-object/from16 v25, v10

    move-object v10, v6

    .end local v10    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v25    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_27

    .line 450
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "organized.size() (1) = %d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 452
    :cond_27
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_28

    .line 453
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "innerInsertionsList size (1) = %d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 455
    :cond_28
    sget-object v0, Lannotator/find/Insertions;->byASTRecord:Ljava/util/Comparator;

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 456
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_29

    .line 457
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "innerInsertionsList size (2) = %d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 459
    :cond_29
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_2a

    .line 460
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "innerInsertions size (1) = %d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 462
    :cond_2a
    move-object/from16 v13, v25

    .end local v25    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v13, "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    invoke-interface {v13, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 463
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_2b

    .line 464
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "innerInsertions size (2) = %d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 469
    :cond_2b
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lannotator/find/Insertion;

    .line 470
    .local v14, "ins":Lannotator/find/Insertion;
    invoke-virtual {v14}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v7

    .line 471
    .local v7, "criteria":Lannotator/find/Criteria;
    invoke-virtual {v7}, Lannotator/find/Criteria;->getMethodName()Ljava/lang/String;

    move-result-object v16

    .line 472
    .local v16, "methodName":Ljava/lang/String;
    invoke-virtual {v7}, Lannotator/find/Criteria;->getFieldName()Ljava/lang/String;

    move-result-object v20

    .line 473
    .local v20, "fieldName":Ljava/lang/String;
    invoke-virtual {v7}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v6

    .line 474
    .local v6, "localTypePath":Lscenelib/annotations/io/ASTPath;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 475
    .local v5, "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    if-nez v6, :cond_2c

    .line 477
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    goto :goto_13

    .line 482
    :cond_2c
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    move-object v4, v2

    .line 483
    .local v4, "astack":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath;>;"
    move-object v2, v6

    .line 485
    .local v2, "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    :goto_14
    invoke-interface {v4, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 486
    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 491
    :goto_15
    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lscenelib/annotations/io/ASTPath;

    .line 492
    .end local v2    # "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    .local v21, "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    invoke-virtual/range {v21 .. v21}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v2

    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v22

    .line 493
    .local v22, "kind":Lcom/sun/source/tree/Tree$Kind;
    new-instance v23, Lscenelib/annotations/io/ASTRecord;

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    move-object/from16 v24, v4

    .end local v4    # "astack":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath;>;"
    .local v24, "astack":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath;>;"
    move-object/from16 v4, p2

    move-object/from16 v25, v0

    move-object v0, v5

    .end local v5    # "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .local v0, "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    move-object/from16 v5, v16

    move-object/from16 v26, v6

    .end local v6    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .local v26, "localTypePath":Lscenelib/annotations/io/ASTPath;
    move-object/from16 v6, v20

    move-object/from16 v27, v7

    .end local v7    # "criteria":Lannotator/find/Criteria;
    .local v27, "criteria":Lannotator/find/Criteria;
    move-object/from16 v7, v21

    invoke-direct/range {v2 .. v7}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 494
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    invoke-interface/range {v24 .. v24}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_16

    :cond_2d
    move-object v5, v0

    move-object/from16 v2, v21

    move-object/from16 v4, v24

    move-object/from16 v0, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    goto :goto_15

    .line 496
    :cond_2e
    :goto_16
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lannotator/find/TypedInsertion;

    .line 497
    .local v3, "tins":Lannotator/find/TypedInsertion;
    invoke-static {v8, v2}, Lscenelib/annotations/io/ASTIndex;->getTreePath(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/util/TreePath;

    move-result-object v4

    .line 498
    .local v4, "path":Lcom/sun/source/util/TreePath;
    if-nez v4, :cond_2f

    const/4 v5, 0x0

    goto :goto_17

    :cond_2f
    invoke-virtual {v4}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 499
    .local v5, "node":Lcom/sun/source/tree/Tree;
    :goto_17
    if-nez v5, :cond_30

    invoke-virtual/range {v21 .. v21}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 500
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    move-object/from16 v0, v25

    goto/16 :goto_13

    .line 506
    :cond_30
    if-nez v3, :cond_39

    .line 507
    nop

    .line 508
    invoke-virtual/range {v27 .. v27}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v6

    .line 509
    .local v6, "galc":Lannotator/find/GenericArrayLocationCriterion;
    if-nez v5, :cond_31

    .line 511
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    move-object/from16 v0, v25

    goto/16 :goto_13

    .line 514
    :cond_31
    invoke-virtual {v4}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v7

    .line 515
    .local v7, "t":Lcom/sun/source/tree/Tree;
    sget-object v23, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v28

    aget v23, v23, v28

    packed-switch v23, :pswitch_data_0

    move-object/from16 v30, v3

    move-object/from16 v34, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v11

    move-object/from16 v35, v13

    move-object/from16 v13, v27

    .end local v3    # "tins":Lannotator/find/TypedInsertion;
    .end local v6    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .end local v7    # "t":Lcom/sun/source/tree/Tree;
    .end local v11    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v27    # "criteria":Lannotator/find/Criteria;
    .local v13, "criteria":Lannotator/find/Criteria;
    .local v30, "tins":Lannotator/find/TypedInsertion;
    .local v32, "t":Lcom/sun/source/tree/Tree;
    .local v33, "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v34, "galc":Lannotator/find/GenericArrayLocationCriterion;
    .local v35, "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    goto/16 :goto_1d

    .line 517
    .end local v30    # "tins":Lannotator/find/TypedInsertion;
    .end local v32    # "t":Lcom/sun/source/tree/Tree;
    .end local v33    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v34    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .end local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v3    # "tins":Lannotator/find/TypedInsertion;
    .restart local v6    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v7    # "t":Lcom/sun/source/tree/Tree;
    .restart local v11    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v13, "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v27    # "criteria":Lannotator/find/Criteria;
    :pswitch_0
    const/16 v23, 0x0

    .line 518
    .local v23, "d":I
    invoke-virtual/range {v26 .. v26}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v28

    .line 519
    .local v28, "e":Lscenelib/annotations/io/ASTPath$ASTEntry;
    const/16 v29, 0x0

    .line 520
    .restart local v29    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v30

    .line 521
    .local v31, "inners":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    move-object/from16 v30, v3

    .end local v3    # "tins":Lannotator/find/TypedInsertion;
    .restart local v30    # "tins":Lannotator/find/TypedInsertion;
    move-object v3, v7

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lannotator/find/Insertions$TypeTree;->javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;

    move-result-object v3

    .line 522
    .local v3, "type":Lscenelib/type/Type;
    move-object/from16 v32, v7

    .end local v7    # "t":Lcom/sun/source/tree/Tree;
    .restart local v32    # "t":Lcom/sun/source/tree/Tree;
    invoke-virtual/range {v28 .. v28}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    move-object/from16 v33, v11

    .end local v11    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v33    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v11, :cond_32

    .line 523
    invoke-virtual/range {v28 .. v28}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v7

    add-int v23, v23, v7

    .line 525
    :cond_32
    if-eqz v6, :cond_36

    .line 526
    invoke-virtual {v6}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v7

    .line 527
    .end local v29    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .local v7, "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    .line 528
    .local v11, "n":I
    :goto_18
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_33

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v34, v6

    .end local v6    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v34    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    move-object/from16 v6, v29

    check-cast v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v6, v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    move-object/from16 v35, v13

    .end local v13    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    sget-object v13, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v6, v13, :cond_34

    .line 529
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v6, v34

    move-object/from16 v13, v35

    goto :goto_18

    .line 528
    .end local v34    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .end local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v6    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v13    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_33
    move-object/from16 v34, v6

    move-object/from16 v35, v13

    .line 531
    .end local v6    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .end local v13    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v34    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_34
    if-gez v11, :cond_35

    const/4 v13, 0x0

    goto :goto_19

    :cond_35
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    invoke-interface {v7, v6, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v13

    :goto_19
    move-object/from16 v29, v13

    move/from16 v6, v23

    move-object/from16 v7, v29

    .end local v7    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .restart local v29    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    goto :goto_1a

    .line 525
    .end local v11    # "n":I
    .end local v34    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .end local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v6    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v13    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_36
    move-object/from16 v34, v6

    move-object/from16 v35, v13

    .end local v6    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .end local v13    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v34    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    move/from16 v6, v23

    move-object/from16 v7, v29

    .line 533
    .end local v23    # "d":I
    .end local v29    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .local v6, "d":I
    .restart local v7    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    :goto_1a
    new-instance v11, Lannotator/find/ASTPathCriterion;

    iget-object v13, v2, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 534
    invoke-virtual {v13}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v13

    invoke-virtual {v13, v6}, Lscenelib/annotations/io/ASTPath;->extendNewArray(I)Lscenelib/annotations/io/ASTPath;

    move-result-object v13

    invoke-direct {v11, v13}, Lannotator/find/ASTPathCriterion;-><init>(Lscenelib/annotations/io/ASTPath;)V

    .line 533
    move-object/from16 v13, v27

    .end local v27    # "criteria":Lannotator/find/Criteria;
    .local v13, "criteria":Lannotator/find/Criteria;
    invoke-virtual {v13, v11}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 535
    if-eqz v7, :cond_38

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_37

    move/from16 v23, v6

    goto :goto_1b

    :cond_37
    new-instance v11, Lannotator/find/GenericArrayLocationCriterion;

    move/from16 v23, v6

    .end local v6    # "d":I
    .restart local v23    # "d":I
    new-instance v6, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-direct {v6, v7}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    invoke-direct {v11, v6}, Lannotator/find/GenericArrayLocationCriterion;-><init>(Lscenelib/annotations/el/InnerTypeLocation;)V

    goto :goto_1c

    .end local v23    # "d":I
    .restart local v6    # "d":I
    :cond_38
    move/from16 v23, v6

    .end local v6    # "d":I
    .restart local v23    # "d":I
    :goto_1b
    new-instance v11, Lannotator/find/GenericArrayLocationCriterion;

    invoke-direct {v11}, Lannotator/find/GenericArrayLocationCriterion;-><init>()V

    :goto_1c
    invoke-virtual {v13, v11}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 539
    move-object/from16 v6, v31

    .end local v31    # "inners":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v6, "inners":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v11, Lannotator/find/NewInsertion;

    invoke-direct {v11, v3, v13, v6}, Lannotator/find/NewInsertion;-><init>(Lscenelib/type/Type;Lannotator/find/Criteria;Ljava/util/List;)V

    .line 541
    .end local v30    # "tins":Lannotator/find/TypedInsertion;
    .local v11, "tins":Lannotator/find/TypedInsertion;
    move-object/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "type":Lscenelib/type/Type;
    .local v27, "type":Lscenelib/type/Type;
    invoke-virtual {v11, v3}, Lannotator/find/TypedInsertion;->setInserted(Z)V

    .line 542
    invoke-interface {v9, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    move-object v3, v11

    .line 547
    .end local v6    # "inners":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v7    # "loc":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .end local v11    # "tins":Lannotator/find/TypedInsertion;
    .end local v23    # "d":I
    .end local v27    # "type":Lscenelib/type/Type;
    .end local v28    # "e":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .local v3, "tins":Lannotator/find/TypedInsertion;
    :goto_1d
    invoke-virtual {v4}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    goto :goto_1e

    .line 506
    .end local v32    # "t":Lcom/sun/source/tree/Tree;
    .end local v33    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v34    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .end local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v11, "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v13, "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v27, "criteria":Lannotator/find/Criteria;
    :cond_39
    move-object/from16 v30, v3

    move-object/from16 v33, v11

    move-object/from16 v35, v13

    move-object/from16 v13, v27

    .line 557
    .end local v11    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v27    # "criteria":Lannotator/find/Criteria;
    .local v13, "criteria":Lannotator/find/Criteria;
    .restart local v33    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :goto_1e
    if-nez v5, :cond_45

    .line 558
    move-object/from16 v6, v21

    .line 559
    .local v6, "ap":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3b

    .line 561
    :cond_3a
    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v6

    .line 562
    invoke-virtual {v2, v6}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v7

    invoke-static {v8, v7}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 563
    if-nez v5, :cond_3b

    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 565
    :cond_3b
    if-nez v5, :cond_3c

    .line 566
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    move-object/from16 v0, v25

    move-object/from16 v11, v33

    move-object/from16 v13, v35

    goto/16 :goto_13

    .line 571
    :cond_3c
    const/4 v7, 0x0

    .line 572
    .local v7, "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    sget-object v11, Lannotator/find/Insertions$3;->$SwitchMap$annotator$find$Insertion$Kind:[I

    invoke-virtual {v3}, Lannotator/find/TypedInsertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lannotator/find/Insertion$Kind;->ordinal()I

    move-result v23

    aget v11, v11, v23

    packed-switch v11, :pswitch_data_1

    .line 615
    move-object/from16 v23, v2

    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v23, "rec":Lscenelib/annotations/io/ASTRecord;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 600
    .end local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    :pswitch_1
    instance-of v11, v5, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    if-eqz v11, :cond_3e

    .line 601
    move-object v11, v5

    check-cast v11, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 602
    .local v11, "jmd":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    move-object/from16 v23, v2

    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    iget-object v2, v11, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 603
    .end local v7    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .local v2, "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    iget-object v7, v11, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v7}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v4

    .end local v4    # "path":Lcom/sun/source/util/TreePath;
    .local v27, "path":Lcom/sun/source/util/TreePath;
    const-string v4, "<init>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 604
    iget-object v4, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object v2, v4

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object v7, v2

    goto :goto_1f

    .line 603
    :cond_3d
    move-object v7, v2

    goto :goto_1f

    .line 606
    .end local v11    # "jmd":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .end local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v27    # "path":Lcom/sun/source/util/TreePath;
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v4    # "path":Lcom/sun/source/util/TreePath;
    .restart local v7    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :cond_3e
    move-object/from16 v23, v2

    move-object/from16 v27, v4

    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v4    # "path":Lcom/sun/source/util/TreePath;
    .restart local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v27    # "path":Lcom/sun/source/util/TreePath;
    instance-of v2, v5, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v2, :cond_3f

    .line 607
    move-object v2, v5

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_20

    .line 606
    :cond_3f
    :goto_1f
    nop

    .line 609
    :goto_20
    if-eqz v7, :cond_40

    .line 610
    iget-object v2, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->fromJavacType(Lcom/sun/tools/javac/code/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v5

    .line 611
    goto/16 :goto_21

    .line 613
    :cond_40
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 589
    .end local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v27    # "path":Lcom/sun/source/util/TreePath;
    .restart local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v4    # "path":Lcom/sun/source/util/TreePath;
    :pswitch_2
    move-object/from16 v23, v2

    move-object/from16 v27, v4

    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v4    # "path":Lcom/sun/source/util/TreePath;
    .restart local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v27    # "path":Lcom/sun/source/util/TreePath;
    instance-of v2, v5, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    if-eqz v2, :cond_42

    .line 590
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 591
    move-object v2, v5

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->fromJavacType(Lcom/sun/tools/javac/code/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v5

    .line 592
    goto :goto_21

    .line 594
    :cond_41
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 595
    move-object/from16 v0, v25

    move-object/from16 v11, v33

    move-object/from16 v13, v35

    goto/16 :goto_13

    .line 598
    :cond_42
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 574
    .end local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v27    # "path":Lcom/sun/source/util/TreePath;
    .restart local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v4    # "path":Lcom/sun/source/util/TreePath;
    :pswitch_3
    move-object/from16 v23, v2

    move-object/from16 v27, v4

    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v4    # "path":Lcom/sun/source/util/TreePath;
    .restart local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v27    # "path":Lcom/sun/source/util/TreePath;
    instance-of v2, v5, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    if-eqz v2, :cond_43

    .line 575
    move-object v2, v5

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 576
    .local v2, "msym":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    iget-object v4, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 577
    .end local v7    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .local v4, "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    iget-object v7, v4, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v7}, Lannotator/find/Insertions$TypeTree;->fromJavacType(Lcom/sun/tools/javac/code/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v5

    .line 578
    goto :goto_21

    .line 579
    .end local v2    # "msym":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .end local v4    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .restart local v7    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :cond_43
    instance-of v2, v5, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v2, :cond_44

    .line 580
    move-object v2, v5

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v7, v2, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 581
    iget-object v2, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    instance-of v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v2, :cond_44

    .line 582
    iget-object v2, v7, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 583
    .end local v7    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .local v2, "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    iget-object v4, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v4}, Lannotator/find/Insertions$TypeTree;->fromJavacType(Lcom/sun/tools/javac/code/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v5

    .line 584
    goto :goto_21

    .line 587
    .end local v2    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .restart local v7    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :cond_44
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 557
    .end local v6    # "ap":Lscenelib/annotations/io/ASTPath;
    .end local v7    # "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .end local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v27    # "path":Lcom/sun/source/util/TreePath;
    .local v2, "rec":Lscenelib/annotations/io/ASTRecord;
    .local v4, "path":Lcom/sun/source/util/TreePath;
    :cond_45
    move-object/from16 v23, v2

    move-object/from16 v27, v4

    .line 668
    .end local v2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v4    # "path":Lcom/sun/source/util/TreePath;
    .restart local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v27    # "path":Lcom/sun/source/util/TreePath;
    :goto_21
    invoke-virtual/range {v21 .. v21}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v2

    .line 669
    .local v2, "i":I
    invoke-virtual/range {v26 .. v26}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v4

    .line 670
    .local v4, "n":I
    const/4 v6, 0x0

    .line 671
    .local v6, "actualDepth":I
    const/4 v7, 0x0

    .line 674
    .local v7, "expectedDepth":I
    :goto_22
    if-ge v2, v4, :cond_47

    .line 675
    move-object/from16 v11, v26

    .end local v26    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .local v11, "localTypePath":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v11, v2}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 676
    .local v26, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    move-object/from16 v28, v5

    .end local v5    # "node":Lcom/sun/source/tree/Tree;
    .local v28, "node":Lcom/sun/source/tree/Tree;
    invoke-virtual/range {v26 .. v26}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    .line 677
    .end local v22    # "kind":Lcom/sun/source/tree/Tree$Kind;
    .local v5, "kind":Lcom/sun/source/tree/Tree$Kind;
    move/from16 v29, v6

    .end local v6    # "actualDepth":I
    .local v29, "actualDepth":I
    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v5, v6, :cond_46

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v5, v6, :cond_46

    .line 678
    move-object/from16 v22, v5

    move-object/from16 v5, v23

    move/from16 v6, v29

    move-object/from16 v36, v21

    move-object/from16 v21, v15

    move-object/from16 v15, v36

    goto :goto_23

    .line 680
    :cond_46
    nop

    .end local v26    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    add-int/lit8 v2, v2, 0x1

    .line 681
    move-object/from16 v22, v5

    move-object/from16 v26, v11

    move-object/from16 v5, v28

    move/from16 v6, v29

    goto :goto_22

    .line 674
    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v28    # "node":Lcom/sun/source/tree/Tree;
    .end local v29    # "actualDepth":I
    .local v5, "node":Lcom/sun/source/tree/Tree;
    .restart local v6    # "actualDepth":I
    .restart local v22    # "kind":Lcom/sun/source/tree/Tree$Kind;
    .local v26, "localTypePath":Lscenelib/annotations/io/ASTPath;
    :cond_47
    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v11, v26

    .end local v5    # "node":Lcom/sun/source/tree/Tree;
    .end local v6    # "actualDepth":I
    .end local v26    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v28    # "node":Lcom/sun/source/tree/Tree;
    .restart local v29    # "actualDepth":I
    move-object/from16 v5, v23

    move-object/from16 v36, v21

    move-object/from16 v21, v15

    move-object/from16 v15, v36

    .line 684
    .end local v21    # "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v23    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v29    # "actualDepth":I
    .local v5, "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v6    # "actualDepth":I
    .local v15, "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    :goto_23
    if-ge v2, v4, :cond_60

    .line 685
    invoke-virtual {v11, v2}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v26, v4

    .end local v4    # "n":I
    .local v26, "n":I
    move-object/from16 v4, v23

    check-cast v4, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 686
    .local v4, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v5, v4}, Lscenelib/annotations/io/ASTRecord;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v5

    .line 687
    move-object/from16 v23, v9

    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .local v23, "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    move-object/from16 v22, v28

    .line 689
    .end local v28    # "node":Lcom/sun/source/tree/Tree;
    .local v9, "kind":Lcom/sun/source/tree/Tree$Kind;
    .local v22, "node":Lcom/sun/source/tree/Tree;
    :goto_24
    move-object/from16 v29, v3

    .end local v3    # "tins":Lannotator/find/TypedInsertion;
    .local v29, "tins":Lannotator/find/TypedInsertion;
    invoke-interface/range {v22 .. v22}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    move-object/from16 v30, v13

    .end local v13    # "criteria":Lannotator/find/Criteria;
    .local v30, "criteria":Lannotator/find/Criteria;
    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v13, :cond_48

    .line 690
    move-object/from16 v3, v22

    .end local v22    # "node":Lcom/sun/source/tree/Tree;
    .local v3, "node":Lcom/sun/source/tree/Tree;
    move-object v13, v3

    check-cast v13, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v13}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v22

    move-object/from16 v3, v29

    move-object/from16 v13, v30

    .end local v3    # "node":Lcom/sun/source/tree/Tree;
    .restart local v22    # "node":Lcom/sun/source/tree/Tree;
    goto :goto_24

    .line 692
    :cond_48
    move-object/from16 v3, v22

    .end local v22    # "node":Lcom/sun/source/tree/Tree;
    .restart local v3    # "node":Lcom/sun/source/tree/Tree;
    if-nez v7, :cond_49

    .line 693
    invoke-direct {v1, v3}, Lannotator/find/Insertions;->localDepth(Lcom/sun/source/tree/Tree;)I

    move-result v7

    .line 696
    :cond_49
    sget-object v13, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v9}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v22

    aget v13, v13, v22

    packed-switch v13, :pswitch_data_2

    .line 784
    move-object/from16 v32, v11

    move-object/from16 v31, v12

    move-object/from16 v34, v14

    const/4 v12, 0x0

    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v14    # "ins":Lannotator/find/Insertion;
    .local v31, "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v32, "localTypePath":Lscenelib/annotations/io/ASTPath;
    .local v34, "ins":Lannotator/find/Insertion;
    invoke-static {v8, v5}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v1

    move-object/from16 v28, v1

    .end local v3    # "node":Lcom/sun/source/tree/Tree;
    .local v1, "node":Lcom/sun/source/tree/Tree;
    goto/16 :goto_2d

    .line 768
    .end local v1    # "node":Lcom/sun/source/tree/Tree;
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v34    # "ins":Lannotator/find/Insertion;
    .restart local v3    # "node":Lcom/sun/source/tree/Tree;
    .restart local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v14    # "ins":Lannotator/find/Insertion;
    :pswitch_4
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    invoke-static {v13}, Lscenelib/annotations/io/ASTPath;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 769
    if-nez v7, :cond_4d

    const/4 v13, 0x1

    if-lt v2, v13, :cond_4a

    add-int/lit8 v13, v2, -0x1

    .line 771
    invoke-virtual {v11, v13}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v13}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    move-object/from16 v31, v12

    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    if-eq v13, v12, :cond_4f

    goto :goto_25

    .line 769
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_4a
    move-object/from16 v31, v12

    .line 771
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :goto_25
    const/4 v12, 0x2

    if-lt v2, v12, :cond_4b

    add-int/lit8 v12, v2, -0x2

    .line 773
    invoke-virtual {v11, v12}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v12}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v12

    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v12, v13, :cond_4f

    .line 774
    :cond_4b
    :goto_26
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_4c

    .line 775
    sget-object v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 777
    :cond_4c
    sget-object v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    move-object/from16 v28, v3

    move-object/from16 v32, v11

    move-object/from16 v34, v14

    const/4 v12, 0x0

    goto/16 :goto_2d

    .line 769
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_4d
    move-object/from16 v31, v12

    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    goto :goto_27

    .line 768
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_4e
    move-object/from16 v31, v12

    .line 781
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_4f
    :goto_27
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    throw v10

    .line 742
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :pswitch_5
    move-object/from16 v31, v12

    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v12

    if-ne v12, v9, :cond_55

    .line 743
    move-object v12, v3

    check-cast v12, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 744
    .local v12, "ptt":Lcom/sun/source/tree/ParameterizedTypeTree;
    invoke-virtual {v4, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_50

    .line 745
    invoke-interface {v12}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 746
    move-object/from16 v28, v3

    move-object/from16 v32, v11

    move-object/from16 v34, v14

    const/4 v12, 0x0

    goto/16 :goto_2d

    .line 747
    :cond_50
    if-nez v7, :cond_54

    .line 748
    const-string v13, "typeArgument"

    invoke-virtual {v4, v13}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 749
    invoke-interface {v12}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v13

    .line 750
    .local v13, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    move-object/from16 v32, v11

    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v11

    .line 751
    .local v11, "j":I
    if-ltz v11, :cond_52

    move-object/from16 v34, v14

    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_56

    .line 753
    const/4 v6, 0x0

    .line 754
    invoke-interface {v12}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v14

    invoke-direct {v1, v14}, Lannotator/find/Insertions;->localDepth(Lcom/sun/source/tree/Tree;)I

    move-result v7

    .line 755
    :goto_28
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_51

    .line 756
    sget-object v14, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 758
    :cond_51
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v3, v14

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 759
    new-instance v14, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {v14, v1, v11}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;I)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    move-object/from16 v28, v3

    const/4 v12, 0x0

    goto/16 :goto_2d

    .line 751
    .end local v34    # "ins":Lannotator/find/Insertion;
    .restart local v14    # "ins":Lannotator/find/Insertion;
    :cond_52
    move-object/from16 v34, v14

    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    goto :goto_29

    .line 748
    .end local v13    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v34    # "ins":Lannotator/find/Insertion;
    .local v11, "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v14    # "ins":Lannotator/find/Insertion;
    :cond_53
    move-object/from16 v32, v11

    move-object/from16 v34, v14

    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    goto :goto_29

    .line 747
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v34    # "ins":Lannotator/find/Insertion;
    .restart local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v14    # "ins":Lannotator/find/Insertion;
    :cond_54
    move-object/from16 v32, v11

    move-object/from16 v34, v14

    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    goto :goto_29

    .line 742
    .end local v12    # "ptt":Lcom/sun/source/tree/ParameterizedTypeTree;
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v34    # "ins":Lannotator/find/Insertion;
    .restart local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v14    # "ins":Lannotator/find/Insertion;
    :cond_55
    move-object/from16 v32, v11

    move-object/from16 v34, v14

    .line 765
    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    :cond_56
    :goto_29
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 709
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v34    # "ins":Lannotator/find/Insertion;
    .restart local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .local v12, "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v14    # "ins":Lannotator/find/Insertion;
    :pswitch_6
    move-object/from16 v32, v11

    move-object/from16 v31, v12

    move-object/from16 v34, v14

    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_57

    .line 710
    move-object v1, v3

    check-cast v1, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 711
    .end local v3    # "node":Lcom/sun/source/tree/Tree;
    .restart local v1    # "node":Lcom/sun/source/tree/Tree;
    add-int/lit8 v6, v6, 0x1

    .line 712
    move-object/from16 v28, v1

    const/4 v12, 0x0

    goto/16 :goto_2d

    .line 714
    .end local v1    # "node":Lcom/sun/source/tree/Tree;
    .restart local v3    # "node":Lcom/sun/source/tree/Tree;
    :cond_57
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 698
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v34    # "ins":Lannotator/find/Insertion;
    .restart local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v14    # "ins":Lannotator/find/Insertion;
    :pswitch_7
    move-object/from16 v32, v11

    move-object/from16 v31, v12

    move-object/from16 v34, v14

    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    if-nez v7, :cond_59

    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    if-ne v1, v9, :cond_59

    .line 699
    move-object v1, v3

    check-cast v1, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v1}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 700
    .end local v3    # "node":Lcom/sun/source/tree/Tree;
    .restart local v1    # "node":Lcom/sun/source/tree/Tree;
    :goto_2a
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_58

    .line 701
    sget-object v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 703
    :cond_58
    sget-object v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    move-object/from16 v28, v1

    const/4 v12, 0x0

    goto/16 :goto_2d

    .line 706
    .end local v1    # "node":Lcom/sun/source/tree/Tree;
    .restart local v3    # "node":Lcom/sun/source/tree/Tree;
    :cond_59
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 717
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v34    # "ins":Lannotator/find/Insertion;
    .restart local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v14    # "ins":Lannotator/find/Insertion;
    :pswitch_8
    move-object/from16 v32, v11

    move-object/from16 v31, v12

    move-object/from16 v34, v14

    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 718
    new-instance v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    .line 719
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v1, v11, v10, v13}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    invoke-virtual {v15, v1}, Lscenelib/annotations/io/ASTPath;->add(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    .line 720
    .end local v15    # "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    .local v1, "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    if-nez v7, :cond_5e

    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    if-ne v11, v9, :cond_5e

    .line 721
    instance-of v11, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    if-eqz v11, :cond_5d

    .line 722
    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v11

    .line 723
    .local v11, "arg":I
    if-lez v11, :cond_5c

    .line 724
    move-object v13, v3

    check-cast v13, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v3, v13, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 725
    sget-object v13, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    :goto_2b
    add-int/lit8 v11, v11, -0x1

    if-lez v11, :cond_5a

    instance-of v13, v3, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    if-eqz v13, :cond_5a

    .line 727
    move-object v13, v3

    check-cast v13, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v3, v13, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 728
    sget-object v13, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 730
    :cond_5a
    if-gtz v11, :cond_5b

    goto :goto_2c

    :cond_5b
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    throw v10

    .line 732
    :cond_5c
    move-object v13, v3

    check-cast v13, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v13, v13, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v13}, Lannotator/find/Insertions$TypeTree;->fromJavacType(Lcom/sun/tools/javac/code/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v3

    .line 734
    .end local v11    # "arg":I
    :goto_2c
    move-object v15, v1

    move-object/from16 v28, v3

    goto :goto_2d

    .line 735
    :cond_5d
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "NYI"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 739
    :cond_5e
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    throw v10

    .line 717
    .end local v1    # "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v15    # "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    :cond_5f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 788
    .end local v3    # "node":Lcom/sun/source/tree/Tree;
    .restart local v28    # "node":Lcom/sun/source/tree/Tree;
    :goto_2d
    nop

    .end local v4    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    add-int/lit8 v2, v2, 0x1

    .line 789
    move-object/from16 v1, p0

    move-object/from16 v22, v9

    move-object/from16 v9, v23

    move/from16 v4, v26

    move-object/from16 v3, v29

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v14, v34

    goto/16 :goto_23

    .line 684
    .end local v23    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .end local v26    # "n":I
    .end local v29    # "tins":Lannotator/find/TypedInsertion;
    .end local v30    # "criteria":Lannotator/find/Criteria;
    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v34    # "ins":Lannotator/find/Insertion;
    .local v3, "tins":Lannotator/find/TypedInsertion;
    .local v4, "n":I
    .local v9, "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .local v11, "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v13, "criteria":Lannotator/find/Criteria;
    .restart local v14    # "ins":Lannotator/find/Insertion;
    .local v22, "kind":Lcom/sun/source/tree/Tree$Kind;
    :cond_60
    move-object/from16 v29, v3

    move/from16 v26, v4

    move-object/from16 v23, v9

    move-object/from16 v32, v11

    move-object/from16 v31, v12

    move-object/from16 v30, v13

    move-object/from16 v34, v14

    const/4 v12, 0x0

    .line 791
    .end local v3    # "tins":Lannotator/find/TypedInsertion;
    .end local v4    # "n":I
    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .end local v11    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v13    # "criteria":Lannotator/find/Criteria;
    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v23    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v26    # "n":I
    .restart local v29    # "tins":Lannotator/find/TypedInsertion;
    .restart local v30    # "criteria":Lannotator/find/Criteria;
    .restart local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v34    # "ins":Lannotator/find/Insertion;
    :goto_2e
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_61

    .line 792
    sget-object v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 795
    :cond_61
    move-object/from16 v1, v31

    move-object/from16 v3, v34

    .end local v31    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v34    # "ins":Lannotator/find/Insertion;
    .local v1, "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v3, "ins":Lannotator/find/Insertion;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_62

    goto :goto_2f

    .line 801
    :cond_62
    new-instance v4, Lannotator/find/ASTPathCriterion;

    invoke-direct {v4, v15}, Lannotator/find/ASTPathCriterion;-><init>(Lscenelib/annotations/io/ASTPath;)V

    move-object/from16 v9, v30

    .end local v30    # "criteria":Lannotator/find/Criteria;
    .local v9, "criteria":Lannotator/find/Criteria;
    invoke-virtual {v9, v4}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 802
    new-instance v4, Lannotator/find/GenericArrayLocationCriterion;

    new-instance v11, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-direct {v11, v0}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v11}, Lannotator/find/GenericArrayLocationCriterion;-><init>(Lscenelib/annotations/el/InnerTypeLocation;)V

    invoke-virtual {v9, v4}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 804
    invoke-virtual/range {v29 .. v29}, Lannotator/find/TypedInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    .end local v0    # "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .end local v2    # "i":I
    .end local v3    # "ins":Lannotator/find/Insertion;
    .end local v5    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v6    # "actualDepth":I
    .end local v7    # "expectedDepth":I
    .end local v9    # "criteria":Lannotator/find/Criteria;
    .end local v15    # "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v16    # "methodName":Ljava/lang/String;
    .end local v20    # "fieldName":Ljava/lang/String;
    .end local v22    # "kind":Lcom/sun/source/tree/Tree$Kind;
    .end local v24    # "astack":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath;>;"
    .end local v26    # "n":I
    .end local v27    # "path":Lcom/sun/source/util/TreePath;
    .end local v28    # "node":Lcom/sun/source/tree/Tree;
    .end local v29    # "tins":Lannotator/find/TypedInsertion;
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    :goto_2f
    move-object v12, v1

    move-object/from16 v15, v21

    move-object/from16 v9, v23

    move-object/from16 v0, v25

    move-object/from16 v11, v33

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_13

    .line 487
    .end local v1    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v23    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .end local v33    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v2, "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    .local v4, "astack":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath;>;"
    .local v5, "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .local v6, "localTypePath":Lscenelib/annotations/io/ASTPath;
    .local v7, "criteria":Lannotator/find/Criteria;
    .local v9, "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .local v11, "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v13, "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v14    # "ins":Lannotator/find/Insertion;
    .restart local v16    # "methodName":Ljava/lang/String;
    .restart local v20    # "fieldName":Ljava/lang/String;
    :cond_63
    move-object/from16 v25, v0

    move-object/from16 v24, v4

    move-object v0, v5

    move-object/from16 v32, v6

    move-object/from16 v23, v9

    move-object/from16 v33, v11

    move-object v1, v12

    move-object/from16 v35, v13

    move-object v3, v14

    move-object/from16 v21, v15

    const/4 v12, 0x0

    move-object v9, v7

    .end local v4    # "astack":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath;>;"
    .end local v5    # "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .end local v6    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v7    # "criteria":Lannotator/find/Criteria;
    .end local v11    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v13    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v14    # "ins":Lannotator/find/Insertion;
    .restart local v0    # "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .restart local v1    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v3    # "ins":Lannotator/find/Insertion;
    .local v9, "criteria":Lannotator/find/Criteria;
    .restart local v23    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v24    # "astack":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath;>;"
    .restart local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .restart local v33    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    move-object v12, v1

    move-object/from16 v9, v23

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    goto/16 :goto_14

    .line 807
    .end local v0    # "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .end local v1    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v2    # "topLevelTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v3    # "ins":Lannotator/find/Insertion;
    .end local v16    # "methodName":Ljava/lang/String;
    .end local v20    # "fieldName":Ljava/lang/String;
    .end local v23    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .end local v24    # "astack":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath;>;"
    .end local v32    # "localTypePath":Lscenelib/annotations/io/ASTPath;
    .end local v33    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .local v9, "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v11    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v13    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_64
    move-object/from16 v23, v9

    move-object/from16 v33, v11

    move-object v1, v12

    move-object/from16 v35, v13

    .end local v9    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .end local v11    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v12    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .end local v13    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v1    # "organized":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    .restart local v23    # "outerInsertions":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lannotator/find/TypedInsertion;>;"
    .restart local v33    # "innerInsertionsList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v35    # "innerInsertions":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_65

    .line 808
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "organized.size() (2) = %d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 810
    :cond_65
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 811
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_66

    .line 812
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "organized.size() (3) = %d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 814
    :cond_66
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static outerClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 1167
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1168
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1169
    return-object p0

    .line 1171
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Lannotator/find/Insertion;)V
    .locals 7
    .param p1, "ins"    # Lannotator/find/Insertion;

    .line 156
    invoke-virtual {p1}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v0

    invoke-virtual {v0}, Lannotator/find/Criteria;->getInClass()Lannotator/find/InClassCriterion;

    move-result-object v0

    .line 160
    .local v0, "icc":Lannotator/find/InClassCriterion;
    if-nez v0, :cond_0

    .line 162
    const-string v1, ""

    .line 163
    .local v1, "outerClass":Ljava/lang/String;
    const-string v2, ""

    .local v2, "innerClass":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v1    # "outerClass":Ljava/lang/String;
    .end local v2    # "innerClass":Ljava/lang/String;
    :cond_0
    iget-object v1, v0, Lannotator/find/InClassCriterion;->className:Ljava/lang/String;

    invoke-static {v1}, Lannotator/find/Insertions;->outerClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "outerClass":Ljava/lang/String;
    iget-object v2, v0, Lannotator/find/InClassCriterion;->className:Ljava/lang/String;

    invoke-static {v2}, Lannotator/find/Insertions;->innerClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2    # "innerClass":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lannotator/find/Insertions;->store:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 170
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lannotator/find/Insertion;>;>;"
    if-nez v3, :cond_1

    .line 171
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 172
    iget-object v4, p0, Lannotator/find/Insertions;->store:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 176
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    if-nez v4, :cond_2

    .line 177
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v5

    .line 178
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_2
    iget v5, p0, Lannotator/find/Insertions;->size:I

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Lannotator/find/Insertions;->size:I

    .line 182
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    iget v5, p0, Lannotator/find/Insertions;->size:I

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lannotator/find/Insertions;->size:I

    .line 184
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lannotator/find/Insertion;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lannotator/find/Insertion;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Insertion;

    .line 191
    .local v1, "ins":Lannotator/find/Insertion;
    invoke-virtual {p0, v1}, Lannotator/find/Insertions;->add(Lannotator/find/Insertion;)V

    .line 192
    .end local v1    # "ins":Lannotator/find/Insertion;
    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public forClass(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "qualifiedClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    invoke-direct {p0, p1, p2, v0}, Lannotator/find/Insertions;->forClass(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/util/Set;)V

    .line 99
    return-object v0
.end method

.method public forOuterClass(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "qualifiedOuterClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lannotator/find/Insertions;->store:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 115
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lannotator/find/Insertion;>;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    sget-boolean v1, Lannotator/Main;->temporaryDebug:Z

    if-eqz v1, :cond_1

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "forOuterClass(%s): map = %s%n"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 121
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 122
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "qualifiedClassName":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v1}, Lannotator/find/Insertions;->forClass(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/util/Set;)V

    .line 125
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "qualifiedClassName":Ljava/lang/String;
    goto :goto_0

    .line 126
    :cond_2
    return-object v1

    .line 116
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lannotator/find/Insertion;>;"
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Lannotator/find/Insertions$1;

    invoke-direct {v0, p0}, Lannotator/find/Insertions$1;-><init>(Lannotator/find/Insertions;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 199
    iget v0, p0, Lannotator/find/Insertions;->size:I

    return v0
.end method

.method public toList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lannotator/find/Insertions;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-virtual {p0}, Lannotator/find/Insertions;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lannotator/find/Insertion;

    .local v2, "ins":Lannotator/find/Insertion;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v2    # "ins":Lannotator/find/Insertion;
    :cond_0
    return-object v0
.end method
