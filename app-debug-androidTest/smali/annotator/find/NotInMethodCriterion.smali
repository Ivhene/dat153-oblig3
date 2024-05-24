.class final Lannotator/find/NotInMethodCriterion;
.super Ljava/lang/Object;
.source "NotInMethodCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 16
    sget-object v0, Lannotator/find/Criterion$Kind;->NOT_IN_METHOD:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 3
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 31
    nop

    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 32
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 33
    const/4 v1, 0x0

    return v1

    .line 35
    :cond_1
    invoke-static {v0}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 36
    return v2

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    .line 39
    .end local v0    # "kind":Lcom/sun/source/tree/Tree$Kind;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    :cond_3
    return v2
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 21
    if-nez p1, :cond_0

    .line 22
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 25
    invoke-virtual {p0, p1}, Lannotator/find/NotInMethodCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "not in method"

    return-object v0
.end method
