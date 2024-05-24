.class public final Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "ExceptionTable.java"


# instance fields
.field private exception_index_table:[I


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

    .line 73
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [I

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;-><init>(II[ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 74
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 75
    .local v0, "number_of_exceptions":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 77
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    aput v3, v2, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(II[ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "exception_index_table"    # [I
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 60
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    .line 47
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getExceptionIndexTable()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;-><init>(II[ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 48
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 91
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitExceptionTable(Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;)V

    .line 92
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 5
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 173
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    .line 174
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    if-eqz v1, :cond_0

    .line 175
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    .line 176
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 180
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

    .line 103
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 104
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 106
    .local v3, "index":I
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 105
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public final getExceptionIndexTable()[I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    return-object v0
.end method

.method public final getExceptionNames()[Ljava/lang/String;
    .locals 5

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 132
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 133
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    aget v3, v3, v1

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v2

    .line 134
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final getNumberOfExceptions()I
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public final setExceptionIndexTable([I)V
    .locals 1
    .param p1, "exception_index_table"    # [I

    .line 145
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    .line 146
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "Exceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 158
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    aget v3, v3, v1

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->exception_index_table:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 161
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
