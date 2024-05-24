.class public final Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "LineNumberTable.java"


# static fields
.field private static final MAX_LINE_LENGTH:I = 0x48


# instance fields
.field private line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;


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

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 74
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 75
    .local v0, "line_number_table_length":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 77
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    invoke-direct {v3, p3}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;-><init>(Ljava/io/DataInput;)V

    aput-object v3, v2, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "line_number_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 58
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 59
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getLineNumberTable()[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 47
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 91
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitLineNumberTable(Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;)V

    .line 92
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 4
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 203
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    .line 204
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 206
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->copy()Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    move-result-object v2

    aput-object v2, v3, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 209
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
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 106
    .local v3, "lineNumber":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->dump(Ljava/io/DataOutputStream;)V

    .line 105
    .end local v3    # "lineNumber":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public final getLineNumberTable()[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    return-object v0
.end method

.method public getSourceLine(I)I
    .locals 7
    .param p1, "pos"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "l":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 160
    .local v1, "r":I
    const/4 v2, -0x1

    if-gez v1, :cond_0

    .line 161
    return v2

    .line 163
    :cond_0
    const/4 v3, -0x1

    .line 164
    .local v3, "min_index":I
    const/4 v4, -0x1

    .line 168
    .local v4, "min":I
    :cond_1
    add-int v5, v0, v1

    div-int/lit8 v5, v5, 0x2

    .line 169
    .local v5, "i":I
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getStartPC()I

    move-result v6

    .line 170
    .local v6, "j":I
    if-ne v6, p1, :cond_2

    .line 171
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getLineNumber()I

    move-result v2

    return v2

    .line 172
    :cond_2
    if-ge p1, v6, :cond_3

    .line 173
    add-int/lit8 v1, v5, -0x1

    goto :goto_0

    .line 175
    :cond_3
    add-int/lit8 v0, v5, 0x1

    .line 181
    :goto_0
    if-ge v6, p1, :cond_4

    if-le v6, v4, :cond_4

    .line 182
    move v4, v6

    .line 183
    move v3, v5

    .line 185
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_4
    if-le v0, v1, :cond_1

    .line 189
    if-gez v3, :cond_5

    .line 190
    return v2

    .line 192
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getLineNumber()I

    move-result v2

    return v2
.end method

.method public final getTableLength()I
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public final setLineNumberTable([Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;)V
    .locals 0
    .param p1, "line_number_table"    # [Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 123
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 124
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v1, "line":Ljava/lang/StringBuilder;
    const-string v2, "line.separator"

    const-string v3, "\n"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "newLine":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 136
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 138
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x48

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->line_number_table:[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 143
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 135
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
