.class final Lannotator/find/InPackageCriterion;
.super Ljava/lang/Object;
.source "InPackageCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lannotator/find/InPackageCriterion;->name:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 22
    sget-object v0, Lannotator/find/Criterion$Kind;->IN_PACKAGE:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 7
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 36
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 37
    return v0

    .line 40
    :cond_0
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 41
    invoke-static {p1}, Lannotator/Main;->leafString(Lcom/sun/source/util/TreePath;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lannotator/find/InPackageCriterion;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 40
    const-string v3, "InPackageCriterion.isSatisfiedBy(%s); this=%s"

    invoke-virtual {v1, v3, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 45
    .local v1, "tree":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->COMPILATION_UNIT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_6

    .line 46
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/CompilationUnitTree;

    .line 47
    .local v2, "cu":Lcom/sun/source/tree/CompilationUnitTree;
    invoke-interface {v2}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageName()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 48
    .local v3, "pn":Lcom/sun/source/tree/ExpressionTree;
    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 49
    iget-object v5, p0, Lannotator/find/InPackageCriterion;->name:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v0, v4

    :cond_3
    return v0

    .line 51
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lannotator/find/InPackageCriterion;->name:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    :cond_5
    return v0

    .line 55
    .end local v2    # "cu":Lcom/sun/source/tree/CompilationUnitTree;
    .end local v3    # "pn":Lcom/sun/source/tree/ExpressionTree;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    .line 56
    .end local v1    # "tree":Lcom/sun/source/tree/Tree;
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    :cond_7
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v2, "InPackageCriterion.isSatisfiedBy => false"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 27
    if-nez p1, :cond_0

    .line 28
    const/4 v0, 0x0

    return v0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lannotator/find/InPackageCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in package \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/InPackageCriterion;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
