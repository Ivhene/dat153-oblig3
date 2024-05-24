.class public final Lorg/checkerframework/org/apache/bcel/classfile/Unknown;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "Unknown.java"


# static fields
.field private static final unknown_attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/classfile/Unknown;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bytes:[B

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->unknown_attributes:Ljava/util/Map;

    return-void
.end method

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

    .line 97
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;-><init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 98
    if-lez p2, :cond_0

    .line 99
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    .line 100
    invoke-interface {p3, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 102
    :cond_0
    return-void
.end method

.method public constructor <init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 2
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "bytes"    # [B
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 78
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 79
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p4, p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 81
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->name:Ljava/lang/String;

    .line 82
    sget-object v1, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->unknown_attributes:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Unknown;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Unknown;

    .line 65
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;-><init>(II[BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 66
    return-void
.end method

.method static getUnknownAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Unknown;
    .locals 3

    .line 53
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->unknown_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Unknown;

    .line 54
    .local v1, "unknowns":[Lorg/checkerframework/org/apache/bcel/classfile/Unknown;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    return-object v1
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 114
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitUnknown(Lorg/checkerframework/org/apache/bcel/classfile/Unknown;)V

    .line 115
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 5
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 184
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;

    .line 185
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Unknown;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    if-eqz v1, :cond_0

    .line 186
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    .line 187
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 190
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

    .line 126
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 127
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 130
    :cond_0
    return-void
.end method

.method public final getBytes()[B
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 155
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    .line 156
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 164
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v0

    const-string v1, ")"

    const-string v2, "(Unknown attribute "

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    if-nez v0, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getLength()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    .line 169
    new-array v0, v3, [B

    .line 170
    .local v0, "tmp":[B
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "... (truncated)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "hex":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "hex":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->bytes:[B

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 175
    .restart local v0    # "hex":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 165
    .end local v0    # "hex":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
