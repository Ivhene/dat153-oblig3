.class public interface abstract Lorg/checkerframework/dataflow/cfg/CFGVisualizer;
.super Ljava/lang/Object;
.source "CFGVisualizer.java"


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
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract init(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract visualize(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/util/Map;
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
.end method

.method public abstract visualizeBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeBlockNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeBlockTransferInput(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeSpecialBlock(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;)Ljava/lang/String;
.end method

.method public abstract visualizeStore(Lorg/checkerframework/dataflow/analysis/Store;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeStoreArrayVal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeStoreClassVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeStoreFieldVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeStoreFooter()Ljava/lang/String;
.end method

.method public abstract visualizeStoreHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract visualizeStoreKeyVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract visualizeStoreLocalVar(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeStoreMethodVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract visualizeStoreThisVal(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
