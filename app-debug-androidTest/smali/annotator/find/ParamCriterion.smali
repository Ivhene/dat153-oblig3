.class public Lannotator/find/ParamCriterion;
.super Ljava/lang/Object;
.source "ParamCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final methodName:Ljava/lang/String;

.field private final paramPos:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/lang/Integer;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/ParamCriterion;->methodName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lannotator/find/ParamCriterion;->paramPos:Ljava/lang/Integer;

    .line 19
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 64
    sget-object v0, Lannotator/find/Criterion$Kind;->PARAM:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 6
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 33
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 34
    return v0

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 41
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    instance-of v2, v1, Lcom/sun/source/tree/VariableTree;

    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 44
    .local v2, "parent":Lcom/sun/source/tree/Tree;
    sget-object v3, Lannotator/find/ParamCriterion$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 52
    const/4 v3, 0x0

    .local v3, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    goto :goto_0

    .line 49
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-interface {v3}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v3

    .line 50
    .restart local v3    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    goto :goto_0

    .line 46
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    :pswitch_1
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v3}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v3

    .line 47
    .restart local v3    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    nop

    .line 55
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lannotator/find/ParamCriterion;->paramPos:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lannotator/find/ParamCriterion;->paramPos:Ljava/lang/Integer;

    .line 56
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 55
    :goto_1
    return v0

    .line 59
    .end local v2    # "parent":Lcom/sun/source/tree/Tree;
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lannotator/find/ParamCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 27
    invoke-virtual {p0, p1}, Lannotator/find/ParamCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 26
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

    const-string v1, "ParamCriterion for method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/ParamCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/ParamCriterion;->paramPos:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
