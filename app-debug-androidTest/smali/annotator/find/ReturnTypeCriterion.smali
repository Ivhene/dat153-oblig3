.class public Lannotator/find/ReturnTypeCriterion;
.super Ljava/lang/Object;
.source "ReturnTypeCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final inClassCriterion:Lannotator/find/Criterion;

.field private final methodName:Ljava/lang/String;

.field private final sigMethodCriterion:Lannotator/find/Criterion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lannotator/find/ReturnTypeCriterion;->methodName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lannotator/find/Criteria;->inClass(Ljava/lang/String;Z)Lannotator/find/Criterion;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/ReturnTypeCriterion;->inClassCriterion:Lannotator/find/Criterion;

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p2}, Lannotator/find/Criteria;->isSigMethod(Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lannotator/find/ReturnTypeCriterion;->sigMethodCriterion:Lannotator/find/Criterion;

    .line 20
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 64
    sget-object v0, Lannotator/find/Criterion$Kind;->RETURN_TYPE:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 4
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 33
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 35
    :cond_0
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 36
    invoke-static {p1}, Lannotator/Main;->leafString(Lcom/sun/source/util/TreePath;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lannotator/find/ReturnTypeCriterion;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 35
    const-string v3, "ReturnTypeCriterion.isSatisfiedBy(%s); this=%n"

    invoke-virtual {v1, v3, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_5

    .line 40
    iget-object v1, p0, Lannotator/find/ReturnTypeCriterion;->sigMethodCriterion:Lannotator/find/Criterion;

    if-eqz v1, :cond_2

    .line 41
    invoke-interface {v1, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    .line 44
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-static {v1}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    iget-object v1, p0, Lannotator/find/ReturnTypeCriterion;->inClassCriterion:Lannotator/find/Criterion;

    invoke-interface {v1, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 47
    :cond_3
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v2, "ReturnTypeCriterion.isSatisfiedBy => true%n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    goto :goto_0

    .line 55
    :cond_5
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    .line 56
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    :cond_6
    :goto_1
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v2, "ReturnTypeCriterion.isSatisfiedBy => false%n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
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
    invoke-virtual {p0, p1}, Lannotator/find/ReturnTypeCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

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

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReturnTypeCriterion for method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/ReturnTypeCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
