.class public Lannotator/find/InstanceOfCriterion;
.super Ljava/lang/Object;
.source "InstanceOfCriterion.java"

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

    iput-object v0, p0, Lannotator/find/InstanceOfCriterion;->methodName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lannotator/find/InstanceOfCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    .line 20
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 89
    sget-object v0, Lannotator/find/Criterion$Kind;->INSTANCE_OF:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 11
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 33
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 34
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v2, "return null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return v0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 40
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {v2}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v3, "InstanceOfCriterion.isSatisfiedBy:%n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v3, "  this: %s%n"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v1}, Lannotator/Main;->treeToString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  leaf: %s%n"

    invoke-virtual {v2, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  kind: %s%n"

    invoke-virtual {v2, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  class: %s%n"

    invoke-virtual {v2, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 49
    .local v2, "parentPath":Lcom/sun/source/util/TreePath;
    if-nez v2, :cond_2

    .line 50
    sget-object v3, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v4, "return: parent path null%n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return v0

    .line 54
    :cond_2
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 55
    .local v3, "parent":Lcom/sun/source/tree/Tree;
    if-nez v3, :cond_3

    .line 56
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v5, "return: parent null%n"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return v0

    .line 60
    :cond_3
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_8

    .line 61
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/InstanceOfTree;

    .line 62
    .local v4, "instanceOfTree":Lcom/sun/source/tree/InstanceOfTree;
    invoke-interface {v4}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    if-eq v1, v5, :cond_4

    .line 63
    sget-object v5, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v6, "return: not type part of instanceof%n"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return v0

    .line 67
    :cond_4
    invoke-static {p1, v3}, Lannotator/scanner/InstanceOfScanner;->indexOfInstanceOfTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I

    move-result v5

    .line 68
    .local v5, "indexInSource":I
    sget-object v6, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "return source: %d%n"

    invoke-virtual {v6, v8, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v6, p0, Lannotator/find/InstanceOfCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v6}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    .line 71
    iget-object v6, p0, Lannotator/find/InstanceOfCriterion;->methodName:Ljava/lang/String;

    iget-object v8, p0, Lannotator/find/InstanceOfCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v8, v8, Lscenelib/annotations/el/RelativeLocation;->offset:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lannotator/scanner/InstanceOfScanner;->getMethodInstanceOfIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 72
    .local v6, "indexInClass":I
    sget-object v8, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "return class: %d%n"

    invoke-virtual {v8, v10, v9}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    if-ne v5, v6, :cond_5

    move v0, v7

    .line 74
    .end local v6    # "indexInClass":I
    .local v0, "b":Z
    :cond_5
    goto :goto_0

    .line 75
    .end local v0    # "b":Z
    :cond_6
    iget-object v6, p0, Lannotator/find/InstanceOfCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v6, v6, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-ne v5, v6, :cond_7

    move v0, v7

    .line 76
    .restart local v0    # "b":Z
    :cond_7
    sget-object v6, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    iget-object v7, p0, Lannotator/find/InstanceOfCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v7, v7, Lscenelib/annotations/el/RelativeLocation;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "return loc.index: %d%n"

    invoke-virtual {v6, v8, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :goto_0
    sget-object v6, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "return new: %b"

    invoke-virtual {v6, v8, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return v0

    .line 81
    .end local v0    # "b":Z
    .end local v4    # "instanceOfTree":Lcom/sun/source/tree/InstanceOfTree;
    .end local v5    # "indexInSource":I
    :cond_8
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lannotator/find/InstanceOfCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    .line 82
    .restart local v0    # "b":Z
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "return parent: %b%n"

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
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
    invoke-virtual {p0, p1}, Lannotator/find/InstanceOfCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

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

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstanceOfCriterion: in method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/InstanceOfCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/InstanceOfCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
