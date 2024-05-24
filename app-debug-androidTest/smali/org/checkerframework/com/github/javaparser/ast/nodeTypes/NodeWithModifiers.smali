.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;
.super Ljava/lang/Object;
.source "NodeWithModifiers.java"


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
.method public static synthetic lambda$addModifier$0(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Lorg/checkerframework/com/github/javaparser/ast/Modifier;)Z
    .locals 1
    .param p0, "newModifier"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newModifier",
            "m"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$removeModifier$1(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/Modifier;)Z
    .locals 1
    .param p0, "modifiersToRemoveAsList"    # Ljava/util/List;
    .param p1, "existingModifier"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "modifiersToRemoveAsList",
            "existingModifier"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public varargs addModifier([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 6
    .param p1, "newModifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newModifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            ")TN;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>(Ljava/util/Collection;)V

    .line 57
    .local v0, "existingModifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 58
    .local v3, "newModifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    .line 59
    .local v4, "alreadyPresent":Z
    if-nez v4, :cond_0

    .line 60
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    invoke-direct {v5, v3}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    invoke-virtual {v0, v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 57
    .end local v3    # "newModifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .end local v4    # "alreadyPresent":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 64
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v1
.end method

.method public getAccessSpecifier()Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;
    .locals 4

    .line 106
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    .line 107
    .local v1, "modifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$1;->$SwitchMap$com$github$javaparser$ast$Modifier$Keyword:[I

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 115
    .end local v1    # "modifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    goto :goto_0

    .line 113
    .restart local v1    # "modifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    :pswitch_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    return-object v0

    .line 111
    :pswitch_1
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    return-object v0

    .line 109
    :pswitch_2
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    return-object v0

    .line 116
    .end local v1    # "modifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PACKAGE_PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end method

.method public hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z
    .locals 3
    .param p1, "modifier"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    .line 87
    .local v1, "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    .end local v1    # "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public varargs removeModifier([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3
    .param p1, "modifiersToRemove"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiersToRemove"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            ")TN;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<TN;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "modifiersToRemoveAsList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 72
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->toNodeList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 73
    .local v1, "remaining":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-interface {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 74
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v2
.end method

.method public setModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Z)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            "Z)TN;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<TN;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 79
    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object p1, v1, v0

    invoke-interface {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->addModifier([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object p1, v1, v0

    invoke-interface {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->removeModifier([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public abstract setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;)TN;"
        }
    .end annotation
.end method

.method public varargs setModifiers([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            ")TN;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<TN;>;"
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->toNodeList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method
