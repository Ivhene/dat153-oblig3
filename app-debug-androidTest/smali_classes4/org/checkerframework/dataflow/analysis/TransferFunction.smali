.class public interface abstract Lorg/checkerframework/dataflow/analysis/TransferFunction;
.super Ljava/lang/Object;
.source "TransferFunction.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TA;>;S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<",
        "Lorg/checkerframework/dataflow/analysis/TransferResult<",
        "TA;TS;>;",
        "Lorg/checkerframework/dataflow/analysis/TransferInput<",
        "TA;TS;>;>;"
    }
.end annotation


# virtual methods
.method public abstract initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/UnderlyingAST;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            ">;)TS;"
        }
    .end annotation
.end method
