.class Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/StandardTable$Row;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/StandardTable$Row;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/StandardTable$Row;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/StandardTable$Row;

    .line 367
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;, "Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;->this$1:Lorg/checkerframework/com/google/common/collect/StandardTable$Row;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 370
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;, "Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 367
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;, "Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;, "Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;->this$1:Lorg/checkerframework/com/google/common/collect/StandardTable$Row;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/StandardTable$Row;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 380
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;, "Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 381
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/StandardTable$Row$1;->this$1:Lorg/checkerframework/com/google/common/collect/StandardTable$Row;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/StandardTable$Row;->maintainEmptyInvariant()V

    .line 382
    return-void
.end method