.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;
.super Lorg/checkerframework/com/google/common/collect/ForwardingMapEntry;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ForwardingMapEntry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;

    .line 942
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->this$1:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 942
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 945
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 942
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->getValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 950
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;->this$1:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->this$0:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
