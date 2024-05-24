.class public Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
.super Ljava/lang/Object;
.source "AnnotationEntryGen.java"


# instance fields
.field private final cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field private evs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;",
            ">;"
        }
    .end annotation
.end field

.field private isRuntimeVisible:Z

.field private typeIndex:I


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "copyPoolEntries"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible:Z

    .line 60
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 61
    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->getAnnotationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->typeIndex:I

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->getAnnotationTypeIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->typeIndex:I

    .line 66
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->isRuntimeVisible()Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible:Z

    .line 67
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->getElementValuePairs()[Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->copyValues([Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    .line 68
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible:Z

    .line 80
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;Ljava/util/List;ZLorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .param p3, "vis"    # Z
    .param p4, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/generic/ObjectType;",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;",
            ">;Z",
            "Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;",
            ")V"
        }
    .end annotation

    .line 97
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible:Z

    .line 98
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 99
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->typeIndex:I

    .line 100
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    .line 101
    iput-boolean p3, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible:Z

    .line 102
    return-void
.end method

.method private copyValues([Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)Ljava/util/List;
    .locals 5
    .param p1, "in"    # [Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "copyPoolEntries"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;",
            "Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 74
    .local v3, "nvp":Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;

    invoke-direct {v4, v3, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v3    # "nvp":Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-object v0
.end method

.method static getAnnotationAttributes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 14
    .param p0, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p1, "annotationEntryGens"    # [Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 201
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 202
    new-array v0, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 207
    .local v0, "countVisible":I
    const/4 v2, 0x0

    .line 210
    .local v2, "countInvisible":I
    :try_start_0
    array-length v3, p1

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 211
    .local v5, "a":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 210
    .end local v5    # "a":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    .local v3, "rvaBytes":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v4, "riaBytes":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v5, "rvaDos":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 220
    .local v6, "riaDos":Ljava/io/DataOutputStream;
    nop

    .line 223
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 224
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 227
    array-length v7, p1

    :goto_2
    if-ge v1, v7, :cond_4

    aget-object v8, p1, v1

    .line 228
    .local v8, "a":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 229
    invoke-virtual {v8, v5}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->dump(Ljava/io/DataOutputStream;)V

    goto :goto_3

    .line 231
    :cond_3
    invoke-virtual {v8, v6}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->dump(Ljava/io/DataOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    .end local v8    # "a":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 234
    :cond_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v6    # "riaDos":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 236
    .end local v5    # "rvaDos":Ljava/io/DataOutputStream;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 237
    .local v1, "rvaData":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 239
    .local v5, "riaData":[B
    const/4 v6, -0x1

    .line 240
    .local v6, "rvaIndex":I
    const/4 v7, -0x1

    .line 242
    .local v7, "riaIndex":I
    array-length v8, v1

    const/4 v9, 0x2

    if-le v8, v9, :cond_5

    .line 243
    const-string v8, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v8

    move v6, v8

    .line 245
    :cond_5
    array-length v8, v5

    if-le v8, v9, :cond_6

    .line 246
    const-string v8, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 249
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v8, "newAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/classfile/Attribute;>;"
    array-length v10, v1

    if-le v10, v9, :cond_7

    .line 251
    new-instance v10, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;

    array-length v11, v1

    new-instance v12, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 253
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v13

    invoke-direct {v10, v6, v11, v12, v13}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 251
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_7
    array-length v10, v5

    if-le v10, v9, :cond_8

    .line 256
    new-instance v9, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;

    array-length v10, v5

    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v12

    invoke-direct {v9, v7, v10, v11, v12}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 256
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v9

    .line 220
    .end local v1    # "rvaData":[B
    .end local v7    # "riaIndex":I
    .end local v8    # "newAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/classfile/Attribute;>;"
    .local v5, "rvaDos":Ljava/io/DataOutputStream;
    .local v6, "riaDos":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "countVisible":I
    .end local v2    # "countInvisible":I
    .end local v3    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "rvaDos":Ljava/io/DataOutputStream;
    .end local v6    # "riaDos":Ljava/io/DataOutputStream;
    .end local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local p1    # "annotationEntryGens":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    .restart local v0    # "countVisible":I
    .restart local v2    # "countInvisible":I
    .restart local v3    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "rvaDos":Ljava/io/DataOutputStream;
    .restart local v6    # "riaDos":Ljava/io/DataOutputStream;
    .restart local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .restart local p1    # "annotationEntryGens":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v8

    :try_start_7
    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "countVisible":I
    .end local v2    # "countInvisible":I
    .end local v3    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "rvaDos":Ljava/io/DataOutputStream;
    .end local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local p1    # "annotationEntryGens":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :goto_4
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 220
    .end local v6    # "riaDos":Ljava/io/DataOutputStream;
    .restart local v0    # "countVisible":I
    .restart local v2    # "countInvisible":I
    .restart local v3    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "rvaDos":Ljava/io/DataOutputStream;
    .restart local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .restart local p1    # "annotationEntryGens":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :catchall_3
    move-exception v1

    .end local v0    # "countVisible":I
    .end local v2    # "countInvisible":I
    .end local v3    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "rvaDos":Ljava/io/DataOutputStream;
    .end local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local p1    # "annotationEntryGens":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 234
    .restart local v0    # "countVisible":I
    .restart local v2    # "countInvisible":I
    .restart local v3    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "rvaDos":Ljava/io/DataOutputStream;
    .restart local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .restart local p1    # "annotationEntryGens":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :catchall_4
    move-exception v6

    :try_start_9
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v7

    :try_start_a
    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local p1    # "annotationEntryGens":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :goto_5
    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 262
    .end local v0    # "countVisible":I
    .end local v2    # "countInvisible":I
    .end local v3    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "rvaDos":Ljava/io/DataOutputStream;
    .restart local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .restart local p1    # "annotationEntryGens":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "IOException whilst processing annotations"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method static getParameterAnnotationAttributes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;[Ljava/util/List;)[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 17
    .param p0, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;",
            "[",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;",
            ">;)[",
            "Lorg/checkerframework/org/apache/bcel/classfile/Attribute;"
        }
    .end annotation

    .line 279
    .local p1, "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    array-length v0, v2

    new-array v3, v0, [I

    .line 280
    .local v3, "visCount":[I
    const/4 v0, 0x0

    .line 281
    .local v0, "totalVisCount":I
    array-length v4, v2

    new-array v4, v4, [I

    .line 282
    .local v4, "invisCount":[I
    const/4 v5, 0x0

    .line 284
    .local v5, "totalInvisCount":I
    const/4 v6, 0x0

    move/from16 v16, v5

    move v5, v0

    move v0, v6

    move/from16 v6, v16

    .local v0, "i":I
    .local v5, "totalVisCount":I
    .local v6, "totalInvisCount":I
    :goto_0
    :try_start_0
    array-length v7, v2

    if-ge v0, v7, :cond_2

    .line 285
    aget-object v7, v2, v0

    if-eqz v7, :cond_1

    .line 286
    aget-object v7, v2, v0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 287
    .local v8, "element":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 288
    aget v9, v3, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v3, v0

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 291
    :cond_0
    aget v9, v4, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v4, v0

    .line 292
    add-int/lit8 v6, v6, 0x1

    .line 294
    .end local v8    # "element":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :goto_2
    goto :goto_1

    .line 284
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v0

    .line 299
    .local v7, "rvaBytes":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 300
    .local v8, "rvaDos":Ljava/io/DataOutputStream;
    :try_start_1
    array-length v0, v2

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 301
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v9, v2

    if-ge v0, v9, :cond_5

    .line 302
    aget v9, v3, v0

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 303
    aget v9, v3, v0

    if-lez v9, :cond_4

    .line 304
    aget-object v9, v2, v0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 305
    .local v10, "element":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 306
    invoke-virtual {v10, v8}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->dump(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 308
    .end local v10    # "element":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :cond_3
    goto :goto_4

    .line 301
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 311
    .end local v0    # "i":I
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 313
    .end local v8    # "rvaDos":Ljava/io/DataOutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v8, v0

    .line 314
    .local v8, "riaBytes":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v0

    .line 315
    .local v9, "riaDos":Ljava/io/DataOutputStream;
    :try_start_3
    array-length v0, v2

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 316
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    array-length v10, v2

    if-ge v0, v10, :cond_8

    .line 317
    aget v10, v4, v0

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 318
    aget v10, v4, v0

    if-lez v10, :cond_7

    .line 319
    aget-object v10, v2, v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 320
    .local v11, "element":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible()Z

    move-result v12

    if-nez v12, :cond_6

    .line 321
    invoke-virtual {v11, v9}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->dump(Ljava/io/DataOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    .end local v11    # "element":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    :cond_6
    goto :goto_6

    .line 316
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 326
    .end local v0    # "i":I
    :cond_8
    :try_start_4
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 327
    .end local v9    # "riaDos":Ljava/io/DataOutputStream;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 328
    .local v0, "rvaData":[B
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 329
    .local v9, "riaData":[B
    const/4 v10, -0x1

    .line 330
    .local v10, "rvaIndex":I
    const/4 v11, -0x1

    .line 331
    .local v11, "riaIndex":I
    if-lez v5, :cond_9

    .line 332
    const-string v12, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v12}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v12

    move v10, v12

    .line 334
    :cond_9
    if-lez v6, :cond_a

    .line 335
    const-string v12, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v12}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v12

    move v11, v12

    .line 337
    :cond_a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v12, "newAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/classfile/Attribute;>;"
    if-lez v5, :cond_b

    .line 339
    new-instance v13, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleParameterAnnotations;

    array-length v14, v0

    new-instance v15, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v1

    invoke-direct {v13, v10, v14, v15, v1}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleParameterAnnotations;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 340
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_b
    if-lez v6, :cond_c

    .line 344
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleParameterAnnotations;

    array-length v13, v9

    new-instance v14, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v15

    invoke-direct {v1, v11, v13, v14, v15}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleParameterAnnotations;-><init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 345
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    .line 314
    .end local v0    # "rvaData":[B
    .end local v10    # "rvaIndex":I
    .end local v11    # "riaIndex":I
    .end local v12    # "newAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/classfile/Attribute;>;"
    .local v9, "riaDos":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v3    # "visCount":[I
    .end local v4    # "invisCount":[I
    .end local v5    # "totalVisCount":I
    .end local v6    # "totalInvisCount":I
    .end local v7    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "riaDos":Ljava/io/DataOutputStream;
    .end local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local p1    # "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 326
    .restart local v3    # "visCount":[I
    .restart local v4    # "invisCount":[I
    .restart local v5    # "totalVisCount":I
    .restart local v6    # "totalInvisCount":I
    .restart local v7    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "riaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "riaDos":Ljava/io/DataOutputStream;
    .restart local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .restart local p1    # "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_6
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v11, v0

    :try_start_7
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "visCount":[I
    .end local v4    # "invisCount":[I
    .end local v5    # "totalVisCount":I
    .end local v6    # "totalInvisCount":I
    .end local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local p1    # "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :goto_7
    throw v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 299
    .end local v9    # "riaDos":Ljava/io/DataOutputStream;
    .restart local v3    # "visCount":[I
    .restart local v4    # "invisCount":[I
    .restart local v5    # "totalVisCount":I
    .restart local v6    # "totalInvisCount":I
    .local v8, "rvaDos":Ljava/io/DataOutputStream;
    .restart local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .restart local p1    # "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :catchall_3
    move-exception v0

    move-object v1, v0

    .end local v3    # "visCount":[I
    .end local v4    # "invisCount":[I
    .end local v5    # "totalVisCount":I
    .end local v6    # "totalInvisCount":I
    .end local v7    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "rvaDos":Ljava/io/DataOutputStream;
    .end local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local p1    # "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 311
    .restart local v3    # "visCount":[I
    .restart local v4    # "invisCount":[I
    .restart local v5    # "totalVisCount":I
    .restart local v6    # "totalInvisCount":I
    .restart local v7    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "rvaDos":Ljava/io/DataOutputStream;
    .restart local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .restart local p1    # "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :catchall_4
    move-exception v0

    move-object v9, v0

    :try_start_9
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v10, v0

    :try_start_a
    invoke-virtual {v1, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "visCount":[I
    .end local v4    # "invisCount":[I
    .end local v5    # "totalVisCount":I
    .end local v6    # "totalInvisCount":I
    .end local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local p1    # "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :goto_8
    throw v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 349
    .end local v7    # "rvaBytes":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "rvaDos":Ljava/io/DataOutputStream;
    .restart local v3    # "visCount":[I
    .restart local v4    # "invisCount":[I
    .restart local v5    # "totalVisCount":I
    .restart local v6    # "totalInvisCount":I
    .restart local p0    # "cp":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .restart local p1    # "vec":[Ljava/util/List;, "[Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 351
    const-string v7, "IOException whilst processing parameter annotations"

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 354
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private isRuntimeVisible(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 184
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible:Z

    .line 185
    return-void
.end method

.method public static read(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    .locals 6
    .param p0, "dis"    # Ljava/io/DataInput;
    .param p1, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 107
    .local v0, "a":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->typeIndex:I

    .line 108
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 109
    .local v1, "elemValuePairCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 110
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    .line 111
    .local v3, "nidx":I
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;

    .line 112
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->readElementValue(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;

    move-result-object v5

    invoke-direct {v4, v3, v5, p1}, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ElementValueGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 111
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->addElementNameValuePair(Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;)V

    .line 109
    .end local v3    # "nidx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_0
    invoke-direct {v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible(Z)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public addElementNameValuePair(Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;)V
    .locals 1
    .param p1, "evp"    # Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;

    .line 127
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->typeIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 121
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;

    .line 122
    .local v1, "envp":Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->dump(Ljava/io/DataOutputStream;)V

    .line 123
    .end local v1    # "envp":Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public getAnnotation()Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .locals 4

    .line 87
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->typeIndex:I

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    iget-boolean v3, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)V

    .line 89
    .local v0, "a":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;

    .line 90
    .local v2, "element":Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;->getElementNameValuePair()Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->addElementNameValuePair(Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;)V

    .line 91
    .end local v2    # "element":Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;
    goto :goto_0

    .line 92
    :cond_0
    return-object v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 134
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->typeIndex:I

    return v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->getTypeSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeSignature()Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->cpool:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->typeIndex:I

    .line 140
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 141
    .local v0, "utf8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/ElementValuePairGen;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    return-object v0
.end method

.method public isRuntimeVisible()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->isRuntimeVisible:Z

    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 174
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 176
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "AnnotationGen:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 161
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->evs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 163
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_1
    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
