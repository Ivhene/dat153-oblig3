.class public Lorg/checkerframework/dataflow/analysis/TransferInput;
.super Ljava/lang/Object;
.source "TransferInput.java"


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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final analysis:Lorg/checkerframework/dataflow/analysis/Analysis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;*>;"
        }
    .end annotation
.end field

.field protected final elseStore:Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected node:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final store:Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected final thenStore:Lorg/checkerframework/dataflow/analysis/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 17
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .local p1, "from":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iget-object v0, p1, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 112
    iget-object v0, p1, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    .line 113
    iget-object v0, p1, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p1, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v0}, Lorg/checkerframework/dataflow/analysis/Store;->copy()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 117
    iget-object v0, p1, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-interface {v0}, Lorg/checkerframework/dataflow/analysis/Store;->copy()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 118
    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 120
    :cond_1
    invoke-interface {v0}, Lorg/checkerframework/dataflow/analysis/Store;->copy()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    .line 121
    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 123
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;*>;TS;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .local p3, "s":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 90
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    .line 91
    iput-object p3, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;*>;TS;TS;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .local p3, "s1":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .local p4, "s2":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 103
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    .line 104
    iput-object p3, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 105
    iput-object p4, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/TransferResult;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;*>;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .local p3, "to":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 68
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    .line 69
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;->containsTwoStores()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 71
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 72
    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    .line 75
    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    iput-object v1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    .line 77
    :goto_0
    return-void
.end method


# virtual methods
.method public containsTwoStores()Z
    .locals 1

    .line 189
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copy()Lorg/checkerframework/dataflow/analysis/TransferInput;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    new-instance v0, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-direct {v0, p0}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 221
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/TransferInput;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 223
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferInput;

    .line 224
    .local v0, "other":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 226
    :goto_0
    return v1

    .line 230
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 235
    .end local v0    # "other":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    :cond_2
    return v1
.end method

.method public getElseStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    if-eqz v0, :cond_0

    .line 172
    return-object v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 176
    :cond_1
    invoke-interface {v0}, Lorg/checkerframework/dataflow/analysis/Store;->copy()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 127
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v0, v1}, Lorg/checkerframework/dataflow/analysis/Store;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 149
    :cond_1
    return-object v0
.end method

.method public getThenStore()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    if-eqz v0, :cond_0

    .line 160
    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 162
    :cond_1
    return-object v0
.end method

.method public getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TA;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 240
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public leastUpperBound(Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferInput;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .local p1, "other":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/dataflow/analysis/Store;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    .line 206
    .local v0, "newThenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/checkerframework/dataflow/analysis/Store;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    .line 207
    .local v1, "newElseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    new-instance v2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v2

    .line 209
    .end local v0    # "newThenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .end local v1    # "newElseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    if-nez v1, :cond_1

    .line 212
    invoke-virtual {p1, p0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v0

    return-object v0

    .line 214
    :cond_1
    new-instance v1, Lorg/checkerframework/dataflow/analysis/TransferInput;

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    .line 215
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/checkerframework/dataflow/analysis/Store;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 214
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 245
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    const-string v1, "]"

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[then="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->thenStore:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", else="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->elseStore:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/TransferInput;->store:Lorg/checkerframework/dataflow/analysis/Store;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
