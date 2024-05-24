.class final Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;
.super Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ImmutableArrayMap<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field private final rowIndex:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;I)V
    .locals 0
    .param p2, "rowIndex"    # I

    .line 143
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Row;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;->this$0:Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    .line 144
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->access$200(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 145
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;->rowIndex:I

    .line 146
    return-void
.end method


# virtual methods
.method getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;->this$0:Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->access$400(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;->rowIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 160
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Row;"
    const/4 v0, 0x1

    return v0
.end method

.method keyToIndex()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;->this$0:Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->access$300(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
