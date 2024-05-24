.class public Lannotator/find/ExtImplsLocationCriterion;
.super Ljava/lang/Object;
.source "ExtImplsLocationCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final classname:Ljava/lang/String;

.field private final index:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lscenelib/annotations/el/TypeIndexLocation;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "tyLoc"    # Lscenelib/annotations/el/TypeIndexLocation;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lannotator/find/ExtImplsLocationCriterion;->classname:Ljava/lang/String;

    .line 27
    iget v0, p2, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/ExtImplsLocationCriterion;->index:Ljava/lang/Integer;

    .line 28
    return-void
.end method


# virtual methods
.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .line 90
    iget-object v0, p0, Lannotator/find/ExtImplsLocationCriterion;->index:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 95
    sget-object v0, Lannotator/find/Criterion$Kind;->EXTIMPLS_LOCATION:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 9
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 41
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 42
    return v0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 49
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 50
    .local v2, "parentPath":Lcom/sun/source/util/TreePath;
    if-nez v2, :cond_1

    .line 51
    return v0

    .line 54
    :cond_1
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 55
    .local v3, "parent":Lcom/sun/source/tree/Tree;
    if-nez v3, :cond_2

    .line 56
    return v0

    .line 61
    :cond_2
    const/4 v4, 0x0

    .line 63
    .local v4, "returnValue":Z
    iget-object v5, p0, Lannotator/find/ExtImplsLocationCriterion;->index:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v8, :cond_4

    .line 64
    move-object v5, v1

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getExtendsClause()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    if-nez v5, :cond_3

    move v0, v6

    :cond_3
    return v0

    .line 66
    :cond_4
    invoke-static {v3}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    move-object v0, v3

    check-cast v0, Lcom/sun/source/tree/ClassTree;

    .line 69
    .local v0, "ct":Lcom/sun/source/tree/ClassTree;
    iget-object v5, p0, Lannotator/find/ExtImplsLocationCriterion;->index:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 70
    invoke-interface {v0}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 71
    .local v5, "ext":Lcom/sun/source/tree/Tree;
    if-ne v5, v1, :cond_5

    .line 72
    const/4 v4, 0x1

    .line 74
    .end local v5    # "ext":Lcom/sun/source/tree/Tree;
    :cond_5
    goto :goto_0

    .line 75
    :cond_6
    invoke-interface {v0}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "impls":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    iget-object v7, p0, Lannotator/find/ExtImplsLocationCriterion;->index:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget-object v7, p0, Lannotator/find/ExtImplsLocationCriterion;->index:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_7

    .line 77
    const/4 v4, 0x1

    .line 82
    .end local v0    # "ct":Lcom/sun/source/tree/ClassTree;
    .end local v5    # "impls":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :cond_7
    :goto_0
    if-nez v4, :cond_8

    .line 83
    invoke-virtual {p0, v2}, Lannotator/find/ExtImplsLocationCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 85
    :cond_8
    return v6
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lannotator/find/ExtImplsLocationCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtImplsLocationCriterion: class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/ExtImplsLocationCriterion;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at type index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/ExtImplsLocationCriterion;->index:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
