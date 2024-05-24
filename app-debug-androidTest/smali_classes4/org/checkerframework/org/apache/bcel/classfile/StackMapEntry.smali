.class public final Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
.super Ljava/lang/Object;
.source "StackMapEntry.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;
.implements Ljava/lang/Cloneable;


# instance fields
.field private byte_code_offset:I

.field private constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private frame_type:I

.field private types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

.field private types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;


# direct methods
.method public constructor <init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;I[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 2
    .param p1, "byteCodeOffset"    # I
    .param p2, "numberOfLocals"    # I
    .param p3, "typesOfLocals"    # [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .param p4, "numberOfStackItems"    # I
    .param p5, "typesOfStackItems"    # [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .param p6, "constantPool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    .line 111
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    :goto_0
    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 112
    if-eqz p5, :cond_1

    move-object v0, p5

    goto :goto_1

    :cond_1
    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    :goto_1
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 113
    iput-object p6, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 114
    return-void
.end method

.method public constructor <init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "byteCodeOffset"    # I
    .param p3, "typesOfLocals"    # [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .param p4, "typesOfStackItems"    # [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .param p5, "constantPool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    .line 129
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    .line 130
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    :goto_0
    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 131
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    :goto_1
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 132
    iput-object p5, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 133
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 8
    .param p1, "input"    # Ljava/io/DataInput;
    .param p2, "constantPool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0xff

    and-int/lit16 v3, v0, 0xff

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 54
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/16 v3, 0x3f

    if-gt v0, v3, :cond_0

    .line 55
    sub-int/2addr v0, v2

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    goto/16 :goto_3

    .line 56
    :cond_0
    const/16 v3, 0x40

    const/4 v4, 0x1

    if-lt v0, v3, :cond_1

    const/16 v5, 0x7f

    if-gt v0, v5, :cond_1

    .line 58
    sub-int/2addr v0, v3

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    .line 59
    new-array v0, v4, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 60
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v1, v0, v2

    goto/16 :goto_3

    .line 61
    :cond_1
    const/16 v3, 0xf7

    if-ne v0, v3, :cond_2

    .line 62
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    .line 63
    new-array v0, v4, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 64
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v1, v0, v2

    goto/16 :goto_3

    .line 65
    :cond_2
    const/16 v2, 0xf8

    if-lt v0, v2, :cond_3

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_3

    .line 66
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    goto :goto_3

    .line 67
    :cond_3
    const/16 v2, 0xfb

    if-ne v0, v2, :cond_4

    .line 68
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    goto :goto_3

    .line 69
    :cond_4
    const/16 v3, 0xfc

    if-lt v0, v3, :cond_6

    const/16 v3, 0xfe

    if-gt v0, v3, :cond_6

    .line 70
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    .line 71
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    sub-int/2addr v0, v2

    .line 72
    .local v0, "number_of_locals":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 74
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    invoke-direct {v3, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "number_of_locals":I
    .end local v1    # "i":I
    :cond_5
    goto :goto_3

    :cond_6
    if-ne v0, v1, :cond_9

    .line 77
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    .line 78
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    .line 79
    .restart local v0    # "number_of_locals":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 80
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 81
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    invoke-direct {v3, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "i":I
    :cond_7
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v1

    .line 84
    .local v1, "number_of_stack_items":I
    new-array v2, v1, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_8

    .line 86
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    invoke-direct {v4, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v4, v3, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    .end local v0    # "number_of_locals":I
    .end local v1    # "number_of_stack_items":I
    .end local v2    # "i":I
    :cond_8
    nop

    .line 92
    :goto_3
    return-void

    .line 90
    :cond_9
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid frame type found while parsing stack map table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 419
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitStackMapEntry(Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;)V

    .line 420
    return-void
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    .locals 4

    .line 393
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .local v0, "e":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    nop

    .line 398
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 399
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 400
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->copy()Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v2

    aput-object v2, v3, v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 403
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 404
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->copy()Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    move-result-object v2

    aput-object v2, v3, v1

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 394
    .end local v0    # "e":Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;
    :catch_0
    move-exception v0

    .line 395
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Clone Not Supported"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 144
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    if-ltz v0, :cond_0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    goto/16 :goto_3

    .line 146
    :cond_0
    const/16 v1, 0x40

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->dump(Ljava/io/DataOutputStream;)V

    goto/16 :goto_3

    .line 149
    :cond_1
    const/16 v1, 0xf7

    if-ne v0, v1, :cond_2

    .line 150
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->dump(Ljava/io/DataOutputStream;)V

    goto :goto_3

    .line 152
    :cond_2
    const/16 v1, 0xf8

    if-lt v0, v1, :cond_3

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_3

    .line 153
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    .line 154
    :cond_3
    const/16 v1, 0xfb

    if-ne v0, v1, :cond_4

    .line 155
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    .line 156
    :cond_4
    const/16 v1, 0xfc

    if-lt v0, v1, :cond_5

    const/16 v1, 0xfe

    if-gt v0, v1, :cond_5

    .line 157
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 158
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 159
    .local v3, "type":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->dump(Ljava/io/DataOutputStream;)V

    .line 158
    .end local v3    # "type":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_5
    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    .line 162
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 163
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 164
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 165
    .local v4, "type":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v4, p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->dump(Ljava/io/DataOutputStream;)V

    .line 164
    .end local v4    # "type":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 168
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 169
    .restart local v3    # "type":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->dump(Ljava/io/DataOutputStream;)V

    .line 168
    .end local v3    # "type":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 175
    :cond_7
    :goto_3
    return-void

    .line 173
    :cond_8
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Stack map table tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteCodeOffset()I
    .locals 1

    .line 335
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    return v0
.end method

.method public final getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    return-object v0
.end method

.method public getFrameType()I
    .locals 1

    .line 285
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    return v0
.end method

.method getMapEntrySize()I
    .locals 9

    .line 234
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_0

    .line 235
    return v1

    .line 236
    :cond_0
    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2

    .line 238
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    add-int/2addr v4, v1

    return v4

    .line 239
    :cond_2
    const/16 v2, 0xf7

    if-ne v0, v2, :cond_4

    .line 240
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    :cond_3
    add-int/2addr v1, v4

    return v1

    .line 241
    :cond_4
    const/16 v2, 0xf8

    if-lt v0, v2, :cond_5

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_5

    .line 242
    return v4

    .line 243
    :cond_5
    const/16 v2, 0xfb

    if-ne v0, v2, :cond_6

    .line 244
    return v4

    .line 245
    :cond_6
    const/16 v2, 0xfc

    if-lt v0, v2, :cond_9

    const/16 v2, 0xfe

    if-gt v0, v2, :cond_9

    .line 246
    const/4 v0, 0x3

    .line 247
    .local v0, "len":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v5, v2

    :goto_1
    if-ge v3, v5, :cond_8

    aget-object v6, v2, v3

    .line 248
    .local v6, "types_of_local":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->hasIndex()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v4

    goto :goto_2

    :cond_7
    move v7, v1

    :goto_2
    add-int/2addr v0, v7

    .line 247
    .end local v6    # "types_of_local":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    :cond_8
    return v0

    .line 251
    .end local v0    # "len":I
    :cond_9
    const/16 v2, 0xff

    if-ne v0, v2, :cond_e

    .line 252
    const/4 v0, 0x7

    .line 253
    .restart local v0    # "len":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v5, v2

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_b

    aget-object v7, v2, v6

    .line 254
    .local v7, "types_of_local":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->hasIndex()Z

    move-result v8

    if-eqz v8, :cond_a

    move v8, v4

    goto :goto_4

    :cond_a
    move v8, v1

    :goto_4
    add-int/2addr v0, v8

    .line 253
    .end local v7    # "types_of_local":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 256
    :cond_b
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v5, v2

    :goto_5
    if-ge v3, v5, :cond_d

    aget-object v6, v2, v3

    .line 257
    .local v6, "types_of_stack_item":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;->hasIndex()Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v4

    goto :goto_6

    :cond_c
    move v7, v1

    :goto_6
    add-int/2addr v0, v7

    .line 256
    .end local v6    # "types_of_stack_item":Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 259
    :cond_d
    return v0

    .line 261
    .end local v0    # "len":I
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid StackMap frame_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberOfLocals()I
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v0, v0

    return v0
.end method

.method public getNumberOfStackItems()I
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v0, v0

    return v0
.end method

.method public getTypesOfLocals()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    return-object v0
.end method

.method public getTypesOfStackItems()[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    return-object v0
.end method

.method public setByteCodeOffset(I)V
    .locals 5
    .param p1, "new_offset"    # I

    .line 290
    if-ltz p1, :cond_9

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_9

    .line 294
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    const/16 v1, 0xfb

    const/16 v2, 0x3f

    if-ltz v0, :cond_1

    if-gt v0, v2, :cond_1

    .line 296
    if-le p1, v2, :cond_0

    .line 297
    iput v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    goto :goto_0

    .line 299
    :cond_0
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    goto :goto_0

    .line 301
    :cond_1
    const/16 v3, 0xf7

    const/16 v4, 0x40

    if-lt v0, v4, :cond_3

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_3

    .line 303
    if-le p1, v2, :cond_2

    .line 304
    iput v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    goto :goto_0

    .line 306
    :cond_2
    add-int/lit8 v0, p1, 0x40

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    goto :goto_0

    .line 308
    :cond_3
    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 309
    :cond_4
    const/16 v2, 0xf8

    if-lt v0, v2, :cond_5

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_5

    goto :goto_0

    .line 311
    :cond_5
    if-ne v0, v1, :cond_6

    goto :goto_0

    .line 312
    :cond_6
    const/16 v1, 0xfc

    if-lt v0, v1, :cond_7

    const/16 v1, 0xfe

    if-gt v0, v1, :cond_7

    goto :goto_0

    .line 314
    :cond_7
    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    .line 318
    :goto_0
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    .line 319
    return-void

    .line 316
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid StackMap frame_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid StackMap offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 435
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 436
    return-void
.end method

.method public setFrameType(I)V
    .locals 2
    .param p1, "f"    # I

    .line 267
    if-ltz p1, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    .line 268
    add-int/lit8 v0, p1, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    goto :goto_0

    .line 269
    :cond_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 271
    add-int/lit8 v0, p1, -0x40

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    goto :goto_0

    .line 272
    :cond_1
    const/16 v0, 0xf7

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 273
    :cond_2
    const/16 v0, 0xf8

    if-lt p1, v0, :cond_3

    const/16 v0, 0xfa

    if-gt p1, v0, :cond_3

    goto :goto_0

    .line 274
    :cond_3
    const/16 v0, 0xfb

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 275
    :cond_4
    const/16 v0, 0xfc

    if-lt p1, v0, :cond_5

    const/16 v0, 0xfe

    if-gt p1, v0, :cond_5

    goto :goto_0

    .line 276
    :cond_5
    const/16 v0, 0xff

    if-ne p1, v0, :cond_6

    .line 280
    :goto_0
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    .line 281
    return-void

    .line 278
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid StackMap frame_type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumberOfLocals(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    return-void
.end method

.method public setNumberOfStackItems(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    return-void
.end method

.method public setTypesOfLocals([Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)V
    .locals 1
    .param p1, "types"    # [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 354
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 355
    return-void
.end method

.method public setTypesOfStackItems([Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;)V
    .locals 1
    .param p1, "types"    # [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 378
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    .line 379
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 184
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    const-string v3, ")"

    if-ltz v2, :cond_0

    const/16 v4, 0x3f

    if-gt v2, v4, :cond_0

    .line 186
    const-string v1, "SAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 187
    :cond_0
    if-lt v2, v1, :cond_1

    const/16 v1, 0x7f

    if-gt v2, v1, :cond_1

    .line 189
    const-string v1, "SAME_LOCALS_1_STACK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 190
    :cond_1
    const/16 v1, 0xf7

    if-ne v2, v1, :cond_2

    .line 191
    const-string v1, "SAME_LOCALS_1_STACK_EXTENDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 192
    :cond_2
    const/16 v1, 0xf8

    const/16 v4, 0xfb

    if-lt v2, v1, :cond_3

    const/16 v1, 0xfa

    if-gt v2, v1, :cond_3

    .line 193
    const-string v1, "CHOP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :cond_3
    if-ne v2, v4, :cond_4

    .line 195
    const-string v1, "SAME_EXTENDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :cond_4
    const/16 v1, 0xfc

    if-lt v2, v1, :cond_5

    const/16 v1, 0xfe

    if-gt v2, v1, :cond_5

    .line 197
    const-string v1, "APPEND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :cond_5
    const/16 v1, 0xff

    if-ne v2, v1, :cond_6

    .line 199
    const-string v1, "FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    :cond_6
    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->frame_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :goto_0
    const-string v1, ", offset delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v1, v1

    const-string v2, ", "

    const-string v4, "}"

    if-lez v1, :cond_9

    .line 205
    const-string v1, ", locals={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v6, v5

    if-ge v1, v6, :cond_8

    .line 207
    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_locals:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_9
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 215
    const-string v1, ", stack items={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v6, v5

    if-ge v1, v6, :cond_b

    .line 217
    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->types_of_stack_items:[Lorg/checkerframework/org/apache/bcel/classfile/StackMapType;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 222
    .end local v1    # "i":I
    :cond_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateByteCodeOffset(I)V
    .locals 1
    .param p1, "delta"    # I

    .line 330
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->byte_code_offset:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/StackMapEntry;->setByteCodeOffset(I)V

    .line 331
    return-void
.end method
