.class Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractTable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractTable;

    .line 199
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 217
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->clear()V

    .line 218
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 212
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$Values;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->valuesSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
