.class Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;
.super Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;
    .param p2, "size"    # I

    .line 229
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 229
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method protected get(I)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
