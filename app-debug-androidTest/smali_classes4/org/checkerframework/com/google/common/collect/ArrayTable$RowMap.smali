.class Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;
.super Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;)V
    .locals 1

    .line 722
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    .line 723
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->access$300(Lorg/checkerframework/com/google/common/collect/ArrayTable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/ArrayTable$1;)V

    .line 724
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;Lorg/checkerframework/com/google/common/collect/ArrayTable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/ArrayTable$1;

    .line 721
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .line 728
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    const-string v0, "Row"

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0

    .line 720
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;->getValue(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method getValue(I)Ljava/util/Map;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 733
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable$Row;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$Row;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 720
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;->put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 743
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    .local p1, "key":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method bridge synthetic setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 720
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;->setValue(ILjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method setValue(ILjava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 738
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    .local p2, "newValue":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method