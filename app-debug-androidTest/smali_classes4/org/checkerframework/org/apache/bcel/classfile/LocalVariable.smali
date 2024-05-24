.class public final Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
.super Ljava/lang/Object;
.source "LocalVariable.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;
.implements Lorg/checkerframework/org/apache/bcel/Constants;


# instance fields
.field private constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private index:I

.field private length:I

.field private name_index:I

.field private orig_index:I

.field private signature_index:I

.field private start_pc:I


# direct methods
.method public constructor <init>(IIIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "start_pc"    # I
    .param p2, "length"    # I
    .param p3, "name_index"    # I
    .param p4, "signature_index"    # I
    .param p5, "index"    # I
    .param p6, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->start_pc:I

    .line 83
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->length:I

    .line 84
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->name_index:I

    .line 85
    iput p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->signature_index:I

    .line 86
    iput p5, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->index:I

    .line 87
    iput-object p6, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 88
    iput p5, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->orig_index:I

    .line 89
    return-void
.end method

.method public constructor <init>(IIIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;I)V
    .locals 0
    .param p1, "start_pc"    # I
    .param p2, "length"    # I
    .param p3, "name_index"    # I
    .param p4, "signature_index"    # I
    .param p5, "index"    # I
    .param p6, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p7, "orig_index"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->start_pc:I

    .line 104
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->length:I

    .line 105
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->name_index:I

    .line 106
    iput p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->signature_index:I

    .line 107
    iput p5, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->index:I

    .line 108
    iput-object p6, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 109
    iput p7, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->orig_index:I

    .line 110
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 7
    .param p1, "file"    # Ljava/io/DataInput;
    .param p2, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    .line 68
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    .line 67
    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;-><init>(IIIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;)V
    .locals 7
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 55
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getLength()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getNameIndex()I

    move-result v3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getSignatureIndex()I

    move-result v4

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v5

    .line 56
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v6

    .line 55
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;-><init>(IIIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 57
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getOrigIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->orig_index:I

    .line 58
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 122
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitLocalVariable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;)V

    .line 123
    return-void
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .locals 1

    .line 293
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->start_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 134
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 135
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 136
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 137
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 138
    return-void
.end method

.method public final getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 198
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->index:I

    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->length:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->name_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 163
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getNameIndex()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 172
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->name_index:I

    return v0
.end method

.method public final getOrigIndex()I
    .locals 1

    .line 206
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->orig_index:I

    return v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 3

    .line 181
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->signature_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 182
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getSignatureIndex()I
    .locals 1

    .line 190
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->signature_index:I

    return v0
.end method

.method public final getStartPC()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->start_pc:I

    return v0
.end method

.method public final setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 234
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 235
    return-void
.end method

.method public final setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 266
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->index:I

    .line 267
    return-void
.end method

.method public final setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 242
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->length:I

    .line 243
    return-void
.end method

.method public final setNameIndex(I)V
    .locals 0
    .param p1, "name_index"    # I

    .line 250
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->name_index:I

    .line 251
    return-void
.end method

.method public final setSignatureIndex(I)V
    .locals 0
    .param p1, "signature_index"    # I

    .line 258
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->signature_index:I

    .line 259
    return-void
.end method

.method public final setStartPC(I)V
    .locals 0
    .param p1, "start_pc"    # I

    .line 274
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->start_pc:I

    .line 275
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->toStringShared(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final toStringShared(Z)Ljava/lang/String;
    .locals 5
    .param p1, "typeTable"    # Z

    .line 222
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "signature":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalVariable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "Types"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "label":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(start_pc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->start_pc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
