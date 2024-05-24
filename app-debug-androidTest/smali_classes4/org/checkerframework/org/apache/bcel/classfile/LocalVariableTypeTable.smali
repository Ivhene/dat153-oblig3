.class public Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "LocalVariableTypeTable.java"


# instance fields
.field private local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;


# direct methods
.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 4
    .param p1, "nameIdx"    # I
    .param p2, "len"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 75
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 76
    .local v0, "local_variable_type_table_length":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    invoke-direct {v3, p3, p4}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
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

    .line 68
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 69
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    .line 64
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->getLocalVariableTypeTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 85
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitLocalVariableTypeTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;)V

    .line 86
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 4
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 138
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    .line 140
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 142
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->copy()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v2

    aput-object v2, v3, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 146
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

    .line 90
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 91
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    .local v3, "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->dump(Ljava/io/DataOutputStream;)V

    .line 92
    .end local v3    # "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public final getLocalVariable(I)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .locals 5
    .param p1, "index"    # I

    .line 102
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 103
    .local v3, "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 104
    return-object v3

    .line 102
    .end local v3    # "variable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocalVariableTypeTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    return-object v0
.end method

.method public final getTableLength()I
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

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

    .line 112
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 113
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 123
    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->toStringShared(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;->local_variable_type_table:[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    array-length v2, v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 126
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
