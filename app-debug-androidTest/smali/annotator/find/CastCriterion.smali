.class public Lannotator/find/CastCriterion;
.super Ljava/lang/Object;
.source "CastCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/CastCriterion;->methodName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lannotator/find/CastCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    .line 20
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 60
    sget-object v0, Lannotator/find/Criterion$Kind;->CAST:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public getLocation()Lscenelib/annotations/el/RelativeLocation;
    .locals 1

    .line 56
    iget-object v0, p0, Lannotator/find/CastCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 6
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 33
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 34
    return v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 39
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->TYPE_CAST:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_4

    .line 40
    invoke-static {p1, v1}, Lannotator/scanner/CastScanner;->indexOfCastTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I

    move-result v2

    .line 42
    .local v2, "indexInSource":I
    iget-object v3, p0, Lannotator/find/CastCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v3}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 43
    iget-object v3, p0, Lannotator/find/CastCriterion;->methodName:Ljava/lang/String;

    iget-object v5, p0, Lannotator/find/CastCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v5, v5, Lscenelib/annotations/el/RelativeLocation;->offset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lannotator/scanner/CastScanner;->getMethodCastIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 44
    .local v3, "indexInClass":I
    if-ne v2, v3, :cond_1

    move v0, v4

    .line 45
    .end local v3    # "indexInClass":I
    .local v0, "b":Z
    :cond_1
    goto :goto_0

    .line 46
    .end local v0    # "b":Z
    :cond_2
    iget-object v3, p0, Lannotator/find/CastCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v3, v3, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-ne v2, v3, :cond_3

    move v0, v4

    .line 48
    .restart local v0    # "b":Z
    :cond_3
    :goto_0
    return v0

    .line 51
    .end local v0    # "b":Z
    .end local v2    # "indexInSource":I
    :cond_4
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lannotator/find/CastCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    .line 52
    .restart local v0    # "b":Z
    return v0
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
    invoke-virtual {p0, p1}, Lannotator/find/CastCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

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

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CastCriterion: in method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/CastCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/CastCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
