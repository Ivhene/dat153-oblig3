.class public Lcom/android/dx/util/LabeledList;
.super Lcom/android/dx/util/FixedSizeList;
.source "LabeledList.java"


# instance fields
.field private final labelToIndex:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 35
    new-instance v0, Lcom/android/dx/util/IntList;

    invoke-direct {v0, p1}, Lcom/android/dx/util/IntList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/util/LabeledList;)V
    .locals 3
    .param p1, "old"    # Lcom/android/dx/util/LabeledList;

    .line 44
    invoke-virtual {p1}, Lcom/android/dx/util/LabeledList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 45
    iget-object v0, p1, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    .line 47
    invoke-virtual {p1}, Lcom/android/dx/util/LabeledList;->size()I

    move-result v0

    .line 49
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    invoke-virtual {p1, v1}, Lcom/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "one":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0, v1, v2}, Lcom/android/dx/util/LabeledList;->set0(ILjava/lang/Object;)V

    .line 49
    .end local v2    # "one":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private addLabelIndex(II)V
    .locals 4
    .param p1, "label"    # I
    .param p2, "index"    # I

    .line 93
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 95
    .local v0, "origSz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sub-int v2, p1, v0

    if-gt v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/IntList;->add(I)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-virtual {v1, p1, p2}, Lcom/android/dx/util/IntList;->set(II)V

    .line 100
    return-void
.end method

.method private rebuildLabelToIndex()V
    .locals 5

    .line 157
    invoke-virtual {p0}, Lcom/android/dx/util/LabeledList;->size()I

    move-result v0

    .line 159
    .local v0, "szItems":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/util/LabeledItem;

    .line 162
    .local v2, "li":Lcom/android/dx/util/LabeledItem;
    if-eqz v2, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-interface {v2}, Lcom/android/dx/util/LabeledItem;->getLabel()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/android/dx/util/IntList;->set(II)V

    .line 159
    .end local v2    # "li":Lcom/android/dx/util/LabeledItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private removeLabel(I)V
    .locals 2
    .param p1, "oldLabel"    # I

    .line 83
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/dx/util/IntList;->set(II)V

    .line 84
    return-void
.end method


# virtual methods
.method public final getLabelsInOrder()[I
    .locals 7

    .line 128
    invoke-virtual {p0}, Lcom/android/dx/util/LabeledList;->size()I

    move-result v0

    .line 129
    .local v0, "sz":I
    new-array v1, v0, [I

    .line 131
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/util/LabeledItem;

    .line 133
    .local v3, "li":Lcom/android/dx/util/LabeledItem;
    if-eqz v3, :cond_0

    .line 136
    invoke-interface {v3}, Lcom/android/dx/util/LabeledItem;->getLabel()I

    move-result v4

    aput v4, v1, v2

    .line 131
    .end local v3    # "li":Lcom/android/dx/util/LabeledItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .restart local v3    # "li":Lcom/android/dx/util/LabeledItem;
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .end local v2    # "i":I
    .end local v3    # "li":Lcom/android/dx/util/LabeledItem;
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 140
    return-object v1
.end method

.method public final getMaxLabel()I
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 67
    .local v0, "sz":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-virtual {v2, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 72
    .local v2, "newSize":I
    iget-object v3, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-virtual {v3, v2}, Lcom/android/dx/util/IntList;->shrink(I)V

    .line 74
    return v2
.end method

.method public final indexOfLabel(I)I
    .locals 1
    .param p1, "label"    # I

    .line 111
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 112
    const/4 v0, -0x1

    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/dx/util/LabeledList;->labelToIndex:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method protected set(ILcom/android/dx/util/LabeledItem;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "item"    # Lcom/android/dx/util/LabeledItem;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/dx/util/LabeledList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/util/LabeledItem;

    .line 177
    .local v0, "old":Lcom/android/dx/util/LabeledItem;
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/util/LabeledList;->set0(ILjava/lang/Object;)V

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/android/dx/util/LabeledItem;->getLabel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/dx/util/LabeledList;->removeLabel(I)V

    .line 183
    :cond_0
    if-eqz p2, :cond_1

    .line 184
    invoke-interface {p2}, Lcom/android/dx/util/LabeledItem;->getLabel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/dx/util/LabeledList;->addLabelIndex(II)V

    .line 186
    :cond_1
    return-void
.end method

.method public shrinkToFit()V
    .locals 0

    .line 146
    invoke-super {p0}, Lcom/android/dx/util/FixedSizeList;->shrinkToFit()V

    .line 148
    invoke-direct {p0}, Lcom/android/dx/util/LabeledList;->rebuildLabelToIndex()V

    .line 149
    return-void
.end method
