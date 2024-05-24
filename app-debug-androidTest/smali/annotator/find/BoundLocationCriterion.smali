.class public Lannotator/find/BoundLocationCriterion;
.super Ljava/lang/Object;
.source "BoundLocationCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final boundIndex:I

.field private final paramIndex:I

.field private parentCriterion:Lannotator/find/Criterion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 15
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .param p1, "boundIndex"    # I
    .param p2, "paramIndex"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lannotator/find/BoundLocationCriterion;->boundIndex:I

    .line 28
    iput p2, p0, Lannotator/find/BoundLocationCriterion;->paramIndex:I

    .line 30
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 31
    new-instance v1, Lannotator/find/BoundLocationCriterion;

    invoke-direct {v1, v0, p2}, Lannotator/find/BoundLocationCriterion;-><init>(II)V

    iput-object v1, p0, Lannotator/find/BoundLocationCriterion;->parentCriterion:Lannotator/find/Criterion;

    goto :goto_0

    .line 32
    :cond_0
    if-eq p2, v0, :cond_1

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lannotator/find/BoundLocationCriterion;->parentCriterion:Lannotator/find/Criterion;

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lscenelib/annotations/el/BoundLocation;)V
    .locals 2
    .param p1, "boundLoc"    # Lscenelib/annotations/el/BoundLocation;

    .line 23
    iget v0, p1, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    iget v1, p1, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    invoke-direct {p0, v0, v1}, Lannotator/find/BoundLocationCriterion;-><init>(II)V

    .line 24
    return-void
.end method

.method private isInterface(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Z
    .locals 2
    .param p1, "bound"    # Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 123
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 124
    .local v0, "type":Lcom/sun/tools/javac/code/Type;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 129
    sget-object v0, Lannotator/find/Criterion$Kind;->BOUND_LOCATION:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 8
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 56
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 57
    .local v2, "parentPath":Lcom/sun/source/util/TreePath;
    if-nez v2, :cond_1

    .line 58
    return v0

    .line 61
    :cond_1
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 62
    .local v3, "parent":Lcom/sun/source/tree/Tree;
    if-nez v3, :cond_2

    .line 63
    return v0

    .line 66
    :cond_2
    const/4 v4, 0x0

    .line 72
    .local v4, "returnValue":Z
    iget v5, p0, Lannotator/find/BoundLocationCriterion;->boundIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    .line 73
    instance-of v6, v3, Lcom/sun/source/tree/TypeParameterTree;

    if-eqz v6, :cond_6

    .line 74
    move-object v5, v3

    check-cast v5, Lcom/sun/source/tree/TypeParameterTree;

    invoke-interface {v5}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v5

    .line 75
    .local v5, "bounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    iget v6, p0, Lannotator/find/BoundLocationCriterion;->boundIndex:I

    .line 76
    .local v6, "ix":I
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lannotator/find/BoundLocationCriterion;->isInterface(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    add-int/lit8 v6, v6, -0x1

    .line 79
    :cond_3
    if-ltz v6, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    .line 80
    :cond_4
    iget-object v0, p0, Lannotator/find/BoundLocationCriterion;->parentCriterion:Lannotator/find/Criterion;

    invoke-interface {v0, v2}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v4

    .line 82
    .end local v5    # "bounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .end local v6    # "ix":I
    :cond_5
    goto/16 :goto_3

    :cond_6
    if-nez v5, :cond_5

    instance-of v5, v1, Lcom/sun/source/tree/TypeParameterTree;

    if-eqz v5, :cond_5

    .line 83
    move-object v5, v1

    check-cast v5, Lcom/sun/source/tree/TypeParameterTree;

    invoke-interface {v5}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v5

    .line 84
    .restart local v5    # "bounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v6}, Lannotator/find/BoundLocationCriterion;->isInterface(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    .line 89
    :cond_7
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    .line 90
    .local v0, "type":Lcom/sun/tools/javac/code/Type;
    if-eqz v0, :cond_9

    iget-object v6, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 91
    iget-object v6, p0, Lannotator/find/BoundLocationCriterion;->parentCriterion:Lannotator/find/Criterion;

    invoke-interface {v6, v2}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v4

    goto :goto_1

    .line 87
    .end local v0    # "type":Lcom/sun/tools/javac/code/Type;
    :cond_8
    :goto_0
    iget-object v0, p0, Lannotator/find/BoundLocationCriterion;->parentCriterion:Lannotator/find/Criterion;

    invoke-interface {v0, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    move v4, v0

    .line 94
    .end local v5    # "bounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :cond_9
    :goto_1
    goto :goto_3

    .line 95
    :cond_a
    iget v0, p0, Lannotator/find/BoundLocationCriterion;->paramIndex:I

    if-eq v0, v6, :cond_e

    .line 98
    instance-of v0, v3, Lcom/sun/source/tree/MethodTree;

    if-nez v0, :cond_b

    instance-of v0, v3, Lcom/sun/source/tree/ClassTree;

    if-eqz v0, :cond_e

    .line 99
    :cond_b
    const/4 v0, 0x0

    .line 101
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/TypeParameterTree;>;"
    instance-of v5, v3, Lcom/sun/source/tree/MethodTree;

    if-eqz v5, :cond_c

    .line 102
    move-object v5, v3

    check-cast v5, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v5}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 103
    :cond_c
    instance-of v5, v3, Lcom/sun/source/tree/ClassTree;

    if-eqz v5, :cond_d

    .line 104
    move-object v5, v3

    check-cast v5, Lcom/sun/source/tree/ClassTree;

    invoke-interface {v5}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    .line 107
    :cond_d
    :goto_2
    iget v5, p0, Lannotator/find/BoundLocationCriterion;->paramIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 108
    iget v5, p0, Lannotator/find/BoundLocationCriterion;->paramIndex:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_e

    .line 109
    const/4 v4, 0x1

    .line 115
    .end local v0    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/TypeParameterTree;>;"
    :cond_e
    :goto_3
    if-nez v4, :cond_f

    .line 116
    invoke-virtual {p0, v2}, Lannotator/find/BoundLocationCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 118
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 43
    invoke-virtual {p0, p1}, Lannotator/find/BoundLocationCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundCriterion: at param index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lannotator/find/BoundLocationCriterion;->paramIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at bound index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lannotator/find/BoundLocationCriterion;->boundIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
