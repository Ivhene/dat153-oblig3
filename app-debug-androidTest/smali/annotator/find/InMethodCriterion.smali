.class final Lannotator/find/InMethodCriterion;
.super Ljava/lang/Object;
.source "InMethodCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final name:Ljava/lang/String;

.field private final sigMethodCriterion:Lannotator/find/IsSigMethodCriterion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 14
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lannotator/find/InMethodCriterion;->name:Ljava/lang/String;

    .line 21
    new-instance v0, Lannotator/find/IsSigMethodCriterion;

    invoke-direct {v0, p1}, Lannotator/find/IsSigMethodCriterion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lannotator/find/InMethodCriterion;->sigMethodCriterion:Lannotator/find/IsSigMethodCriterion;

    .line 22
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 26
    sget-object v0, Lannotator/find/Criterion$Kind;->IN_METHOD:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 9
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 40
    sget-object v0, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 41
    invoke-static {p1}, Lannotator/Main;->leafString(Lcom/sun/source/util/TreePath;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lannotator/find/InMethodCriterion;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 40
    const-string v2, "InMethodCriterion.isSatisfiedBy(%s); this=%s%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, "inDecl":Z
    const/4 v1, 0x0

    .line 48
    .local v1, "staticDecl":Z
    const/4 v2, 0x0

    .line 50
    .local v2, "childPath":Lcom/sun/source/util/TreePath;
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 51
    .local v3, "leaf":Lcom/sun/source/tree/Tree;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    const-string v6, "InMethodCriterion.isSatisfiedBy => %s%n"

    if-ne v4, v5, :cond_1

    .line 52
    iget-object v4, p0, Lannotator/find/InMethodCriterion;->sigMethodCriterion:Lannotator/find/IsSigMethodCriterion;

    invoke-virtual {v4, p1}, Lannotator/find/IsSigMethodCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v4

    .line 53
    .local v4, "b":Z
    sget-object v5, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return v4

    .line 56
    .end local v4    # "b":Z
    :cond_1
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_2

    .line 57
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 58
    .local v4, "varDecl":Lcom/sun/source/tree/VariableTree;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v5

    invoke-interface {v4}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    if-ne v5, v7, :cond_2

    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-interface {v4}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v5

    .line 61
    .local v5, "mods":Lcom/sun/source/tree/ModifiersTree;
    invoke-interface {v5}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 64
    .end local v4    # "varDecl":Lcom/sun/source/tree/VariableTree;
    .end local v5    # "mods":Lcom/sun/source/tree/ModifiersTree;
    :cond_2
    move-object v2, p1

    .line 65
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    .line 66
    .end local v3    # "leaf":Lcom/sun/source/tree/Tree;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    if-nez v3, :cond_0

    .line 70
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    const-string v3, "<clinit>()V"

    goto :goto_0

    :cond_4
    const-string v3, "<init>()V"

    :goto_0
    iget-object v4, p0, Lannotator/find/InMethodCriterion;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 71
    .local v3, "result":Z
    :goto_1
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return v3
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 35
    invoke-virtual {p0, p1}, Lannotator/find/InMethodCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in method \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/InMethodCriterion;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
