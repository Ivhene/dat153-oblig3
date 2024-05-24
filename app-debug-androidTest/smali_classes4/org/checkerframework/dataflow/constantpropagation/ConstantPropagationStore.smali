.class public Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
.super Ljava/lang/Object;
.source "ConstantPropagationStore.java"

# interfaces
.implements Lorg/checkerframework/dataflow/analysis/Store;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field contents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    .line 22
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p1, "contents":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public canAlias(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "b"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic copy()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->copy()Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    .locals 3

    .line 55
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 95
    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    if-nez v1, :cond_1

    .line 98
    return v0

    .line 100
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    .line 102
    .local v1, "other":Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    iget-object v2, v1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 103
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 104
    .local v4, "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    .line 105
    .local v5, "otherVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isBottom()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    iget-object v6, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 109
    iget-object v6, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 110
    return v0

    .line 115
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    .end local v4    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "otherVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    :cond_3
    goto :goto_0

    .line 113
    .restart local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    .restart local v4    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v5    # "otherVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    :cond_4
    return v0

    .line 117
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    .end local v4    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "otherVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 118
    .restart local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 119
    .restart local v4    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    .line 120
    .local v5, "thisVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isBottom()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 121
    goto :goto_1

    .line 123
    :cond_6
    iget-object v6, v1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 124
    goto :goto_1

    .line 126
    :cond_7
    return v0

    .line 129
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    .end local v4    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "thisVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public getInformation(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/constantpropagation/Constant;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 29
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    sget-object v1, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->TOP:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;-><init>(Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "s":I
    iget-object v1, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 136
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isBottom()Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 139
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    return v0
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 15
    check-cast p1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->leastUpperBound(Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;)Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    move-result-object p1

    return-object p1
.end method

.method public leastUpperBound(Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;)Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    .locals 6
    .param p1, "other"    # Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v0, "newContents":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    iget-object v1, p1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 65
    .local v3, "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    .line 66
    .local v4, "otherVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    iget-object v5, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    iget-object v5, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    invoke-virtual {v4, v5}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->leastUpperBound(Lorg/checkerframework/dataflow/constantpropagation/Constant;)Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    :cond_0
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    .end local v3    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "otherVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    :goto_1
    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 77
    .restart local v3    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    .line 78
    .local v4, "thisVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    iget-object v5, p1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 80
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    .end local v3    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "thisVal":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    :cond_2
    goto :goto_2

    .line 84
    :cond_3
    new-instance v1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public mergeInformation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "val"    # Lorg/checkerframework/dataflow/constantpropagation/Constant;

    .line 37
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    invoke-virtual {p2, v0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->leastUpperBound(Lorg/checkerframework/dataflow/constantpropagation/Constant;)Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object v0

    .local v0, "value":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    goto :goto_0

    .line 40
    .end local v0    # "value":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    :cond_0
    move-object v0, p2

    .line 43
    .restart local v0    # "value":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    :goto_0
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    if-nez v1, :cond_2

    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 44
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public setInformation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "val"    # Lorg/checkerframework/dataflow/constantpropagation/Constant;

    .line 49
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "smallerContents":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    iget-object v1, p0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->contents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-eqz v3, :cond_0

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/constantpropagation/Constant;>;"
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "*",
            "Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 168
    .local p1, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<*Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic widenedUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 15
    check-cast p1, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->widenedUpperBound(Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;)Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    move-result-object p1

    return-object p1
.end method

.method public widenedUpperBound(Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;)Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;
    .locals 1
    .param p1, "previous"    # Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    .line 89
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;->leastUpperBound(Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;)Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;

    move-result-object v0

    return-object v0
.end method
