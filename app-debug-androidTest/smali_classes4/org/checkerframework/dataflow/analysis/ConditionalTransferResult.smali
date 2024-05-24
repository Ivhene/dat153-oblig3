.class public Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;
.super Lorg/checkerframework/dataflow/analysis/TransferResult;
.source "ConditionalTransferResult.java"


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
.field protected final elseStore:Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final storeChanged:Z

.field protected final thenStore:Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;TS;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "thenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p3, "elseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;TS;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "TS;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "thenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p3, "elseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p4, "exceptionalStores":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeMirror;TS;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Ljava/util/Map;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Ljava/util/Map;Z)V
    .locals 0
    .param p5, "storeChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;TS;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "TS;>;Z)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "thenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p3, "elseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p4, "exceptionalStores":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeMirror;TS;>;"
    invoke-direct {p0, p1, p4}, Lorg/checkerframework/dataflow/analysis/TransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Ljava/util/Map;)V

    .line 81
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 82
    iput-object p3, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 83
    iput-boolean p5, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->storeChanged:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)V
    .locals 6
    .param p4, "storeChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;TS;Z)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    .local p2, "thenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p3, "elseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Ljava/util/Map;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public containsTwoStores()Z
    .locals 1

    .line 104
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getElseStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    return-object v0
.end method

.method public getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-interface {v0, v1}, Lorg/checkerframework/dataflow/analysis/Store;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0
.end method

.method public getThenStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    return-object v0
.end method

.method public storeChanged()Z
    .locals 1

    .line 121
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->storeChanged:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<TA;TS;>;"
    new-instance v0, Ljava/util/StringJoiner;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    .local v0, "result":Ljava/util/StringJoiner;
    const-string v1, "RegularTransferResult("

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  resultValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->resultValue:Lorg/checkerframework/dataflow/analysis/AbstractValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  thenStore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  elseStore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 114
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 115
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
