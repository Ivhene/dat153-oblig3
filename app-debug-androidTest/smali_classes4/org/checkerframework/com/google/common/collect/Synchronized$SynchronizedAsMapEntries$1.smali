.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;
.super Lorg/checkerframework/com/google/common/collect/TransformedIterator;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/TransformedIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    .line 939
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;"
    .local p2, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->this$0:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 939
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 942
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;-><init>(Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method
