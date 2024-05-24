.class public Lannotator/find/CallCriterion;
.super Ljava/lang/Object;
.source "CallCriterion.java"

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

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lannotator/find/CallCriterion;->methodName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lannotator/find/CallCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    .line 16
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 54
    sget-object v0, Lannotator/find/Criterion$Kind;->METHOD_CALL:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 6
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 29
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 30
    return v0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 35
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_4

    .line 36
    invoke-static {p1, v1}, Lannotator/scanner/MethodCallScanner;->indexOfMethodCallTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I

    move-result v2

    .line 38
    .local v2, "indexInSource":I
    iget-object v3, p0, Lannotator/find/CallCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v3}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 39
    iget-object v3, p0, Lannotator/find/CallCriterion;->methodName:Ljava/lang/String;

    iget-object v5, p0, Lannotator/find/CallCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v5, v5, Lscenelib/annotations/el/RelativeLocation;->offset:I

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lannotator/scanner/MethodCallScanner;->getMethodCallIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 41
    .local v3, "indexInClass":I
    if-ne v2, v3, :cond_1

    move v0, v4

    .line 42
    .end local v3    # "indexInClass":I
    .local v0, "b":Z
    :cond_1
    goto :goto_0

    .line 43
    .end local v0    # "b":Z
    :cond_2
    iget-object v3, p0, Lannotator/find/CallCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v3, v3, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-ne v2, v3, :cond_3

    move v0, v4

    .line 45
    .restart local v0    # "b":Z
    :cond_3
    :goto_0
    return v0

    .line 47
    .end local v0    # "b":Z
    .end local v2    # "indexInSource":I
    :cond_4
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lannotator/find/CallCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    .line 48
    .restart local v0    # "b":Z
    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 24
    invoke-virtual {p0, p1}, Lannotator/find/CallCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCriterion: in method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/CallCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/CallCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
