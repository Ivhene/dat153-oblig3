.class public abstract Lorg/checkerframework/dataflow/analysis/TransferResult;
.super Ljava/lang/Object;
.source "TransferResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TA;>;S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final exceptionalStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "TS;>;"
        }
    .end annotation
.end field

.field protected resultValue:Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "TS;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .local p1, "resultValue":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "exceptionalStores":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeMirror;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/TransferResult;->resultValue:Lorg/checkerframework/dataflow/analysis/AbstractValue;

    .line 35
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/TransferResult;->exceptionalStores:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract containsTwoStores()Z
.end method

.method public abstract getElseStore()Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public getExceptionalStore(Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .param p1, "exception"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")TS;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferResult;->exceptionalStores:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/Store;

    return-object v0
.end method

.method public getExceptionalStores()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "TS;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferResult;->exceptionalStores:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferResult;->resultValue:Lorg/checkerframework/dataflow/analysis/AbstractValue;

    return-object v0
.end method

.method public abstract getThenStore()Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public setResultValue(Lorg/checkerframework/dataflow/analysis/AbstractValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .local p1, "resultValue":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/TransferResult;->resultValue:Lorg/checkerframework/dataflow/analysis/AbstractValue;

    .line 45
    return-void
.end method

.method public abstract storeChanged()Z
.end method
