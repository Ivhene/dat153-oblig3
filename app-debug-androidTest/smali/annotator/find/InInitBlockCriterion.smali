.class public Lannotator/find/InInitBlockCriterion;
.super Ljava/lang/Object;
.source "InInitBlockCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final blockID:I

.field public final isStatic:Z

.field public final notInMethodCriterion:Lannotator/find/Criterion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "blockID"    # I
    .param p2, "isStatic"    # Z

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lannotator/find/InInitBlockCriterion;->blockID:I

    .line 19
    iput-boolean p2, p0, Lannotator/find/InInitBlockCriterion;->isStatic:Z

    .line 20
    invoke-static {}, Lannotator/find/Criteria;->notInMethod()Lannotator/find/Criterion;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/InInitBlockCriterion;->notInMethodCriterion:Lannotator/find/Criterion;

    .line 21
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 46
    iget-boolean v0, p0, Lannotator/find/InInitBlockCriterion;->isStatic:Z

    if-eqz v0, :cond_0

    sget-object v0, Lannotator/find/Criterion$Kind;->IN_STATIC_INIT:Lannotator/find/Criterion$Kind;

    goto :goto_0

    :cond_0
    sget-object v0, Lannotator/find/Criterion$Kind;->IN_INSTANCE_INIT:Lannotator/find/Criterion$Kind;

    :goto_0
    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 3
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 34
    nop

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 35
    iget-boolean v1, p0, Lannotator/find/InInitBlockCriterion;->isStatic:Z

    invoke-static {p1, v1}, Lannotator/scanner/CommonScanner;->isInitBlock(Lcom/sun/source/util/TreePath;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    iget-boolean v1, p0, Lannotator/find/InInitBlockCriterion;->isStatic:Z

    invoke-static {p1, v1}, Lannotator/scanner/InitBlockScanner;->indexOfInitTree(Lcom/sun/source/util/TreePath;Z)I

    move-result v1

    .line 37
    .local v1, "indexInSource":I
    iget v2, p0, Lannotator/find/InInitBlockCriterion;->blockID:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 39
    .end local v1    # "indexInSource":I
    :cond_1
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    goto :goto_0

    .line 41
    :cond_2
    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 29
    invoke-virtual {p0, p1}, Lannotator/find/InInitBlockCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lannotator/find/InInitBlockCriterion;->isStatic:Z

    if-eqz v1, :cond_0

    const-string v1, "static"

    goto :goto_0

    :cond_0
    const-string v1, "instance"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initializer with index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lannotator/find/InInitBlockCriterion;->blockID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
