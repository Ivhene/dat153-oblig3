.class public Lannotator/find/NewCriterion;
.super Ljava/lang/Object;
.source "NewCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final inMethodCriterion:Lannotator/find/Criterion;

.field private final loc:Lscenelib/annotations/el/RelativeLocation;

.field private final methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/NewCriterion;->methodName:Ljava/lang/String;

    .line 22
    const-string v0, "init for field"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    const-string v0, "static init number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const-string v0, "instance init number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {p1}, Lannotator/find/Criteria;->inMethod(Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/NewCriterion;->inMethodCriterion:Lannotator/find/Criterion;

    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lannotator/find/NewCriterion;->inMethodCriterion:Lannotator/find/Criterion;

    .line 31
    :goto_0
    iput-object p2, p0, Lannotator/find/NewCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    .line 32
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 76
    sget-object v0, Lannotator/find/Criterion$Kind;->NEW:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 6
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 45
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 46
    return v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 51
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    iget-object v2, p0, Lannotator/find/NewCriterion;->inMethodCriterion:Lannotator/find/Criterion;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lannotator/find/NewCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 57
    :cond_1
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_3

    .line 58
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lannotator/find/NewCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 59
    :cond_3
    :goto_0
    invoke-static {p1, v1}, Lannotator/scanner/NewScanner;->indexOfNewTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I

    move-result v2

    .line 62
    .local v2, "indexInSource":I
    iget-object v3, p0, Lannotator/find/NewCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v3}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 63
    iget-object v3, p0, Lannotator/find/NewCriterion;->methodName:Ljava/lang/String;

    iget-object v5, p0, Lannotator/find/NewCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v5, v5, Lscenelib/annotations/el/RelativeLocation;->offset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lannotator/scanner/NewScanner;->getMethodNewIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 64
    .local v3, "indexInClass":I
    if-ne v2, v3, :cond_4

    move v0, v4

    .line 65
    .end local v3    # "indexInClass":I
    .local v0, "b":Z
    :cond_4
    goto :goto_1

    .line 66
    .end local v0    # "b":Z
    :cond_5
    iget-object v3, p0, Lannotator/find/NewCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v3, v3, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-ne v2, v3, :cond_6

    move v0, v4

    .line 68
    .restart local v0    # "b":Z
    :cond_6
    :goto_1
    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 36
    if-nez p1, :cond_0

    .line 37
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lannotator/find/NewCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewCriterion in method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/NewCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/NewCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
