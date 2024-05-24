.class public Lcom/android/dx/util/ListIntSet;
.super Ljava/lang/Object;
.source "ListIntSet.java"

# interfaces
.implements Lcom/android/dx/util/IntSet;


# instance fields
.field final ints:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/dx/util/IntList;

    invoke-direct {v0}, Lcom/android/dx/util/IntList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    .line 34
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->sort()V

    .line 35
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "value"    # I

    .line 40
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->binarysearch(I)I

    move-result v0

    .line 42
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2, p1}, Lcom/android/dx/util/IntList;->insert(II)V

    .line 45
    :cond_0
    return-void
.end method

.method public elements()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public has(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 60
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/android/dx/util/IntIterator;
    .locals 1

    .line 115
    new-instance v0, Lcom/android/dx/util/ListIntSet$1;

    invoke-direct {v0, p0}, Lcom/android/dx/util/ListIntSet$1;-><init>(Lcom/android/dx/util/ListIntSet;)V

    return-object v0
.end method

.method public merge(Lcom/android/dx/util/IntSet;)V
    .locals 7
    .param p1, "other"    # Lcom/android/dx/util/IntSet;

    .line 66
    instance-of v0, p1, Lcom/android/dx/util/ListIntSet;

    if-eqz v0, :cond_5

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/android/dx/util/ListIntSet;

    .line 68
    .local v0, "o":Lcom/android/dx/util/ListIntSet;
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    .line 69
    .local v1, "szThis":I
    iget-object v2, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .line 71
    .local v2, "szOther":I
    const/4 v3, 0x0

    .line 72
    .local v3, "i":I
    const/4 v4, 0x0

    .line 74
    .local v4, "j":I
    :cond_0
    if-ge v4, v2, :cond_3

    if-ge v3, v1, :cond_3

    .line 75
    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v5, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v6, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 76
    iget-object v5, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    invoke-virtual {v5, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/dx/util/ListIntSet;->add(I)V

    move v4, v6

    goto :goto_0

    .line 78
    .end local v6    # "j":I
    .restart local v4    # "j":I
    :cond_1
    if-ne v4, v2, :cond_2

    .line 79
    goto :goto_2

    .line 81
    :cond_2
    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v5, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v5, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v6, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :cond_3
    :goto_2
    if-ge v4, v2, :cond_4

    .line 87
    iget-object v5, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .restart local v6    # "j":I
    invoke-virtual {v5, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/dx/util/ListIntSet;->add(I)V

    move v4, v6

    goto :goto_2

    .line 90
    .end local v6    # "j":I
    .restart local v4    # "j":I
    :cond_4
    iget-object v5, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->sort()V

    .line 91
    .end local v0    # "o":Lcom/android/dx/util/ListIntSet;
    .end local v1    # "szThis":I
    .end local v2    # "szOther":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    goto :goto_5

    :cond_5
    instance-of v0, p1, Lcom/android/dx/util/BitIntSet;

    if-eqz v0, :cond_7

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/android/dx/util/BitIntSet;

    .line 94
    .local v0, "o":Lcom/android/dx/util/BitIntSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_6

    .line 95
    iget-object v2, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v2, v1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 94
    iget-object v2, v0, Lcom/android/dx/util/BitIntSet;->bits:[I

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v1

    goto :goto_3

    .line 97
    .end local v1    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->sort()V

    .line 98
    .end local v0    # "o":Lcom/android/dx/util/BitIntSet;
    goto :goto_5

    .line 99
    :cond_7
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    move-result-object v0

    .line 100
    .local v0, "iter":Lcom/android/dx/util/IntIterator;
    :goto_4
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/dx/util/ListIntSet;->add(I)V

    goto :goto_4

    .line 104
    .end local v0    # "iter":Lcom/android/dx/util/IntIterator;
    :cond_8
    :goto_5
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "value"    # I

    .line 50
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    .line 52
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->removeIndex(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
