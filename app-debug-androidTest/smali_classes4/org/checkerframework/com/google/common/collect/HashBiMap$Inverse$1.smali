.class Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;
.super Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/HashBiMap<",
        "TK;TV;>.Itr<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;)V
    .locals 1
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;

    .line 668
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;->this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;

    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic output(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 0

    .line 668
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;->output(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method output(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 671
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    return-object v0
.end method
