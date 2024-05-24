.class final Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;
.super Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RowMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ImmutableArrayMap<",
        "TR;",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)V
    .locals 0

    .line 190
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.RowMap;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;->this$0:Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    .line 191
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->access$200(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$1;

    .line 189
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.RowMap;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;-><init>(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0

    .line 188
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.RowMap;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;->getValue(I)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method getValue(I)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 2
    .param p1, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.RowMap;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;->this$0:Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;-><init>(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;I)V

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 206
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.RowMap;"
    const/4 v0, 0x0

    return v0
.end method

.method keyToIndex()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.RowMap;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;->this$0:Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->access$600(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
