.class public final Lorg/checkerframework/org/apache/bcel/classfile/Signature;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;
    }
.end annotation


# instance fields
.field private signature_index:I


# direct methods
.method public constructor <init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "signature_index"    # I
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 69
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 70
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->signature_index:I

    .line 71
    return-void
.end method

.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Signature;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Signature;

    .line 44
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->getSignatureIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 45
    return-void
.end method

.method private static identStart(I)Z
    .locals 1
    .param p0, "ch"    # I

    .line 150
    const/16 v0, 0x54

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isActualParameterList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 249
    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ">;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFormalParameterList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 243
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchGJIdent(Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "in"    # Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 199
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->matchIdent(Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuilder;)V

    .line 200
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->read()I

    move-result v0

    .line 201
    .local v0, "ch":I
    const/16 v1, 0x3c

    const-string v2, "Illegal signature: "

    const/16 v3, 0x29

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->unread()V

    goto :goto_2

    .line 203
    :cond_1
    :goto_0
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->matchGJIdent(Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuilder;)V

    .line 205
    :goto_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->read()I

    move-result v1

    move v0, v1

    const/16 v4, 0x3e

    if-eq v1, v4, :cond_3

    if-eq v0, v3, :cond_3

    .line 206
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 211
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->unread()V

    .line 213
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->matchGJIdent(Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 207
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reaching EOF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_3
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :goto_2
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->read()I

    move-result v0

    .line 221
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->identStart(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->unread()V

    .line 223
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->matchGJIdent(Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 224
    :cond_4
    if-ne v0, v3, :cond_5

    .line 225
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->unread()V

    .line 226
    return-void

    .line 227
    :cond_5
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_6

    .line 230
    :goto_3
    return-void

    .line 228
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static matchIdent(Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p0, "in"    # Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "ch":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 161
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->identStart(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "buf2":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 164
    .local v2, "count":I
    :goto_0
    int-to-char v3, v1

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 167
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->read()I

    move-result v1

    goto :goto_0

    .line 169
    :cond_0
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_1

    .line 170
    const-string v3, "Ljava/lang/Object"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->skip(J)J

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->read()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->unread()V

    goto :goto_2

    .line 176
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 177
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->unread()V

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    .end local v3    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 182
    .end local v0    # "buf2":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .restart local v0    # "buf2":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->read()I

    move-result v1

    .line 185
    :cond_4
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->read()I

    move-result v1

    .line 188
    const/16 v3, 0x2f

    if-eq v1, v2, :cond_5

    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_4

    if-eq v1, v3, :cond_4

    .line 189
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    if-eq v1, v2, :cond_6

    .line 192
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->unread()V

    .line 194
    :cond_6
    return-void

    .line 157
    .end local v0    # "buf2":Ljava/lang/StringBuilder;
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no ident, reaching EOF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->matchGJIdent(Lorg/checkerframework/org/apache/bcel/classfile/Signature$MyByteArrayInputStream;Ljava/lang/StringBuilder;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 84
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitSignature(Lorg/checkerframework/org/apache/bcel/classfile/Signature;)V

    .line 85
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 268
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

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

    .line 96
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 97
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    return-void
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 3

    .line 121
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->signature_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 123
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getSignatureIndex()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->signature_index:I

    return v0
.end method

.method public final setSignatureIndex(I)V
    .locals 0
    .param p1, "signature_index"    # I

    .line 113
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->signature_index:I

    .line 114
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 258
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
