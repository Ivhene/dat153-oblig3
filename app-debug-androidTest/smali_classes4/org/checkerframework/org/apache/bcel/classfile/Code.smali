.class public final Lorg/checkerframework/org/apache/bcel/classfile/Code;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "Code.java"


# instance fields
.field private attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

.field private code:[B

.field private exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

.field private max_locals:I

.field private max_stack:I


# direct methods
.method public constructor <init>(IIII[B[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 2
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "max_stack"    # I
    .param p4, "max_locals"    # I
    .param p5, "code"    # [B
    .param p6, "exception_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .param p7, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p8, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 115
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p8}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 116
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_stack:I

    .line 117
    iput p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_locals:I

    .line 118
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object v1, p5

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    :goto_0
    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    .line 119
    if-eqz p6, :cond_1

    move-object v1, p6

    goto :goto_1

    :cond_1
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    :goto_1
    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 120
    if-eqz p7, :cond_2

    move-object v0, p7

    goto :goto_2

    :cond_2
    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    :goto_2
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 121
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->calculateLength()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->setLength(I)V

    .line 122
    return-void
.end method

.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 9
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "file"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, [B

    const/4 v6, 0x0

    move-object v0, v6

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/checkerframework/org/apache/bcel/classfile/Code;-><init>(IIII[B[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 76
    invoke-interface {p3}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 77
    .local v0, "code_length":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    .line 78
    invoke-interface {p3, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 82
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 83
    .local v1, "exception_table_length":I
    new-array v2, v1, [Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 84
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 85
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    invoke-direct {v4, p3}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;-><init>(Ljava/io/DataInput;)V

    aput-object v4, v3, v2

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    .line 91
    .local v2, "attributes_count":I
    new-array v3, v2, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    iput-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 92
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 93
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    invoke-static {p3, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readAttribute(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v5

    aput-object v5, v4, v3

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v3    # "i":I
    :cond_1
    invoke-super {p0, p2}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->setLength(I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Code;)V
    .locals 9
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 60
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getNameIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getLength()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxStack()I

    move-result v3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v4

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getCode()[B

    move-result-object v5

    .line 61
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getExceptionTable()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v6

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v7

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v8

    .line 60
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/checkerframework/org/apache/bcel/classfile/Code;-><init>(IIII[B[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 62
    return-void
.end method

.method private calculateLength()I
    .locals 6

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "len":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    if-eqz v1, :cond_0

    .line 250
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 251
    .local v4, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v0, v5

    .line 250
    .end local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getInternalLength()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getInternalLength()I
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 134
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitCode(Lorg/checkerframework/org/apache/bcel/classfile/Code;)V

    .line 135
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 5
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 341
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 342
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    if-eqz v1, :cond_0

    .line 343
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    .line 344
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 347
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 349
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->copy()Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v2

    aput-object v2, v3, v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 352
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 353
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v2

    aput-object v2, v3, v1

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 147
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_stack:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 148
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_locals:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 149
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 152
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 153
    .local v4, "exception":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    invoke-virtual {v4, p1}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->dump(Ljava/io/DataOutputStream;)V

    .line 152
    .end local v4    # "exception":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 156
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 157
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 156
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_1
    return-void
.end method

.method public final getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0
.end method

.method public final getCode()[B
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    return-object v0
.end method

.method public final getExceptionTable()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    return-object v0
.end method

.method public getLineNumberTable()Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .locals 5

    .line 175
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 176
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    if-eqz v4, :cond_0

    .line 177
    move-object v0, v3

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    return-object v0

    .line 175
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalVariableTable()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .locals 5

    .line 188
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 189
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    if-eqz v4, :cond_0

    .line 190
    move-object v0, v3

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    return-object v0

    .line 188
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMaxLocals()I
    .locals 1

    .line 218
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_locals:I

    return v0
.end method

.method public final getMaxStack()I
    .locals 1

    .line 226
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_stack:I

    return v0
.end method

.method public final setAttributes([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 1
    .param p1, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 262
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 263
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->calculateLength()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->setLength(I)V

    .line 264
    return-void
.end method

.method public final setCode([B)V
    .locals 1
    .param p1, "code"    # [B

    .line 271
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    .line 272
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->calculateLength()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->setLength(I)V

    .line 273
    return-void
.end method

.method public final setExceptionTable([Lorg/checkerframework/org/apache/bcel/classfile/CodeException;)V
    .locals 1
    .param p1, "exception_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 280
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 281
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->calculateLength()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->setLength(I)V

    .line 282
    return-void
.end method

.method public final setMaxLocals(I)V
    .locals 0
    .param p1, "max_locals"    # I

    .line 289
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_locals:I

    .line 290
    return-void
.end method

.method public final setMaxStack(I)V
    .locals 0
    .param p1, "max_stack"    # I

    .line 297
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_stack:I

    .line 298
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 8
    .param p1, "verbose"    # Z

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 306
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "Code(max_stack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_stack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max_locals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->max_locals:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string v2, ", code_length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->code:[B

    .line 308
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->codeToString([BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    array-length v1, v1

    const-string v2, "\n"

    if-lez v1, :cond_0

    .line 310
    const-string v1, "\nException handler(s) = \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "From\tTo\tHandler\tType\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->exception_table:[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    array-length v3, v1

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, v1, v4

    .line 312
    .local v6, "exception":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .end local v6    # "exception":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 316
    const-string v1, "\nAttribute(s) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Code;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v3, v1

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v4, v1, v5

    .line 318
    .local v4, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .end local v4    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
