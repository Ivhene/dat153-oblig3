.class public Lorg/checkerframework/checker/nullness/KeyForStore;
.super Lorg/checkerframework/framework/flow/CFAbstractStore;
.source "KeyForStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractStore<",
        "Lorg/checkerframework/checker/nullness/KeyForValue;",
        "Lorg/checkerframework/checker/nullness/KeyForStore;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V
    .locals 0
    .param p2, "sequentialSemantics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/checker/nullness/KeyForValue;",
            "Lorg/checkerframework/checker/nullness/KeyForStore;",
            "*>;Z)V"
        }
    .end annotation

    .line 9
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/checker/nullness/KeyForValue;Lorg/checkerframework/checker/nullness/KeyForStore;*>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    .line 10
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractStore<",
            "Lorg/checkerframework/checker/nullness/KeyForValue;",
            "Lorg/checkerframework/checker/nullness/KeyForStore;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<Lorg/checkerframework/checker/nullness/KeyForValue;Lorg/checkerframework/checker/nullness/KeyForStore;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 14
    return-void
.end method
