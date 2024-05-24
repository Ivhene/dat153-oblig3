.class public abstract Lorg/checkerframework/com/google/common/collect/ImmutableTable;
.super Lorg/checkerframework/com/google/common/collect/AbstractTable;
.source "ImmutableTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableTable$SerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;,
        Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;,
        Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractTable<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 357
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Iterable;

    .line 49
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;-><init>()V

    return-object v0
.end method

.method static cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 234
    .local p0, "rowKey":Ljava/lang/Object;, "TR;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    nop

    .line 235
    const-string v0, "rowKey"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    const-string v1, "columnKey"

    invoke-static {p1, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 237
    const-string v2, "value"

    invoke-static {p2, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 234
    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method private static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "+TR;+TC;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 214
    .local p0, "cells":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/collect/Table$Cell<+TR;+TC;+TV;>;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;

    move-result-object v0

    .line 215
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    .line 216
    .local v2, "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;->put(Lorg/checkerframework/com/google/common/collect/Table$Cell;)Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;

    .line 217
    .end local v2    # "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/collect/Table;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 203
    .local p0, "table":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<+TR;+TC;+TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    if-eqz v0, :cond_0

    .line 205
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    .line 206
    .local v0, "parameterizedTable":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    return-object v0

    .line 208
    .end local v0    # "parameterizedTable":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$0()Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;
    .locals 1

    .line 70
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$1(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;Ljava/lang/Object;)V
    .locals 3
    .param p0, "rowFunction"    # Ljava/util/function/Function;
    .param p1, "columnFunction"    # Ljava/util/function/Function;
    .param p2, "valueFunction"    # Ljava/util/function/Function;
    .param p3, "builder"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;
    .param p4, "t"    # Ljava/lang/Object;

    .line 72
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableTable$2(Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;
    .locals 1
    .param p0, "b1"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;
    .param p1, "b2"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;

    .line 73
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$3(Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;
    .locals 1
    .param p0, "b"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;

    .line 74
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$4()Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;
    .locals 2

    .line 106
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableTable$1;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$5(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;Ljava/lang/Object;)V
    .locals 3
    .param p0, "rowFunction"    # Ljava/util/function/Function;
    .param p1, "columnFunction"    # Ljava/util/function/Function;
    .param p2, "valueFunction"    # Ljava/util/function/Function;
    .param p3, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p4, "state"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;
    .param p5, "input"    # Ljava/lang/Object;

    .line 109
    nop

    .line 110
    invoke-interface {p0, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    invoke-interface {p1, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    invoke-virtual {p4, v0, v1, v2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method static synthetic lambda$toImmutableTable$6(Ljava/util/function/BinaryOperator;Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;)Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;
    .locals 1
    .param p0, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p1, "s1"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;
    .param p2, "s2"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;

    .line 114
    invoke-virtual {p1, p2, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;Ljava/util/function/BinaryOperator;)Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$7(Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;
    .locals 1
    .param p0, "state"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;

    .line 115
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->toTable()Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 180
    sget-object v0, Lorg/checkerframework/com/google/common/collect/SparseImmutableTable;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 185
    .local p0, "rowKey":Ljava/lang/Object;, "TR;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/SingletonImmutableTable;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/SingletonImmutableTable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toImmutableTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 66
    .local p0, "rowFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TR;>;"
    .local p1, "columnFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TC;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const-string v0, "rowFunction"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "columnFunction"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "valueFunction"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 94
    .local p0, "rowFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TR;>;"
    .local p1, "columnFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TC;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p3, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    const-string v0, "rowFunction"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "columnFunction"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "valueFunction"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "mergeFunction"

    invoke-static {p3, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda6;

    invoke-direct {v2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda7;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bridge synthetic cellIterator()Ljava/util/Iterator;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->cellIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method final cellIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->cellSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public cellSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method final cellSpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->column(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public column(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    .line 397
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    const-string v0, "columnKey"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    nop

    .line 399
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->columnMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 398
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->columnKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TC;>;"
        }
    .end annotation

    .line 404
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->columnMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->columnMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract columnMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;

    .line 444
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic containsColumn(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsRow(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->containsRow(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 449
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic createCellSet()Ljava/util/Set;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->createCellSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract createCellSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end method

.method abstract createSerializedForm()Lorg/checkerframework/com/google/common/collect/ImmutableTable$SerializedForm;
.end method

.method bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->createValues()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method abstract createValues()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Lorg/checkerframework/com/google/common/collect/Table;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "table":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<+TR;+TC;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->row(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public row(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 423
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    const-string v0, "rowKey"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    nop

    .line 425
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->rowMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 424
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->rowKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TR;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->rowMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->rowMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract rowMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method final valuesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 561
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->createSerializedForm()Lorg/checkerframework/com/google/common/collect/ImmutableTable$SerializedForm;

    move-result-object v0

    return-object v0
.end method
