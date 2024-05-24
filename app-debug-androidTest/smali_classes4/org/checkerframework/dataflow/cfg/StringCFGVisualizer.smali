.class public Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;
.super Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;
.source "StringCFGVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TA;>;S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;T::",
        "Lorg/checkerframework/dataflow/analysis/TransferFunction<",
        "TA;TS;>;>",
        "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<",
        "TA;TS;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;-><init>()V

    return-void
.end method


# virtual methods
.method protected addEdge(JJLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sId"    # J
    .param p3, "eId"    # J
    .param p5, "flowRule"    # Ljava/lang/String;

    .line 60
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->verbose:Z

    const-string v1, " -> "

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 0

    .line 145
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    return-void
.end method

.method public visualize(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/util/Map;
    .locals 3
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .param p2, "entry"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p3, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->visualizeGraph(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "stringGraph":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v1, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "stringGraph"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-object v1
.end method

.method public visualizeBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 1
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-super {p0, p1, p2, v0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeBlockHelper(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeBlockNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "sbBlockNode":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->getNodeSimpleName(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    .line 87
    .local v1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    if-eqz v1, :cond_0

    .line 88
    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .end local v1    # "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visualizeBlockTransferInput(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 1
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-super {p0, p1, p2, v0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeBlockTransferInputHelper(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected visualizeGraphFooter()Ljava/lang/String;
    .locals 1

    .line 164
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    const-string v0, ""

    return-object v0
.end method

.method protected visualizeGraphHeader()Ljava/lang/String;
    .locals 1

    .line 154
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    const-string v0, ""

    return-object v0
.end method

.method public visualizeNodes(Ljava/util/Set;Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 7
    .param p2, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p1, "blocks":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    .local p3, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v0, "sbStringNodes":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0, p2}, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->getProcessOrder(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)Ljava/util/IdentityHashMap;

    move-result-object v1

    .line 41
    .local v1, "processOrder":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 42
    .local v3, "v":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface {v3}, Lorg/checkerframework/dataflow/cfg/block/Block;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-boolean v4, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->verbose:Z

    if-eqz v4, :cond_0

    .line 44
    nop

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->getProcessOrderSimpleString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    invoke-virtual {p0, v3, p3}, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->visualizeBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "strBlock":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 50
    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .end local v3    # "v":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v4    # "strBlock":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public visualizeSpecialBlock(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;)Ljava/lang/String;
    .locals 1
    .param p1, "sbb"    # Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    .line 73
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeSpecialBlockHelper(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreArrayVal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "arrayValue"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreClassVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreFieldVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldAccess"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreFooter()Ljava/lang/String;
    .locals 1

    .line 136
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    const-string v0, ")"

    return-object v0
.end method

.method public visualizeStoreHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "classCanonicalName"    # Ljava/lang/String;

    .line 131
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreKeyVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 126
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreLocalVar(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "localVar"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreMethodVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "methodCall"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreThisVal(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer<TA;TS;TT;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  this > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
