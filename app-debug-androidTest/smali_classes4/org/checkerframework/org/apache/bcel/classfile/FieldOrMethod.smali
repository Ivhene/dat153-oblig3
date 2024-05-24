.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;
.super Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;
.source "FieldOrMethod.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;


# instance fields
.field private annotationEntries:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

.field protected attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected attributes_count:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected name_index:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private searchedForSignatureAttribute:Z

.field private signatureAttributeString:Ljava/lang/String;

.field protected signature_index:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signatureAttributeString:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->searchedForSignatureAttribute:Z

    .line 73
    return-void
.end method

.method protected constructor <init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "access_flags"    # I
    .param p2, "name_index"    # I
    .param p3, "signature_index"    # I
    .param p4, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 126
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;-><init>(I)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signatureAttributeString:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->searchedForSignatureAttribute:Z

    .line 127
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->name_index:I

    .line 128
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signature_index:I

    .line 129
    iput-object p5, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 130
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->setAttributes([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 6
    .param p1, "file"    # Ljava/io/DataInput;
    .param p2, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 108
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 109
    .local v0, "attributes_count":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 111
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    invoke-static {p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readAttribute(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v3

    aput-object v3, v2, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes_count:I

    .line 114
    return-void
.end method

.method protected constructor <init>(Ljava/io/DataInputStream;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "file"    # Ljava/io/DataInputStream;
    .param p2, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 97
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;)V
    .locals 6
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;

    .line 81
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAccessFlags()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getNameIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getSignatureIndex()I

    move-result v3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v4

    .line 82
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v5

    .line 81
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected copy_(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;
    .locals 5
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 241
    const/4 v0, 0x0

    .line 244
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 249
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 250
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 251
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes_count:I

    iput v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes_count:I

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 254
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    aget-object v2, v2, v1

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v2

    aput-object v2, v3, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    .end local v1    # "i":I
    :cond_0
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

    .line 141
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 143
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 144
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 145
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 146
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 145
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->annotationEntries:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->createAnnotationEntries([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->annotationEntries:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->annotationEntries:[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    return-object v0
.end method

.method public final getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0
.end method

.method public final getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    return-object v0
.end method

.method public final getGenericSignature()Ljava/lang/String;
    .locals 4

    .line 280
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->searchedForSignatureAttribute:Z

    if-nez v0, :cond_2

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 285
    aget-object v2, v2, v1

    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/classfile/Signature;

    if-eqz v3, :cond_0

    .line 287
    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/Signature;

    .line 288
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;->getSignature()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signatureAttributeString:Ljava/lang/String;

    .line 289
    const/4 v0, 0x1

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->searchedForSignatureAttribute:Z

    .line 294
    .end local v0    # "found":Z
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signatureAttributeString:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 222
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->name_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 223
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getNameIndex()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 189
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->name_index:I

    return v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signature_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 233
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getSignatureIndex()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signature_index:I

    return v0
.end method

.method public final setAttributes([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 1
    .param p1, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 163
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 164
    if-eqz p1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->attributes_count:I

    .line 165
    return-void
.end method

.method public final setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 180
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 181
    return-void
.end method

.method public final setNameIndex(I)V
    .locals 0
    .param p1, "name_index"    # I

    .line 197
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->name_index:I

    .line 198
    return-void
.end method

.method public final setSignatureIndex(I)V
    .locals 0
    .param p1, "signature_index"    # I

    .line 213
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->signature_index:I

    .line 214
    return-void
.end method
