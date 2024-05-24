.class public Lannotator/find/FieldCriterion;
.super Ljava/lang/Object;
.source "FieldCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final isDeclaration:Z

.field public final notInMethodCriterion:Lannotator/find/Criterion;

.field public final varCriterion:Lannotator/find/Criterion;

.field public final varName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lannotator/find/FieldCriterion;-><init>(Ljava/lang/String;Z)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "isDeclaration"    # Z

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lannotator/find/FieldCriterion;->varName:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lannotator/find/FieldCriterion;->isDeclaration:Z

    .line 20
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    invoke-static {v0, p1}, Lannotator/find/Criteria;->is(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/FieldCriterion;->varCriterion:Lannotator/find/Criterion;

    .line 21
    invoke-static {}, Lannotator/find/Criteria;->notInMethod()Lannotator/find/Criterion;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/FieldCriterion;->notInMethodCriterion:Lannotator/find/Criterion;

    .line 22
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 50
    sget-object v0, Lannotator/find/Criterion$Kind;->FIELD:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 2
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 35
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lannotator/find/FieldCriterion;->isDeclaration:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lannotator/find/FieldCriterion;->varCriterion:Lannotator/find/Criterion;

    invoke-interface {v0, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lannotator/find/FieldCriterion;->notInMethodCriterion:Lannotator/find/Criterion;

    .line 41
    invoke-interface {v0, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lannotator/find/FieldCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 37
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 26
    if-nez p1, :cond_0

    .line 27
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 30
    invoke-virtual {p0, p1}, Lannotator/find/FieldCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldCriterion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/FieldCriterion;->varName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
