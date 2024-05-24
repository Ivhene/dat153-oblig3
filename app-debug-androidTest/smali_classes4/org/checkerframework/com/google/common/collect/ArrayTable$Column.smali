.class Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;
.super Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final columnIndex:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V
    .locals 1
    .param p2, "columnIndex"    # I

    .line 592
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    .line 593
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->access$300(Lorg/checkerframework/com/google/common/collect/ArrayTable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/ArrayTable$1;)V

    .line 594
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;->columnIndex:I

    .line 595
    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .line 599
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    const-string v0, "Row"

    return-object v0
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 604
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 609
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-virtual {v0, p1, v1, p2}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
