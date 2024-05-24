.class public interface abstract Lorg/checkerframework/dataflow/analysis/Store;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/analysis/Store$FlowRule;,
        Lorg/checkerframework/dataflow/analysis/Store$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canAlias(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
.end method

.method public abstract copy()Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation
.end method

.method public abstract visualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "*TS;*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract widenedUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation
.end method
