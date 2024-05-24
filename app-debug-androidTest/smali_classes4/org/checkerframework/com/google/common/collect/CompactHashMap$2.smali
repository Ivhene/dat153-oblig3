.class Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;
.super Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/CompactHashMap<",
        "TK;TV;>.Itr<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 664
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;-><init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getOutput(I)Ljava/lang/Object;
    .locals 0

    .line 664
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;->getOutput(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method getOutput(I)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "entry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 667
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$2;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;-><init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;I)V

    return-object v0
.end method
