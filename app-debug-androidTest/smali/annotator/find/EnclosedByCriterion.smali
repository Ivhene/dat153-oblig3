.class final Lannotator/find/EnclosedByCriterion;
.super Ljava/lang/Object;
.source "EnclosedByCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final kind:Lcom/sun/source/tree/Tree$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 10
    return-void
.end method

.method constructor <init>(Lcom/sun/source/tree/Tree$Kind;)V
    .locals 0
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lannotator/find/EnclosedByCriterion;->kind:Lcom/sun/source/tree/Tree$Kind;

    .line 16
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 20
    sget-object v0, Lannotator/find/Criterion$Kind;->ENCLOSED_BY:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 5
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 35
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 36
    return v0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 40
    .local v2, "tree":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    iget-object v4, p0, Lannotator/find/EnclosedByCriterion;->kind:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_1

    .line 41
    const/4 v0, 0x1

    return v0

    .line 43
    .end local v2    # "tree":Lcom/sun/source/tree/Tree;
    :cond_1
    goto :goto_0

    .line 44
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
    invoke-virtual {p0, p1}, Lannotator/find/EnclosedByCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

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

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enclosed by \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/EnclosedByCriterion;->kind:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
