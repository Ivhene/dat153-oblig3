.class public Lorg/checkerframework/framework/flow/CFTransfer;
.super Lorg/checkerframework/framework/flow/CFAbstractTransfer;
.source "CFTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractTransfer<",
        "Lorg/checkerframework/framework/flow/CFValue;",
        "Lorg/checkerframework/framework/flow/CFStore;",
        "Lorg/checkerframework/framework/flow/CFTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFTransfer;",
            ">;)V"
        }
    .end annotation

    .line 7
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFTransfer;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 8
    return-void
.end method
