.class public Lannotator/find/ReceiverCriterion;
.super Ljava/lang/Object;
.source "ReceiverCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final isSigMethodCriterion:Lannotator/find/Criterion;

.field private final methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lannotator/find/ReceiverCriterion;->methodName:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lannotator/find/Criteria;->isSigMethod(Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/ReceiverCriterion;->isSigMethodCriterion:Lannotator/find/Criterion;

    .line 15
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 74
    sget-object v0, Lannotator/find/Criterion$Kind;->RECEIVER:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 5
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

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_3

    .line 34
    iget-object v1, p0, Lannotator/find/ReceiverCriterion;->isSigMethodCriterion:Lannotator/find/Criterion;

    invoke-interface {v1, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/MethodTree;

    .line 38
    .local v1, "leaf":Lcom/sun/source/tree/MethodTree;
    invoke-interface {v1}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 40
    .end local v1    # "leaf":Lcom/sun/source/tree/MethodTree;
    :cond_2
    return v0

    .line 48
    :cond_3
    const/4 v1, 0x0

    .line 49
    .local v1, "param":Lcom/sun/source/tree/Tree;
    move-object v2, p1

    .line 50
    .local v2, "parent":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_6

    .line 51
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_5

    .line 52
    if-nez v1, :cond_4

    .line 53
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    goto :goto_1

    .line 57
    :cond_4
    return v0

    .line 60
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 63
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/MethodTree;

    .line 64
    .local v3, "method":Lcom/sun/source/tree/MethodTree;
    invoke-interface {v3}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v4

    if-ne v1, v4, :cond_7

    .line 65
    iget-object v0, p0, Lannotator/find/ReceiverCriterion;->isSigMethodCriterion:Lannotator/find/Criterion;

    invoke-interface {v0, v2}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 68
    .end local v3    # "method":Lcom/sun/source/tree/MethodTree;
    :cond_7
    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Lannotator/find/ReceiverCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverCriterion for method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/ReceiverCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
