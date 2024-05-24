.class Lorg/checkerframework/com/google/common/collect/ArrayTable$3;
.super Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ArrayTable;->valuesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;
    .param p2, "size"    # I

    .line 763
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$3;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$3;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$3;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 766
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$3;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$3;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$3;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->access$800(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
