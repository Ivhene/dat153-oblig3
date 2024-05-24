.class public Lannotator/find/GenericArrayLocationCriterion;
.super Ljava/lang/Object;
.source "GenericArrayLocationCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final debug:Z = false


# instance fields
.field private final location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lannotator/find/GenericArrayLocationCriterion;-><init>(Ljava/util/List;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    .line 65
    return-void
.end method

.method public constructor <init>(Lscenelib/annotations/el/InnerTypeLocation;)V
    .locals 1
    .param p1, "innerTypeLoc"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 60
    iget-object v0, p1, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-direct {p0, v0}, Lannotator/find/GenericArrayLocationCriterion;-><init>(Ljava/util/List;)V

    .line 61
    return-void
.end method

.method private containsOnlyArray(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)Z"
        }
    .end annotation

    .line 85
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 86
    .local v1, "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    iget-object v2, v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-eq v2, v3, :cond_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 89
    .end local v1    # "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isGenericOrArray(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/Tree;

    .line 481
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 482
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 483
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 484
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 485
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 486
    invoke-interface {v0}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lannotator/find/GenericArrayLocationCriterion;->isGenericOrArray(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 481
    :goto_1
    return v0
.end method

.method private isStatic(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)Z
    .locals 2
    .param p1, "fieldAccess"    # Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 475
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    .line 476
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 477
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 494
    sget-object v0, Lannotator/find/Criterion$Kind;->GENERIC_ARRAY_LOCATION:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public getLocation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 16
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_e

    .line 107
    :cond_0
    move-object/from16 v3, p1

    .line 108
    .local v3, "pathRemaining":Lcom/sun/source/util/TreePath;
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 113
    .local v4, "leaf":Lcom/sun/source/tree/Tree;
    const/4 v5, 0x0

    .line 114
    .local v5, "child":Lcom/sun/source/tree/Tree;
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_1

    .line 115
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/ParameterizedTypeTree;

    invoke-interface {v6}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_2

    .line 117
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v6}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_3

    .line 119
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/NewClassTree;

    invoke-interface {v6}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    goto :goto_0

    .line 120
    :cond_3
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_4

    iget-object v6, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 121
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/NewArrayTree;

    invoke-interface {v6}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 123
    :cond_4
    :goto_0
    const/4 v6, 0x1

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_7

    .line 124
    move-object v7, v5

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    .line 125
    .local v7, "exp":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    iget-object v8, v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v8, :cond_5

    iget-object v8, v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    if-eq v8, v9, :cond_6

    :cond_5
    iget-object v8, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    .line 126
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    .line 127
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v8, v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v9, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-eq v8, v9, :cond_7

    .line 129
    :cond_6
    return v2

    .line 133
    .end local v7    # "exp":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_7
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_b

    .line 134
    move-object v7, v4

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 135
    .local v7, "fieldAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-direct {v0, v7}, Lannotator/find/GenericArrayLocationCriterion;->isStatic(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 137
    iget-object v8, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 139
    return v6

    .line 140
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v8

    invoke-direct {v0, v8}, Lannotator/find/GenericArrayLocationCriterion;->isGenericOrArray(Lcom/sun/source/tree/Tree;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v8

    invoke-direct {v0, v8}, Lannotator/find/GenericArrayLocationCriterion;->isGenericOrArray(Lcom/sun/source/tree/Tree;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    goto :goto_1

    .line 152
    :cond_9
    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v8

    .line 153
    .local v8, "exp":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v10, :cond_a

    iget-object v9, v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v9, :cond_a

    iget-object v9, v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 154
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v9

    sget-object v10, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    if-ne v9, v10, :cond_a

    .line 155
    iget-object v9, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 156
    return v6

    .line 160
    :cond_a
    iget-object v9, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    .line 161
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v9, v9, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-eq v9, v10, :cond_b

    .line 163
    return v2

    .line 169
    .end local v7    # "fieldAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    .end local v8    # "exp":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_b
    :goto_1
    iget-object v7, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v7

    .line 177
    .local v7, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-eq v8, v9, :cond_f

    .line 178
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v8, v9, :cond_f

    .line 179
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v9, :cond_c

    move-object v8, v4

    check-cast v8, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 181
    invoke-interface {v8}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v8

    .line 180
    invoke-static {v1, v8}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v8

    invoke-virtual {v0, v8}, Lannotator/find/GenericArrayLocationCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 182
    :cond_c
    invoke-direct {v0, v4}, Lannotator/find/GenericArrayLocationCriterion;->isGenericOrArray(Lcom/sun/source/tree/Tree;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 184
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v8, v9, :cond_d

    .line 185
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v8, v9, :cond_d

    .line 186
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v8, v9, :cond_d

    .line 189
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->PRIMITIVE_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v9, :cond_e

    .line 193
    :cond_d
    invoke-direct {v0, v7}, Lannotator/find/GenericArrayLocationCriterion;->isGenericOrArray(Lcom/sun/source/tree/Tree;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_2

    :cond_e
    goto :goto_3

    :cond_f
    :goto_2
    move v2, v6

    .line 199
    .local v2, "result":Z
    :goto_3
    return v2

    .line 206
    .end local v2    # "result":Z
    .end local v7    # "parent":Lcom/sun/source/tree/Tree;
    :cond_10
    :goto_4
    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_11

    .line 207
    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    goto :goto_4

    .line 210
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .local v7, "locationRemaining":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_38

    .line 214
    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 215
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v9, :cond_12

    .line 216
    invoke-direct {v0, v7}, Lannotator/find/GenericArrayLocationCriterion;->containsOnlyArray(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 220
    return v6

    .line 222
    :cond_12
    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    .line 223
    .local v8, "parentPath":Lcom/sun/source/util/TreePath;
    if-nez v8, :cond_13

    .line 227
    return v2

    .line 229
    :cond_13
    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v9

    .line 231
    .local v9, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v10

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v10, v11, :cond_14

    .line 234
    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    .line 235
    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v9

    .line 243
    :cond_14
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 244
    .local v10, "loc":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    iget-object v11, v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v11, v12, :cond_18

    .line 245
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v11, v12, :cond_15

    .line 246
    move-object v4, v9

    .line 247
    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    .line 248
    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v9

    .line 250
    :cond_15
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v11, v12, :cond_16

    return v2

    .line 252
    :cond_16
    move-object v11, v4

    check-cast v11, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 253
    .local v11, "fieldAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-direct {v0, v11}, Lannotator/find/GenericArrayLocationCriterion;->isStatic(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 254
    return v2

    .line 256
    :cond_17
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 257
    iget-object v4, v11, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 258
    move-object v3, v8

    .line 260
    .end local v11    # "fieldAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    goto/16 :goto_c

    :cond_18
    iget-object v11, v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v11, v12, :cond_1c

    .line 261
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v11, v12, :cond_1c

    .line 264
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_19

    .line 265
    return v2

    .line 272
    :cond_19
    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v11

    .line 273
    .local v11, "gpath":Lcom/sun/source/util/TreePath;
    if-eqz v11, :cond_1b

    .line 274
    invoke-virtual {v11}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v12

    .line 275
    .local v12, "gparent":Lcom/sun/source/tree/Tree;
    invoke-interface {v12}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    if-ne v13, v14, :cond_1a

    .line 276
    sget-object v6, Lannotator/find/TreeFinder;->warn:Lscenelib/annotations/io/DebugWriter;

    const-string v13, "WARNING: wildcard bounds not allowed in \'instanceof\' expression; skipping insertion%n"

    new-array v14, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v13, v14}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    return v2

    .line 279
    :cond_1a
    invoke-interface {v12}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v13, v14, :cond_1b

    .line 280
    invoke-virtual {v11}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v11

    .line 281
    if-eqz v11, :cond_1b

    .line 282
    invoke-virtual {v11}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v13

    invoke-interface {v13}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v13, v14, :cond_1b

    .line 283
    sget-object v6, Lannotator/find/TreeFinder;->warn:Lscenelib/annotations/io/DebugWriter;

    const-string v13, "WARNING: wildcard bounds not allowed in generic array type; skipping insertion%n"

    new-array v14, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v13, v14}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    return v2

    .line 289
    .end local v12    # "gparent":Lcom/sun/source/tree/Tree;
    :cond_1b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 290
    .end local v11    # "gpath":Lcom/sun/source/util/TreePath;
    goto/16 :goto_c

    :cond_1c
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v11, v12, :cond_2a

    .line 291
    iget-object v11, v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-eq v11, v12, :cond_1d

    .line 292
    return v2

    .line 298
    :cond_1d
    move-object v11, v9

    check-cast v11, Lcom/sun/source/tree/ParameterizedTypeTree;

    invoke-interface {v11}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v11

    .line 299
    .local v11, "inner":Lcom/sun/source/tree/Tree;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    .line 300
    .local v12, "i":I
    add-int/lit8 v13, v12, -0x1

    .end local v12    # "i":I
    .local v13, "i":I
    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 301
    :goto_6
    invoke-interface {v11}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v12

    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v12, v14, :cond_22

    move-object v12, v11

    check-cast v12, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 302
    invoke-direct {v0, v12}, Lannotator/find/GenericArrayLocationCriterion;->isStatic(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)Z

    move-result v12

    if-nez v12, :cond_22

    .line 306
    if-gez v13, :cond_1e

    goto :goto_7

    .line 307
    :cond_1e
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v12, v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v14, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-eq v12, v14, :cond_1f

    .line 308
    return v2

    .line 310
    :cond_1f
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 311
    move-object v13, v11

    check-cast v13, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v13}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v11

    .line 312
    invoke-interface {v11}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v13, v14, :cond_20

    .line 313
    move-object v13, v11

    check-cast v13, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v13}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v11

    .line 315
    :cond_20
    invoke-interface {v11}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v13, v14, :cond_21

    .line 316
    move-object v13, v11

    check-cast v13, Lcom/sun/source/tree/ParameterizedTypeTree;

    invoke-interface {v13}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v11

    move v13, v12

    goto :goto_6

    .line 315
    :cond_21
    move v13, v12

    goto :goto_6

    .line 319
    .end local v12    # "i":I
    .restart local v13    # "i":I
    :cond_22
    :goto_7
    if-ltz v13, :cond_23

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v12, v12, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v14, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v12, v14, :cond_23

    .line 321
    return v2

    .line 327
    :cond_23
    move-object v12, v9

    check-cast v12, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 328
    invoke-interface {v12}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v12

    .line 329
    .local v12, "childTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    const/4 v14, 0x0

    .line 330
    .local v14, "found":Z
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    iget v6, v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    if-le v15, v6, :cond_28

    .line 331
    iget v6, v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 332
    .local v6, "childi":Lcom/sun/source/tree/Tree;
    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v15

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v15, v2, :cond_24

    .line 333
    move-object v2, v6

    check-cast v2, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v2}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 335
    :cond_24
    if-ne v6, v4, :cond_28

    .line 336
    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 338
    .local v2, "outerPath":Lcom/sun/source/util/TreePath;
    :goto_8
    nop

    .line 337
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v15

    invoke-interface {v15}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v15

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v15, v1, :cond_27

    .line 338
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-direct {v0, v1}, Lannotator/find/GenericArrayLocationCriterion;->isStatic(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 340
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 341
    .end local v2    # "outerPath":Lcom/sun/source/util/TreePath;
    .local v1, "outerPath":Lcom/sun/source/util/TreePath;
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v15, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v15, :cond_25

    .line 342
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 344
    :cond_25
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v15, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v15, :cond_26

    .line 345
    goto :goto_9

    .line 347
    :cond_26
    move-object v8, v1

    .line 339
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    move-object/from16 v1, p1

    .end local v1    # "outerPath":Lcom/sun/source/util/TreePath;
    .restart local v2    # "outerPath":Lcom/sun/source/util/TreePath;
    goto :goto_8

    .line 349
    .end local v2    # "outerPath":Lcom/sun/source/util/TreePath;
    :cond_27
    :goto_9
    move-object v3, v8

    .line 350
    const/4 v14, 0x1

    .line 353
    .end local v6    # "childi":Lcom/sun/source/tree/Tree;
    :cond_28
    if-nez v14, :cond_29

    .line 359
    const/4 v1, 0x0

    return v1

    .line 361
    .end local v11    # "inner":Lcom/sun/source/tree/Tree;
    .end local v12    # "childTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .end local v13    # "i":I
    .end local v14    # "found":Z
    :cond_29
    goto/16 :goto_c

    :cond_2a
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_33

    .line 362
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x1

    goto/16 :goto_b

    .line 394
    :cond_2b
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_30

    .line 395
    iget-object v1, v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-eq v1, v2, :cond_2c

    .line 396
    const/4 v1, 0x0

    return v1

    .line 398
    :cond_2c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 400
    invoke-static {v8}, Lannotator/find/TreeFinder;->largestContainingArray(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 401
    .end local v8    # "parentPath":Lcom/sun/source/util/TreePath;
    .local v1, "parentPath":Lcom/sun/source/util/TreePath;
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 404
    .end local v9    # "parent":Lcom/sun/source/tree/Tree;
    .local v2, "parent":Lcom/sun/source/tree/Tree;
    move-object v6, v2

    check-cast v6, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v6}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    .line 405
    .local v6, "elt":Lcom/sun/source/tree/Tree;
    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2e

    .line 406
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v8, v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v9, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v8, v9, :cond_2e

    .line 407
    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v8, v9, :cond_2d

    .line 411
    const/4 v8, 0x0

    return v8

    .line 413
    :cond_2d
    move-object v8, v6

    check-cast v8, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v8}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    .line 414
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 417
    :cond_2e
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 427
    .local v8, "b":Z
    if-eqz v8, :cond_2f

    .line 428
    move-object v3, v1

    .line 432
    .end local v6    # "elt":Lcom/sun/source/tree/Tree;
    .end local v8    # "b":Z
    goto :goto_c

    .line 430
    .restart local v6    # "elt":Lcom/sun/source/tree/Tree;
    .restart local v8    # "b":Z
    :cond_2f
    const/4 v11, 0x0

    return v11

    .line 432
    .end local v1    # "parentPath":Lcom/sun/source/util/TreePath;
    .end local v2    # "parent":Lcom/sun/source/tree/Tree;
    .end local v6    # "elt":Lcom/sun/source/tree/Tree;
    .local v8, "parentPath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "parent":Lcom/sun/source/tree/Tree;
    :cond_30
    const/4 v11, 0x0

    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_32

    .line 433
    iget-object v1, v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-eq v1, v2, :cond_31

    .line 434
    return v11

    .line 439
    :cond_31
    const/4 v1, 0x1

    return v1

    .line 444
    :cond_32
    return v11

    .line 361
    :cond_33
    const/4 v1, 0x1

    .line 363
    :goto_b
    iget-object v2, v10, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v2, v6, :cond_37

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_34

    const/4 v6, 0x0

    goto :goto_d

    .line 368
    :cond_34
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 372
    move-object v1, v9

    check-cast v1, Lcom/sun/source/tree/WildcardTree;

    .line 373
    .local v1, "wct":Lcom/sun/source/tree/WildcardTree;
    invoke-interface {v1}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 385
    .local v2, "boundTree":Lcom/sun/source/tree/Tree;
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 386
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 387
    const/4 v6, 0x1

    return v6

    .line 389
    :cond_35
    move-object v3, v8

    .line 394
    .end local v1    # "wct":Lcom/sun/source/tree/WildcardTree;
    .end local v2    # "boundTree":Lcom/sun/source/tree/Tree;
    nop

    .line 446
    .end local v8    # "parentPath":Lcom/sun/source/util/TreePath;
    .end local v9    # "parent":Lcom/sun/source/tree/Tree;
    .end local v10    # "loc":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    :goto_c
    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto/16 :goto_5

    .line 392
    .restart local v1    # "wct":Lcom/sun/source/tree/WildcardTree;
    .restart local v2    # "boundTree":Lcom/sun/source/tree/Tree;
    .restart local v8    # "parentPath":Lcom/sun/source/util/TreePath;
    .restart local v9    # "parent":Lcom/sun/source/tree/Tree;
    .restart local v10    # "loc":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    :cond_36
    const/4 v6, 0x0

    return v6

    .line 363
    .end local v1    # "wct":Lcom/sun/source/tree/WildcardTree;
    .end local v2    # "boundTree":Lcom/sun/source/tree/Tree;
    :cond_37
    const/4 v6, 0x0

    .line 366
    :goto_d
    return v6

    .line 451
    .end local v8    # "parentPath":Lcom/sun/source/util/TreePath;
    .end local v9    # "parent":Lcom/sun/source/tree/Tree;
    .end local v10    # "loc":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    :cond_38
    move v6, v2

    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 452
    .local v1, "parentPath":Lcom/sun/source/util/TreePath;
    if-nez v1, :cond_39

    .line 456
    return v6

    .line 458
    :cond_39
    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 467
    .local v2, "parent":Lcom/sun/source/tree/Tree;
    invoke-direct {v0, v2}, Lannotator/find/GenericArrayLocationCriterion;->isGenericOrArray(Lcom/sun/source/tree/Tree;)Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    return v6

    .line 99
    .end local v1    # "parentPath":Lcom/sun/source/util/TreePath;
    .end local v2    # "parent":Lcom/sun/source/tree/Tree;
    .end local v3    # "pathRemaining":Lcom/sun/source/util/TreePath;
    .end local v4    # "leaf":Lcom/sun/source/tree/Tree;
    .end local v5    # "child":Lcom/sun/source/tree/Tree;
    .end local v7    # "locationRemaining":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    :cond_3a
    :goto_e
    const/4 v1, 0x0

    return v1
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 73
    invoke-virtual {p0, p1}, Lannotator/find/GenericArrayLocationCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenericArrayLocationCriterion at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    .line 500
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "outermost type"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lannotator/find/GenericArrayLocationCriterion;->location:Ljava/util/List;

    .line 502
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    return-object v0
.end method
