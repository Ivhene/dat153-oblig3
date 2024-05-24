.class public Lorg/checkerframework/framework/flow/CFStore;
.super Lorg/checkerframework/framework/flow/CFAbstractStore;
.source "CFStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractStore<",
        "Lorg/checkerframework/framework/flow/CFValue;",
        "Lorg/checkerframework/framework/flow/CFStore;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/framework/flow/CFAbstractStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "*>;",
            "Lorg/checkerframework/framework/flow/CFAbstractStore<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;*>;"
    .local p2, "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V
    .locals 0
    .param p2, "sequentialSemantics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "*>;Z)V"
        }
    .end annotation

    .line 7
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;*>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    .line 8
    return-void
.end method
