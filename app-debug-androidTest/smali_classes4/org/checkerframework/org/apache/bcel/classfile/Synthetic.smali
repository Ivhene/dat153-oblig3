.class public final Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "Synthetic.java"


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

    .line 79
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;-><init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 80
    if-lez p2, :cond_0

    .line 81
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    .line 82
    invoke-interface {p3, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 83
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Synthetic attribute with length > 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public constructor <init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "bytes"    # [B
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 63
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 64
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    .line 50
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;-><init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 51
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 97
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitSynthetic(Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;)V

    .line 98
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 5
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 151
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    .line 152
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    if-eqz v1, :cond_0

    .line 153
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    .line 154
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 157
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

    .line 109
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 110
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 113
    :cond_0
    return-void
.end method

.method public final getBytes()[B
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    return-object v0
.end method

.method public final setBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 129
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    .line 130
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synthetic"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->bytes:[B

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
