.class Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;
.super Lorg/checkerframework/com/google/common/collect/ForwardingSet;
.source "MutableClassToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ForwardingSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Class<",
        "+TB;>;TB;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap;

    .line 96
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;, "Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;->this$0:Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method static synthetic lambda$spliterator$0(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x$0"    # Ljava/util/Map$Entry;

    .line 106
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap;->access$100(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 96
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;, "Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 96
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;, "Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;, "Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;->this$0:Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;, "Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2$1;

    .line 112
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2$1;-><init>(Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;Ljava/util/Iterator;)V

    .line 111
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;, "Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;"
    nop

    .line 106
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 122
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;, "Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;, "Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MutableClassToInstanceMap$2;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
