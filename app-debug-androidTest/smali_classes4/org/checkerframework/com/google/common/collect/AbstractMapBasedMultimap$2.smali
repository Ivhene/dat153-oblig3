.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$Itr;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.Itr<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 1240
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$Itr;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1240
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;->output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1243
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method