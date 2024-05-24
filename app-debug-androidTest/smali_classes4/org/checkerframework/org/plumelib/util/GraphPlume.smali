.class public final Lorg/checkerframework/org/plumelib/util/GraphPlume;
.super Ljava/lang/Object;
.source "GraphPlume.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dominators(Ljava/util/Map;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 61
    .local p0, "predecessors":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<TT;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "dom":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<TT;>;>;"
    move-object v1, p0

    .line 66
    .local v1, "preds":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<TT;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "roots":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v4, "nonRoots":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 74
    .local v6, "node":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 76
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    .line 77
    .local v7, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    goto :goto_1

    .line 82
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v6    # "node":Ljava/lang/Object;, "TT;"
    :goto_1
    goto :goto_0

    .line 86
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 100
    const/4 v5, 0x1

    .line 101
    .local v5, "changed":Z
    :goto_2
    if-eqz v5, :cond_a

    .line 102
    const/4 v5, 0x0

    .line 103
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 104
    .local v7, "node":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 105
    .local v8, "newDoms":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 106
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 107
    .local v10, "pred":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 108
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 109
    .local v11, "domOfPred":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v8, :cond_2

    .line 111
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v12

    goto :goto_5

    .line 113
    :cond_2
    invoke-interface {v8, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 115
    .end local v10    # "pred":Ljava/lang/Object;, "TT;"
    .end local v11    # "domOfPred":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_5
    goto :goto_4

    .line 107
    .restart local v10    # "pred":Ljava/lang/Object;, "TT;"
    :cond_3
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 116
    .end local v10    # "pred":Ljava/lang/Object;, "TT;"
    :cond_4
    if-eqz v8, :cond_7

    .line 118
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 120
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 121
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/4 v5, 0x1

    .line 124
    .end local v7    # "node":Ljava/lang/Object;, "TT;"
    .end local v8    # "newDoms":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_5
    goto :goto_3

    .line 119
    .restart local v7    # "node":Ljava/lang/Object;, "TT;"
    .restart local v8    # "newDoms":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_6
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 116
    :cond_7
    new-instance v6, Ljava/lang/AssertionError;

    const-string v9, "@AssumeAssertion(nullness): the loop was entered at least once because this is a non-root, which has at least one predecessor"

    invoke-direct {v6, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 105
    :cond_8
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 124
    .end local v7    # "node":Ljava/lang/Object;, "TT;"
    .end local v8    # "newDoms":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_9
    goto :goto_2

    .line 127
    :cond_a
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 133
    .restart local v7    # "node":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 134
    .end local v7    # "node":Ljava/lang/Object;, "TT;"
    goto :goto_6

    .line 133
    .restart local v7    # "node":Ljava/lang/Object;, "TT;"
    :cond_b
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 136
    .end local v7    # "node":Ljava/lang/Object;, "TT;"
    :cond_c
    return-object v0

    .line 86
    .end local v5    # "changed":Z
    :cond_d
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method public static print(Ljava/util/Map;Ljava/io/PrintStream;I)V
    .locals 7
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/io/PrintStream;",
            "I)V"
        }
    .end annotation

    .line 148
    .local p0, "graph":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<TT;>;>;"
    const-string v0, ""

    .line 149
    .local v0, "indentString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "node":Ljava/lang/Object;, "TT;"
    const-string v3, "%s%s%n"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 154
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 155
    .local v4, "child":Ljava/lang/Object;, "TT;"
    const-string v5, "  %s%s%n"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 156
    .end local v4    # "child":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 157
    .end local v2    # "node":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_1

    .line 158
    :cond_2
    return-void
.end method
