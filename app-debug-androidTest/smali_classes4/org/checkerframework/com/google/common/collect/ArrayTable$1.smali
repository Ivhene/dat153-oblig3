.class Lorg/checkerframework/com/google/common/collect/ArrayTable$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ArrayTable;->cellIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator<",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;
    .param p2, "size"    # I

    .line 529
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$1;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$1;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 529
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$1;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$1;->get(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method protected get(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 532
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$1;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$1;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->access$000(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
