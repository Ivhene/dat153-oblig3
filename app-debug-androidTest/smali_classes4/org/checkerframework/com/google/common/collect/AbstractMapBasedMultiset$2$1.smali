.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;
.super Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2;->next()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2;

.field final synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2;

    .line 127
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 135
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Count;

    .line 136
    .local v0, "count":Lorg/checkerframework/com/google/common/collect/Count;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Count;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->access$100(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Count;

    .line 138
    .local v1, "frequency":Lorg/checkerframework/com/google/common/collect/Count;
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Count;->get()I

    move-result v2

    return v2

    .line 142
    .end local v1    # "frequency":Lorg/checkerframework/com/google/common/collect/Count;
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Count;->get()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
