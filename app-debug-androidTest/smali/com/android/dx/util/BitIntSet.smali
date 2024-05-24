.class public Lcom/android/dx/util/BitIntSet;
.super Ljava/lang/Object;
.source "BitIntSet.java"

# interfaces
.implements Lcom/android/dx/util/IntSet;


# instance fields
.field bits:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "max"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    .line 36
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "value"    # I

    .line 51
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/android/dx/util/Bits;->getMax([I)I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 52
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    .line 53
    invoke-static {v1}, Lcom/android/dx/util/Bits;->getMax([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    .line 54
    .local v0, "newBits":[I
    iget-object v1, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    .line 57
    .end local v0    # "newBits":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2
    .param p1, "value"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/android/dx/util/BitIntSet;->ensureCapacity(I)V

    .line 42
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/dx/util/Bits;->set([IIZ)V

    .line 43
    return-void
.end method

.method public elements()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/android/dx/util/Bits;->bitCount([I)I

    move-result v0

    return v0
.end method

.method public has(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 70
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/android/dx/util/Bits;->getMax([I)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0, p1}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/android/dx/util/IntIterator;
    .locals 1

    .line 107
    new-instance v0, Lcom/android/dx/util/BitIntSet$1;

    invoke-direct {v0, p0}, Lcom/android/dx/util/BitIntSet$1;-><init>(Lcom/android/dx/util/BitIntSet;)V

    return-object v0
.end method

.method public merge(Lcom/android/dx/util/IntSet;)V
    .locals 6
    .param p1, "other"    # Lcom/android/dx/util/IntSet;

    .line 76
    instance-of v0, p1, Lcom/android/dx/util/BitIntSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/android/dx/util/BitIntSet;

    .line 78
    .local v0, "o":Lcom/android/dx/util/BitIntSet;
    iget-object v2, v0, Lcom/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v2}, Lcom/android/dx/util/Bits;->getMax([I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/dx/util/BitIntSet;->ensureCapacity(I)V

    .line 79
    iget-object v1, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    iget-object v2, v0, Lcom/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v1, v2}, Lcom/android/dx/util/Bits;->or([I[I)V

    .line 80
    .end local v0    # "o":Lcom/android/dx/util/BitIntSet;
    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/android/dx/util/ListIntSet;

    if-eqz v0, :cond_3

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/android/dx/util/ListIntSet;

    .line 82
    .local v0, "o":Lcom/android/dx/util/ListIntSet;
    iget-object v2, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .line 84
    .local v2, "sz":I
    if-lez v2, :cond_1

    .line 85
    iget-object v3, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/dx/util/BitIntSet;->ensureCapacity(I)V

    .line 87
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v4}, Lcom/android/dx/util/IntList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    iget-object v5, v0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v5, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/android/dx/util/Bits;->set([IIZ)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "o":Lcom/android/dx/util/ListIntSet;
    .end local v2    # "sz":I
    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 91
    :cond_3
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    move-result-object v0

    .line 92
    .local v0, "iter":Lcom/android/dx/util/IntIterator;
    :goto_1
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/dx/util/BitIntSet;->add(I)V

    goto :goto_1

    .line 96
    .end local v0    # "iter":Lcom/android/dx/util/IntIterator;
    :cond_4
    :goto_2
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "value"    # I

    .line 62
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/android/dx/util/Bits;->getMax([I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/dx/util/Bits;->set([IIZ)V

    .line 65
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    const/4 v1, 0x1

    .line 140
    .local v1, "first":Z
    iget-object v2, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v2

    .line 141
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 143
    if-nez v1, :cond_0

    .line 144
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    iget-object v3, p0, Lcom/android/dx/util/BitIntSet;->bits:[I

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v2

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
