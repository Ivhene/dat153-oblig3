.class final Lcom/google/common/collect/Iterators$4;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$pad:Z

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/google/common/collect/Iterators$4;->val$iterator:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/Iterators$4;->val$size:I

    iput-boolean p3, p0, Lcom/google/common/collect/Iterators$4;->val$pad:Z

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$4;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$4;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    iget v0, p0, Lcom/google/common/collect/Iterators$4;->val$size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 609
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 610
    .local v1, "count":I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/Iterators$4;->val$size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Iterators$4;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/google/common/collect/Iterators$4;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    :cond_0
    move v2, v1

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/google/common/collect/Iterators$4;->val$size:I

    if-ge v2, v3, :cond_1

    .line 614
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    .end local v2    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 619
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-boolean v3, p0, Lcom/google/common/collect/Iterators$4;->val$pad:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/collect/Iterators$4;->val$size:I

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v3, v2

    :goto_3
    return-object v3

    .line 606
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "count":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method