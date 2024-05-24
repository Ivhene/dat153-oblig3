.class public Lorg/checkerframework/dataflow/analysis/RegularTransferResult;
.super Lorg/checkerframework/dataflow/analysis/TransferResult;
.source "RegularTransferResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TA;>;S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;>",
        "Lorg/checkerframework/dataflow/analysis/TransferResult<",
        "TA;TS;>;"
    }
.end annotation


# instance fields
.field protected final store:Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final storeChanged:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "resultStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "TS;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "resultStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p3, "exceptionalStores":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeMirror;TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Ljava/util/Map;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Ljava/util/Map;Z)V
    .locals 0
    .param p4, "storeChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "TS;>;Z)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "resultStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p3, "exceptionalStores":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeMirror;TS;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Ljava/util/Map;)V

    .line 77
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;->store:Lorg/checkerframework/dataflow/analysis/Store;

    .line 78
    iput-boolean p4, p0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;->storeChanged:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Z)V
    .locals 1
    .param p3, "storeChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;Z)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "resultStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Ljava/util/Map;Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public containsTwoStores()Z
    .locals 1

    .line 101
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getElseStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;->store:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-interface {v0}, Lorg/checkerframework/dataflow/analysis/Store;->copy()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0
.end method

.method public getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;->store:Lorg/checkerframework/dataflow/analysis/Store;

    return-object v0
.end method

.method public getThenStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;->store:Lorg/checkerframework/dataflow/analysis/Store;

    return-object v0
.end method

.method public storeChanged()Z
    .locals 1

    .line 117
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;->storeChanged:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/RegularTransferResult;, "Lorg/checkerframework/dataflow/analysis/RegularTransferResult<TA;TS;>;"
    new-instance v0, Ljava/util/StringJoiner;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .local v0, "result":Ljava/util/StringJoiner;
    const-string v1, "RegularTransferResult("

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  resultValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;->resultValue:Lorg/checkerframework/dataflow/analysis/AbstractValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  store = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;->store:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 110
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 111
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
