.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;

    .line 920
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 925
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 930
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    .line 931
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 936
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 937
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 938
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 939
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->access$200(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->access$202(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 940
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 941
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    .line 942
    return-void
.end method
