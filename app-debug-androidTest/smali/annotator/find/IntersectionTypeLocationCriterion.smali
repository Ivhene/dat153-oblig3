.class public Lannotator/find/IntersectionTypeLocationCriterion;
.super Ljava/lang/Object;
.source "IntersectionTypeLocationCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final typeIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 15
    return-void
.end method

.method public constructor <init>(Lscenelib/annotations/el/RelativeLocation;)V
    .locals 1
    .param p1, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget v0, p1, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    iput v0, p0, Lannotator/find/IntersectionTypeLocationCriterion;->typeIndex:I

    .line 20
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 55
    sget-object v0, Lannotator/find/Criterion$Kind;->INTERSECT_LOCATION:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 7
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 33
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 34
    .local v0, "parentPath":Lcom/sun/source/util/TreePath;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 36
    .local v1, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->INTERSECTION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 37
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/IntersectionTypeTree;

    .line 38
    .local v2, "itt":Lcom/sun/source/tree/IntersectionTypeTree;
    invoke-interface {v2}, Lcom/sun/source/tree/IntersectionTypeTree;->getBounds()Ljava/util/List;

    move-result-object v3

    .line 39
    .local v3, "bounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 40
    .local v4, "leaf":Lcom/sun/source/tree/Tree;
    iget v5, p0, Lannotator/find/IntersectionTypeLocationCriterion;->typeIndex:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget v5, p0, Lannotator/find/IntersectionTypeLocationCriterion;->typeIndex:I

    .line 41
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 42
    const/4 v5, 0x1

    return v5

    .line 46
    .end local v1    # "parent":Lcom/sun/source/tree/Tree;
    .end local v2    # "itt":Lcom/sun/source/tree/IntersectionTypeTree;
    .end local v3    # "bounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .end local v4    # "leaf":Lcom/sun/source/tree/Tree;
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    .line 47
    .local v1, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-static {v1}, Lscenelib/annotations/io/ASTPath;->isTypeKind(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 48
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {p0, v2}, Lannotator/find/IntersectionTypeLocationCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v2

    return v2
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 24
    if-nez p1, :cond_0

    .line 25
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 28
    invoke-virtual {p0, p1}, Lannotator/find/IntersectionTypeLocationCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntersectionTypeLocation: at type index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lannotator/find/IntersectionTypeLocationCriterion;->typeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
