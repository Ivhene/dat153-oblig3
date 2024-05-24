.class public Lannotator/find/LambdaCriterion;
.super Ljava/lang/Object;
.source "LambdaCriterion.java"

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
    iput-object p1, p0, Lannotator/find/LambdaCriterion;->methodName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lannotator/find/LambdaCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    .line 16
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 79
    sget-object v0, Lannotator/find/Criterion$Kind;->LAMBDA_EXPRESSION:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 10
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 29
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 30
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v2, "return null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 36
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {p0}, Lannotator/find/LambdaCriterion;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%n%s%n"

    invoke-virtual {v2, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v3, "LambdaCriterion.isSatisfiedBy: %s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v3, "leaf: %s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "kind: %s%n"

    invoke-virtual {v2, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "class: %s%n"

    invoke-virtual {v2, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 43
    .local v2, "parentPath":Lcom/sun/source/util/TreePath;
    if-nez v2, :cond_1

    .line 44
    sget-object v3, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v4, "return: parent path null%n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return v0

    .line 48
    :cond_1
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 49
    .local v3, "parent":Lcom/sun/source/tree/Tree;
    if-nez v3, :cond_2

    .line 50
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v5, "return: parent null%n"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return v0

    .line 54
    :cond_2
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_6

    .line 57
    invoke-static {p1, v3}, Lannotator/scanner/LambdaScanner;->indexOfLambdaExpressionTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I

    move-result v4

    .line 58
    .local v4, "indexInSource":I
    sget-object v5, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "return source: %d%n"

    invoke-virtual {v5, v7, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v5, p0, Lannotator/find/LambdaCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v5}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 61
    iget-object v5, p0, Lannotator/find/LambdaCriterion;->methodName:Ljava/lang/String;

    iget-object v7, p0, Lannotator/find/LambdaCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v7, v7, Lscenelib/annotations/el/RelativeLocation;->offset:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lannotator/scanner/LambdaScanner;->getMethodLambdaExpressionIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 62
    .local v5, "indexInClass":I
    sget-object v7, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "return class: %d%n"

    invoke-virtual {v7, v9, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    if-ne v4, v5, :cond_3

    move v0, v6

    .line 64
    .end local v5    # "indexInClass":I
    .local v0, "b":Z
    :cond_3
    goto :goto_0

    .line 65
    .end local v0    # "b":Z
    :cond_4
    iget-object v5, p0, Lannotator/find/LambdaCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v5, v5, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-ne v4, v5, :cond_5

    move v0, v6

    .line 66
    .restart local v0    # "b":Z
    :cond_5
    sget-object v5, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    iget-object v6, p0, Lannotator/find/LambdaCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v6, v6, Lscenelib/annotations/el/RelativeLocation;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "return loc.index: %d%n"

    invoke-virtual {v5, v7, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_0
    sget-object v5, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "return new: %b%n"

    invoke-virtual {v5, v7, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return v0

    .line 71
    .end local v0    # "b":Z
    .end local v4    # "indexInSource":I
    :cond_6
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lannotator/find/LambdaCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    .line 72
    .restart local v0    # "b":Z
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "return parent: %b%n"

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
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
    invoke-virtual {p0, p1}, Lannotator/find/LambdaCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

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

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LambdaCriterion: at location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/LambdaCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
