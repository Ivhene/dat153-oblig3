.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;
.super Ljava/lang/Object;
.source "NodeWithVariables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static calculateMaximumCommonType(Ljava/util/List;)Ljava/util/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;)",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    .line 151
    .local p0, "types":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;-><init>()V

    .line 152
    .local v0, "helper":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;
    const/4 v1, 0x0

    .line 153
    .local v1, "level":I
    const/4 v2, 0x1

    .line 156
    .local v2, "keepGoing":Z
    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 157
    move v4, v1

    .line 161
    .local v4, "currentLevel":I
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v4}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 164
    invoke-interface {v5}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 165
    .local v5, "values":[Ljava/lang/Object;
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v3, v5, v3

    if-eqz v3, :cond_0

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 170
    .end local v4    # "currentLevel":I
    .end local v5    # "values":[Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;->access$000(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;Lorg/checkerframework/com/github/javaparser/ast/type/Type;I)Ljava/util/Optional;

    move-result-object v3

    return-object v3
.end method

.method public static synthetic lambda$calculateMaximumCommonType$1(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;ILorg/checkerframework/com/github/javaparser/ast/type/Type;)Ljava/lang/String;
    .locals 3
    .param p0, "helper"    # Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;
    .param p1, "currentLevel"    # I
    .param p2, "v"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "helper",
            "currentLevel",
            "v"
        }
    .end annotation

    .line 162
    invoke-static {p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;->access$000(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;Lorg/checkerframework/com/github/javaparser/ast/type/Type;I)Ljava/util/Optional;

    move-result-object v0

    .line 163
    .local v0, "t":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static synthetic lambda$getMaximumCommonType$0(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1
    .param p0, "v"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addVariable(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "variableDeclarator"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variableDeclarator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ")TN;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 56
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public getCommonType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 5

    .line 69
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 70
    .local v0, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    .line 74
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 75
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "The variables do not have a common type."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 79
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 71
    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "There is no common type since there are no variables."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 5

    .line 90
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 91
    .local v0, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    .line 95
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 96
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "The variables do not have a common type."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 100
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 92
    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "There is no element type since there are no variables."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getMaximumCommonType()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 127
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->calculateMaximumCommonType(Ljava/util/List;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(I)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    return-object v0
.end method

.method public abstract getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation
.end method

.method public setAllTypes(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "newType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ")TN;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 111
    .local v1, "variable":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 112
    .end local v1    # "variable":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    goto :goto_0

    .line 113
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public setVariable(ILorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "i"    # I
    .param p2, "variableDeclarator"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "variableDeclarator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ")TN;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 50
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public abstract setVariables(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ">;)TN;"
        }
    .end annotation
.end method
