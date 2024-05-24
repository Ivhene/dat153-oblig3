.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;


# static fields
.field private static final readers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected length:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected name_index:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected tag:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readers:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "tag"    # B
    .param p2, "name_index"    # I
    .param p3, "length"    # I
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-byte p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->tag:B

    .line 81
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->name_index:I

    .line 82
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->length:I

    .line 83
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 84
    return-void
.end method

.method public static addAttributeReader(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/classfile/AttributeReader;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/checkerframework/org/apache/bcel/classfile/AttributeReader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public static addAttributeReader(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/classfile/UnknownAttributeReader;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/checkerframework/org/apache/bcel/classfile/UnknownAttributeReader;

    .line 137
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public static readAttribute(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 8
    .param p0, "file"    # Ljava/io/DataInput;
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 188
    const/4 v0, -0x1

    .line 190
    .local v0, "tag":B
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 191
    .local v1, "name_index":I
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 192
    .local v2, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 198
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":B
    :goto_0
    const/16 v6, 0x16

    if-ge v5, v6, :cond_1

    .line 200
    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/Const;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    move v0, v5

    .line 203
    goto :goto_1

    .line 198
    :cond_0
    add-int/lit8 v6, v5, 0x1

    int-to-byte v5, v6

    goto :goto_0

    .line 208
    .end local v5    # "i":B
    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 268
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized attribute type tag parsed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    :pswitch_0
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/MethodParameters;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 263
    :pswitch_1
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 261
    :pswitch_2
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/StackMap;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 257
    :pswitch_3
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 255
    :pswitch_4
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTypeTable;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 253
    :pswitch_5
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationDefault;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 251
    :pswitch_6
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleParameterAnnotations;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleParameterAnnotations;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 249
    :pswitch_7
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleParameterAnnotations;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleParameterAnnotations;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 247
    :pswitch_8
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 245
    :pswitch_9
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 242
    :pswitch_a
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Warning: Obsolete StackMap attribute ignored."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 238
    :pswitch_b
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/Signature;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Signature;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 236
    :pswitch_c
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/PMGClass;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 234
    :pswitch_d
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 232
    :pswitch_e
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 230
    :pswitch_f
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 228
    :pswitch_10
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 226
    :pswitch_11
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 224
    :pswitch_12
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 222
    :pswitch_13
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 218
    :pswitch_14
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 220
    :pswitch_15
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    invoke-direct {v5, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v5

    .line 211
    :pswitch_16
    sget-object v5, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readers:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 212
    .local v5, "r":Ljava/lang/Object;
    instance-of v6, v5, Lorg/checkerframework/org/apache/bcel/classfile/UnknownAttributeReader;

    if-eqz v6, :cond_2

    .line 214
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/UnknownAttributeReader;

    invoke-interface {v6, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/UnknownAttributeReader;->createAttribute(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v6

    return-object v6

    .line 216
    :cond_2
    new-instance v6, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;

    invoke-direct {v6, v1, v4, p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v6

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readAttribute(Ljava/io/DataInputStream;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p0, "file"    # Ljava/io/DataInputStream;
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 167
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readAttribute(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public static removeAttributeReader(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 350
    const/4 v0, 0x0

    .line 353
    .local v0, "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 358
    nop

    .line 359
    return-object v0

    .line 355
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Clone Not Supported"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 107
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 108
    return-void
.end method

.method public final getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 287
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->length:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 278
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->name_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 279
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getNameIndex()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 312
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->name_index:I

    return v0
.end method

.method public final getTag()B
    .locals 1

    .line 320
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->tag:B

    return v0
.end method

.method public final setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 338
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 339
    return-void
.end method

.method public final setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 295
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->length:I

    .line 296
    return-void
.end method

.method public final setNameIndex(I)V
    .locals 0
    .param p1, "name_index"    # I

    .line 303
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->name_index:I

    .line 304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 373
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->tag:B

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Const;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
