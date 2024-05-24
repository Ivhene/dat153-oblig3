.class public final Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "Deprecated.java"


# instance fields
.field private bytes:[B


# direct methods
.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 2
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;-><init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 75
    if-lez p2, :cond_0

    .line 76
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->bytes:[B

    .line 77
    invoke-interface {p3, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Deprecated attribute with length > 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public constructor <init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "bytes"    # [B
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 58
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 59
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->bytes:[B

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    .line 47
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;-><init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 48
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 92
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitDeprecated(Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;)V

    .line 93
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 5
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 142
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    .line 143
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->bytes:[B

    if-eqz v1, :cond_0

    .line 144
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->bytes:[B

    .line 145
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->bytes:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 148
    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 105
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->bytes:[B

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 108
    :cond_0
    return-void
.end method

.method public final getBytes()[B
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->bytes:[B

    return-object v0
.end method

.method public final setBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 124
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->bytes:[B

    .line 125
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 133
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Const;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
