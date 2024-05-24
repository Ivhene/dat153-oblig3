.class public final Lcom/android/dx/cf/code/SwitchList;
.super Lcom/android/dx/util/MutabilityControl;
.source "SwitchList.java"


# instance fields
.field private size:I

.field private final targets:Lcom/android/dx/util/IntList;

.field private final values:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 48
    new-instance v0, Lcom/android/dx/util/IntList;

    invoke-direct {v0, p1}, Lcom/android/dx/util/IntList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->values:Lcom/android/dx/util/IntList;

    .line 49
    new-instance v0, Lcom/android/dx/util/IntList;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    .line 50
    iput p1, p0, Lcom/android/dx/cf/code/SwitchList;->size:I

    .line 51
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "target"    # I

    .line 148
    invoke-virtual {p0}, Lcom/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    .line 150
    if-ltz p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->values:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 155
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p2}, Lcom/android/dx/util/IntList;->add(I)V

    .line 156
    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultTarget()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    iget v1, p0, Lcom/android/dx/cf/code/SwitchList;->size:I

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method public getTarget(I)I
    .locals 1
    .param p1, "n"    # I

    .line 88
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method public getTargets()Lcom/android/dx/util/IntList;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    return-object v0
.end method

.method public getValue(I)I
    .locals 1
    .param p1, "n"    # I

    .line 77
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->values:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method public getValues()Lcom/android/dx/util/IntList;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->values:Lcom/android/dx/util/IntList;

    return-object v0
.end method

.method public removeSuperfluousDefaults()V
    .locals 7

    .line 164
    invoke-virtual {p0}, Lcom/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    .line 166
    iget v0, p0, Lcom/android/dx/cf/code/SwitchList;->size:I

    .line 168
    .local v0, "sz":I
    iget-object v1, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 173
    .local v1, "defaultTarget":I
    const/4 v2, 0x0

    .line 175
    .local v2, "at":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 176
    iget-object v4, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v4, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    .line 177
    .local v4, "target":I
    if-eq v4, v1, :cond_1

    .line 178
    if-eq v3, v2, :cond_0

    .line 179
    iget-object v5, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v5, v2, v4}, Lcom/android/dx/util/IntList;->set(II)V

    .line 180
    iget-object v5, p0, Lcom/android/dx/cf/code/SwitchList;->values:Lcom/android/dx/util/IntList;

    invoke-virtual {v5, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/android/dx/util/IntList;->set(II)V

    .line 182
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 175
    .end local v4    # "target":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v3    # "i":I
    :cond_2
    if-eq v2, v0, :cond_3

    .line 187
    iget-object v3, p0, Lcom/android/dx/cf/code/SwitchList;->values:Lcom/android/dx/util/IntList;

    invoke-virtual {v3, v2}, Lcom/android/dx/util/IntList;->shrink(I)V

    .line 188
    iget-object v3, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v3, v2, v1}, Lcom/android/dx/util/IntList;->set(II)V

    .line 189
    iget-object v3, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/IntList;->shrink(I)V

    .line 190
    iput v2, p0, Lcom/android/dx/cf/code/SwitchList;->size:I

    .line 192
    :cond_3
    return-void

    .line 169
    .end local v1    # "defaultTarget":I
    .end local v2    # "at":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "incomplete instance"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDefaultTarget(I)V
    .locals 2
    .param p1, "target"    # I

    .line 128
    invoke-virtual {p0}, Lcom/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    .line 130
    if-ltz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/dx/cf/code/SwitchList;->size:I

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 139
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "non-default elements not all set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImmutable()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->values:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 57
    iget-object v0, p0, Lcom/android/dx/cf/code/SwitchList;->targets:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 58
    invoke-super {p0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    .line 59
    return-void
.end method

.method public size()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/dx/cf/code/SwitchList;->size:I

    return v0
.end method
