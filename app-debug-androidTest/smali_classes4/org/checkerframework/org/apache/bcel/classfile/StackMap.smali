.class public final Lorg/checkerframework/org/apache/bcel/classfile/StackMap;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "StackMap.java"


# instance fields
.field private map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;


# direct methods
.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 4
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 68
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 69
    .local v0, "map_length":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 71
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    invoke-direct {v3, p3, p4}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "map"    # [Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 52
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 53
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 54
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 154
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitStackMap(Lorg/checkerframework/org/apache/bcel/classfile/StackMap;)V

    .line 155
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 4
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 135
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    .line 136
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/StackMap;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 138
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->copy()Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    move-result-object v2

    aput-object v2, v3, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 141
    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    .local v3, "entry":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->dump(Ljava/io/DataOutputStream;)V

    .line 86
    .end local v3    # "entry":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public final getMapLength()I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public final getStackMap()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    return-object v0
.end method

.method public final setStackMap([Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;)V
    .locals 5
    .param p1, "map"    # [Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 104
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    .line 105
    const/4 v0, 0x2

    .line 106
    .local v0, "len":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 107
    .local v3, "element":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->getMapEntrySize()I

    move-result v4

    add-int/2addr v0, v4

    .line 106
    .end local v3    # "element":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->setLength(I)V

    .line 110
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StackMap("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 120
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;->map:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 122
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
