.class Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;
.super Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->createKeySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1KeySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    .line 697
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 710
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 705
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 715
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 700
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$600(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method