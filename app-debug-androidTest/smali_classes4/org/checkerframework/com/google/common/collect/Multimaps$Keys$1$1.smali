.class Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;
.super Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1;->transform(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1;

.field final synthetic val$backingEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1;

    .line 1691
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;->this$1:Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1699
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1694
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method