.class final Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;
.super Lorg/checkerframework/com/google/common/collect/Maps$KeySet;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V
    .locals 0

    .line 460
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    .line 461
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 462
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 466
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.KeySet;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet$1;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 476
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$300(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 477
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    return v1

    .line 480
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$200(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 481
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 482
    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 483
    const/4 v1, 0x1

    return v1
.end method