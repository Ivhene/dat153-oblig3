.class public abstract Lorg/checkerframework/checker/initialization/InitializationChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "InitializationChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method

.method public static getAllFields(Lcom/sun/source/tree/ClassTree;)Ljava/util/List;
    .locals 5
    .param p0, "clazz"    # Lcom/sun/source/tree/ClassTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ClassTree;",
            ")",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {p0}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 37
    .local v2, "t":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_0

    .line 38
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/VariableTree;

    .line 39
    .local v3, "vt":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v2    # "t":Lcom/sun/source/tree/Tree;
    .end local v3    # "vt":Lcom/sun/source/tree/VariableTree;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getSuppressWarningsKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "initialization"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v1, "fbc"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v0
.end method
