.class final Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;
.super Ljava/lang/Object;
.source "ImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollectorState"
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final insertionOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field final table:Lorg/checkerframework/com/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "TR;TC;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 118
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState<TR;TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->insertionOrder:Ljava/util/List;

    .line 120
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/HashBasedTable;->create()Lorg/checkerframework/com/google/common/collect/HashBasedTable;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->table:Lorg/checkerframework/com/google/common/collect/Table;

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableTable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/ImmutableTable$1;

    .line 118
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState<TR;TC;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;-><init>()V

    return-void
.end method


# virtual methods
.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;Ljava/util/function/BinaryOperator;)Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState<",
            "TR;TC;TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState<TR;TC;TV;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState<TR;TC;TV;>;"
    .local p2, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->insertionOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;

    .line 135
    .local v1, "cell":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    .line 136
    .end local v1    # "cell":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    goto :goto_0

    .line 137
    :cond_0
    return-object p0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState<TR;TC;TV;>;"
    .local p1, "row":Ljava/lang/Object;, "TR;"
    .local p2, "column":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->table:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;

    .line 124
    .local v0, "oldCell":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    if-nez v0, :cond_0

    .line 125
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;

    invoke-direct {v1, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .local v1, "cell":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->insertionOrder:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->table:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v2, p1, p2, v1}, Lorg/checkerframework/com/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v1    # "cell":Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell<TR;TC;TV;>;"
    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0, p3, p4}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$MutableCell;->merge(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    .line 131
    :goto_0
    return-void
.end method

.method toTable()Lorg/checkerframework/com/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;, "Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;->insertionOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->access$000(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method
