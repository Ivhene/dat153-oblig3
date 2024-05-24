.class public Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "LocalVariableTable.java"


# instance fields
.field private local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;


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

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 74
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 75
    .local v0, "local_variable_table_length":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 77
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    invoke-direct {v3, p3, p4}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "local_variable_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 58
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 59
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 47
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 91
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitLocalVariableTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V

    .line 92
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 4
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 186
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 187
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 189
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->copy()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v2

    aput-object v2, v3, v1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 192
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
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 106
    .local v3, "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->dump(Ljava/io/DataOutputStream;)V

    .line 105
    .end local v3    # "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public final getLocalVariable(I)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .locals 5
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 131
    .local v3, "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 132
    return-object v3

    .line 130
    .end local v3    # "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocalVariable(II)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .locals 6
    .param p1, "index"    # I
    .param p2, "pc"    # I

    .line 147
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 148
    .local v3, "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 149
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v4

    .line 150
    .local v4, "start_pc":I
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getLength()I

    move-result v5

    add-int/2addr v5, v4

    .line 151
    .local v5, "end_pc":I
    if-lt p2, v4, :cond_0

    if-gt p2, v5, :cond_0

    .line 152
    return-object v3

    .line 147
    .end local v3    # "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v4    # "start_pc":I
    .end local v5    # "end_pc":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    return-object v0
.end method

.method public final getTableLength()I
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public final setLocalVariableTable([Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;)V
    .locals 0
    .param p1, "local_variable_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 161
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 162
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 172
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->local_variable_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 174
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
