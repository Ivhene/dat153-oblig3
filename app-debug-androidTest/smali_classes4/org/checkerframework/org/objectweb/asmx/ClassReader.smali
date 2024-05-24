.class public Lorg/checkerframework/org/objectweb/asmx/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ANNOTATIONS:Z = true

.field public static final EXPAND_FRAMES:I = 0x8

.field static final FRAMES:Z = true

.field static final RESIZE:Z = true

.field static final SIGNATURES:Z = true

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4

.field static final WRITER:Z = true


# instance fields
.field public final b:[B

.field bootstrapMethods:[I

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-static {p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>([B)V

    .line 377
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 388
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 163
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>([BII)V

    .line 164
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    .line 176
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    .line 177
    array-length v0, v0

    .line 178
    .local v0, "ll":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->strings:[Ljava/lang/String;

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "max":I
    add-int/lit8 v2, p2, 0xa

    .line 181
    .local v2, "index":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 182
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v4, v3

    .line 183
    aget-byte v4, p1, v2

    .line 185
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 213
    :pswitch_0
    const/4 v5, 0x3

    .local v5, "size":I
    goto :goto_1

    .line 207
    .end local v5    # "size":I
    :pswitch_1
    const/4 v5, 0x4

    .line 208
    .restart local v5    # "size":I
    goto :goto_1

    .line 197
    .end local v5    # "size":I
    :pswitch_2
    const/16 v5, 0x9

    .line 198
    .restart local v5    # "size":I
    add-int/lit8 v3, v3, 0x1

    .line 199
    goto :goto_1

    .line 193
    .end local v5    # "size":I
    :pswitch_3
    const/4 v5, 0x5

    .line 194
    .restart local v5    # "size":I
    goto :goto_1

    .line 201
    .end local v5    # "size":I
    :pswitch_4
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    .line 202
    .restart local v5    # "size":I
    if-le v5, v1, :cond_0

    .line 203
    move v1, v5

    .line 216
    :cond_0
    :goto_1
    add-int/2addr v2, v5

    .line 181
    .end local v4    # "tag":I
    .end local v5    # "size":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "i":I
    :cond_1
    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->maxStringLength:I

    .line 220
    iput v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    .line 221
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private copyBootstrapMethods(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[Lorg/checkerframework/org/objectweb/asmx/Item;[C)V
    .locals 10
    .param p1, "classWriter"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "items"    # [Lorg/checkerframework/org/objectweb/asmx/Item;
    .param p3, "c"    # [C

    .line 333
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->getAttributes()I

    move-result v0

    .line 334
    .local v0, "u":I
    const/4 v1, 0x0

    .line 335
    .local v1, "found":Z
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 336
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "attrName":Ljava/lang/String;
    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    const/4 v1, 0x1

    .line 339
    goto :goto_1

    .line 341
    :cond_0
    add-int/lit8 v4, v0, 0x4

    invoke-virtual {p0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v0, v4

    .line 335
    .end local v3    # "attrName":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 343
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 344
    return-void

    .line 347
    :cond_2
    add-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 348
    .local v2, "boostrapMethodCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    add-int/lit8 v4, v0, 0xa

    .local v4, "v":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 349
    sub-int v5, v4, v0

    add-int/lit8 v5, v5, -0xa

    .line 350
    .local v5, "position":I
    invoke-virtual {p0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {p0, v6, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 351
    .local v6, "hashCode":I
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .local v7, "k":I
    :goto_3
    if-lez v7, :cond_3

    .line 352
    add-int/lit8 v8, v4, 0x4

    invoke-virtual {p0, v8}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v8

    invoke-virtual {p0, v8, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    xor-int/2addr v6, v8

    .line 353
    add-int/lit8 v4, v4, 0x2

    .line 351
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 355
    .end local v7    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x4

    .line 356
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v7, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(I)V

    .line 357
    .local v7, "item":Lorg/checkerframework/org/objectweb/asmx/Item;
    const v8, 0x7fffffff

    and-int/2addr v8, v6

    invoke-virtual {v7, v5, v8}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(II)V

    .line 358
    iget v8, v7, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    array-length v9, p2

    rem-int/2addr v8, v9

    .line 359
    .local v8, "index":I
    aget-object v9, p2, v8

    iput-object v9, v7, Lorg/checkerframework/org/objectweb/asmx/Item;->next:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 360
    aput-object v7, p2, v8

    .line 348
    .end local v5    # "position":I
    .end local v6    # "hashCode":I
    .end local v7    # "item":Lorg/checkerframework/org/objectweb/asmx/Item;
    .end local v8    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 362
    .end local v3    # "j":I
    .end local v4    # "v":I
    :cond_4
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    .line 363
    .local v3, "attrSize":I
    new-instance v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    add-int/lit8 v5, v3, 0x3e

    invoke-direct {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>(I)V

    .line 364
    .local v4, "bootstrapMethods":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    add-int/lit8 v6, v0, 0xa

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v4, v5, v6, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 365
    iput v2, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethodsCount:I

    .line 366
    iput-object v4, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 367
    return-void
.end method

.method private getAttributes()I
    .locals 4

    .line 1939
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 1941
    .local v1, "u":I
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 1942
    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_0

    .line 1943
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 1942
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1945
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 1941
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1947
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 1948
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .restart local v0    # "i":I
    :goto_2
    if-lez v0, :cond_3

    .line 1949
    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .restart local v2    # "j":I
    :goto_3
    if-lez v2, :cond_2

    .line 1950
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 1949
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1952
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x8

    .line 1948
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1955
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v1, 0x2

    return v0
.end method

.method private readAnnotationValue(I[CLjava/lang/String;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I
    .locals 7
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "av"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 1795
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "v":I
    .local v0, "v":I
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_b

    .line 1824
    :sswitch_0
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1825
    add-int/lit8 v0, v0, 0x2

    .line 1826
    goto/16 :goto_b

    .line 1828
    :sswitch_1
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, p3, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    add-int/lit8 v0, v0, 0x4

    .line 1830
    goto/16 :goto_b

    .line 1832
    :sswitch_2
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1833
    add-int/lit8 v0, v0, 0x2

    .line 1834
    goto/16 :goto_b

    .line 1841
    :sswitch_3
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result p1

    .line 1842
    .local p1, "size":I
    add-int/lit8 v0, v0, 0x2

    .line 1843
    if-nez p1, :cond_0

    .line 1844
    invoke-interface {p4, p3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 1845
    return v0

    .line 1847
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "v":I
    .local v3, "v":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1921
    add-int/lit8 v3, v3, -0x1

    .line 1922
    invoke-interface {p4, p3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    .line 1923
    .local v0, "aav":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    move v1, p1

    .local v1, "i":I
    goto/16 :goto_9

    .line 1858
    .end local v0    # "aav":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .end local v1    # "i":I
    :sswitch_4
    new-array v0, p1, [Z

    .line 1859
    .local v0, "zv":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_2

    .line 1860
    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    aput-boolean v5, v0, v4

    .line 1861
    add-int/lit8 v3, v3, 0x3

    .line 1859
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1863
    :cond_2
    invoke-interface {p4, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1864
    add-int/lit8 v1, v3, -0x1

    .line 1865
    .end local v3    # "v":I
    .local v1, "v":I
    move v0, v1

    goto/16 :goto_b

    .line 1867
    .end local v0    # "zv":[Z
    .end local v1    # "v":I
    .end local v4    # "i":I
    .restart local v3    # "v":I
    :sswitch_5
    new-array v0, p1, [S

    .line 1868
    .local v0, "sv":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 1869
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 1870
    add-int/lit8 v3, v3, 0x3

    .line 1868
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1872
    :cond_3
    invoke-interface {p4, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1873
    add-int/lit8 v2, v3, -0x1

    .line 1874
    .end local v3    # "v":I
    .local v2, "v":I
    move v0, v2

    goto/16 :goto_b

    .line 1894
    .end local v0    # "sv":[S
    .end local v1    # "i":I
    .end local v2    # "v":I
    .restart local v3    # "v":I
    :sswitch_6
    new-array v0, p1, [J

    .line 1895
    .local v0, "lv":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, p1, :cond_4

    .line 1896
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readLong(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 1897
    add-int/lit8 v3, v3, 0x3

    .line 1895
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1899
    :cond_4
    invoke-interface {p4, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1900
    add-int/lit8 v2, v3, -0x1

    .line 1901
    .end local v3    # "v":I
    .restart local v2    # "v":I
    move v0, v2

    goto/16 :goto_b

    .line 1885
    .end local v0    # "lv":[J
    .end local v1    # "i":I
    .end local v2    # "v":I
    .restart local v3    # "v":I
    :sswitch_7
    new-array v0, p1, [I

    .line 1886
    .local v0, "iv":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, p1, :cond_5

    .line 1887
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 1888
    add-int/lit8 v3, v3, 0x3

    .line 1886
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1890
    :cond_5
    invoke-interface {p4, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1891
    add-int/lit8 v2, v3, -0x1

    .line 1892
    .end local v3    # "v":I
    .restart local v2    # "v":I
    move v0, v2

    goto/16 :goto_b

    .line 1903
    .end local v0    # "iv":[I
    .end local v1    # "i":I
    .end local v2    # "v":I
    .restart local v3    # "v":I
    :sswitch_8
    new-array v0, p1, [F

    .line 1904
    .local v0, "fv":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, p1, :cond_6

    .line 1905
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    .line 1906
    add-int/lit8 v3, v3, 0x3

    .line 1904
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1908
    :cond_6
    invoke-interface {p4, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1909
    add-int/lit8 v2, v3, -0x1

    .line 1910
    .end local v3    # "v":I
    .restart local v2    # "v":I
    move v0, v2

    goto/16 :goto_b

    .line 1912
    .end local v0    # "fv":[F
    .end local v1    # "i":I
    .end local v2    # "v":I
    .restart local v3    # "v":I
    :sswitch_9
    new-array v0, p1, [D

    .line 1913
    .local v0, "dv":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, p1, :cond_7

    .line 1914
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 1915
    add-int/lit8 v3, v3, 0x3

    .line 1913
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1917
    :cond_7
    invoke-interface {p4, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1918
    add-int/lit8 v2, v3, -0x1

    .line 1919
    .end local v3    # "v":I
    .restart local v2    # "v":I
    move v0, v2

    goto/16 :goto_b

    .line 1876
    .end local v0    # "dv":[D
    .end local v1    # "i":I
    .end local v2    # "v":I
    .restart local v3    # "v":I
    :sswitch_a
    new-array v0, p1, [C

    .line 1877
    .local v0, "cv":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, p1, :cond_8

    .line 1878
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1879
    add-int/lit8 v3, v3, 0x3

    .line 1877
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1881
    :cond_8
    invoke-interface {p4, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1882
    add-int/lit8 v2, v3, -0x1

    .line 1883
    .end local v3    # "v":I
    .restart local v2    # "v":I
    move v0, v2

    goto/16 :goto_b

    .line 1849
    .end local v0    # "cv":[C
    .end local v1    # "i":I
    .end local v2    # "v":I
    .restart local v3    # "v":I
    :sswitch_b
    new-array v0, p1, [B

    .line 1850
    .local v0, "bv":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, p1, :cond_9

    .line 1851
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1852
    add-int/lit8 v3, v3, 0x3

    .line 1850
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1854
    :cond_9
    invoke-interface {p4, p3, v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1855
    add-int/lit8 v2, v3, -0x1

    .line 1856
    .end local v3    # "v":I
    .restart local v2    # "v":I
    move v0, v2

    goto/16 :goto_b

    .line 1923
    .end local v2    # "v":I
    .local v0, "aav":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .restart local v3    # "v":I
    :goto_9
    if-lez v1, :cond_a

    .line 1924
    const/4 v2, 0x0

    invoke-direct {p0, v3, p2, v2, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    move-result v3

    .line 1923
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1926
    :cond_a
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    move v0, v3

    goto/16 :goto_b

    .line 1809
    .end local v1    # "i":I
    .end local v3    # "v":I
    .end local p1    # "size":I
    .local v0, "v":I
    :sswitch_c
    iget-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget p1, p1, v3

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result p1

    if-nez p1, :cond_b

    move v1, v2

    :cond_b
    move p1, v1

    .line 1810
    .local p1, "b":Z
    if-eqz p1, :cond_c

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    invoke-interface {p4, p3, v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1811
    add-int/lit8 v0, v0, 0x2

    .line 1812
    goto :goto_b

    .line 1814
    .end local p1    # "b":Z
    :sswitch_d
    new-instance p1, Ljava/lang/Short;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    .line 1815
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v1

    int-to-short v1, v1

    invoke-direct {p1, v1}, Ljava/lang/Short;-><init>(S)V

    .line 1814
    invoke-interface {p4, p3, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1816
    add-int/lit8 v0, v0, 0x2

    .line 1817
    goto :goto_b

    .line 1800
    :sswitch_e
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1801
    add-int/lit8 v0, v0, 0x2

    .line 1802
    goto :goto_b

    .line 1819
    :sswitch_f
    new-instance p1, Ljava/lang/Character;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    .line 1820
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v1

    int-to-char v1, v1

    invoke-direct {p1, v1}, Ljava/lang/Character;-><init>(C)V

    .line 1819
    invoke-interface {p4, p3, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1821
    add-int/lit8 v0, v0, 0x2

    .line 1822
    goto :goto_b

    .line 1804
    :sswitch_10
    new-instance p1, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    .line 1805
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {p1, v1}, Ljava/lang/Byte;-><init>(B)V

    .line 1804
    invoke-interface {p4, p3, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1806
    add-int/lit8 v0, v0, 0x2

    .line 1807
    goto :goto_b

    .line 1836
    :sswitch_11
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    .line 1837
    .local p1, "desc":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x2

    .line 1838
    invoke-interface {p4, p3, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    move-result v0

    .line 1839
    nop

    .line 1929
    .end local p1    # "desc":Ljava/lang/String;
    :goto_b
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_11
        0x42 -> :sswitch_10
        0x43 -> :sswitch_f
        0x44 -> :sswitch_e
        0x46 -> :sswitch_e
        0x49 -> :sswitch_e
        0x4a -> :sswitch_e
        0x53 -> :sswitch_d
        0x5a -> :sswitch_c
        0x5b -> :sswitch_3
        0x63 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_b
        0x43 -> :sswitch_a
        0x44 -> :sswitch_9
        0x46 -> :sswitch_8
        0x49 -> :sswitch_7
        0x4a -> :sswitch_6
        0x53 -> :sswitch_5
        0x5a -> :sswitch_4
    .end sparse-switch
.end method

.method private readAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I
    .locals 2
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "av"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 1462
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1463
    .local v0, "i":I
    add-int/lit8 p1, p1, 0x2

    .line 1464
    :goto_0
    if-lez v0, :cond_0

    .line 1465
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 1466
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 p1, p1, 0x2

    .line 1467
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    move-result p1

    .line 1464
    .end local v1    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1469
    :cond_0
    invoke-interface {p3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 1470
    return p1
.end method

.method private readAttribute([Lorg/checkerframework/org/objectweb/asmx/Attribute;Ljava/lang/String;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .locals 11
    .param p1, "attrs"    # [Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "buf"    # [C
    .param p6, "codeOff"    # I
    .param p7, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1992
    move-object v0, p1

    move-object v1, p2

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1993
    aget-object v3, v0, v2

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1994
    aget-object v4, v0, v2

    move-object v5, p0

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v3

    return-object v3

    .line 1992
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1997
    .end local v2    # "i":I
    :cond_1
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/Attribute;

    invoke-direct {v3, p2}, Lorg/checkerframework/org/objectweb/asmx/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v2

    return-object v2
.end method

.method private static readClass(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    if-eqz p0, :cond_4

    .line 401
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 402
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 404
    .local v1, "len":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 405
    .local v2, "n":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 406
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 407
    new-array v3, v1, [B

    .line 408
    .local v3, "c":[B
    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    move-object v0, v3

    .line 411
    .end local v3    # "c":[B
    :cond_0
    return-object v0

    .line 413
    :cond_1
    add-int/2addr v1, v2

    .line 414
    array-length v3, v0

    if-ne v1, v3, :cond_3

    .line 415
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 416
    .local v3, "last":I
    if-gez v3, :cond_2

    .line 417
    return-object v0

    .line 419
    :cond_2
    array-length v5, v0

    add-int/lit16 v5, v5, 0x3e8

    new-array v5, v5, [B

    .line 420
    .local v5, "c":[B
    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "len":I
    .local v4, "len":I
    int-to-byte v6, v3

    aput-byte v6, v5, v1

    .line 422
    move-object v0, v5

    move v1, v4

    .line 424
    .end local v2    # "n":I
    .end local v3    # "last":I
    .end local v4    # "len":I
    .end local v5    # "c":[B
    .restart local v1    # "len":I
    :cond_3
    goto :goto_0

    .line 399
    .end local v0    # "b":[B
    .end local v1    # "len":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Class not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readParameterAnnotations(I[CZLorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 5
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "visible"    # Z
    .param p4, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 1431
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "v":I
    .local v1, "v":I
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1432
    .local p1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 1433
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1434
    .local v2, "j":I
    add-int/lit8 v1, v1, 0x2

    .line 1435
    :goto_1
    if-lez v2, :cond_0

    .line 1436
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1437
    .local v3, "desc":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    .line 1438
    invoke-interface {p4, v0, v3, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v4

    .line 1441
    .local v4, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    invoke-direct {p0, v1, p2, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    move-result v1

    .line 1435
    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1432
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private readTypeAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;Z)I
    .locals 6
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MemberVisitor;
    .param p4, "visible"    # Z

    .line 1496
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readTypeAnnotationValuesHelper(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;ZZ)I

    move-result v0

    return v0
.end method

.method private readTypeAnnotationValuesBodies(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;Z)I
    .locals 6
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MemberVisitor;
    .param p4, "visible"    # Z

    .line 1519
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readTypeAnnotationValuesHelper(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;ZZ)I

    move-result v0

    return v0
.end method

.method private readTypeAnnotationValuesHelper(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;ZZ)I
    .locals 20
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MemberVisitor;
    .param p4, "visible"    # Z
    .param p5, "isMethodBody"    # Z

    .line 1553
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v2

    .line 1554
    .local v2, "target_type_value":I
    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    .line 1556
    .end local p1    # "v":I
    .local v4, "v":I
    const/4 v5, 0x0

    .line 1557
    .local v5, "offset":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 1558
    .local v6, "location_length":Ljava/lang/Integer;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    .local v7, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    const/4 v8, 0x0

    .line 1560
    .local v8, "start_pc":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 1561
    .local v9, "length":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 1562
    .local v10, "index":Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 1563
    .local v11, "param_index":Ljava/lang/Integer;
    const/4 v12, 0x0

    .line 1564
    .local v12, "bound_index":Ljava/lang/Integer;
    const/4 v13, 0x0

    .line 1565
    .local v13, "type_index":Ljava/lang/Integer;
    const/4 v14, 0x0

    .line 1566
    .local v14, "exception_index":Ljava/lang/Integer;
    const/4 v15, 0x0

    .line 1568
    .local v15, "table_length":Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sun/tools/javac/code/TargetType;->fromTargetTypeValue(I)Lcom/sun/tools/javac/code/TargetType;

    move-result-object v3

    .line 1570
    .local v3, "target_type":Lcom/sun/tools/javac/code/TargetType;
    sget-object v17, Lorg/checkerframework/org/objectweb/asmx/ClassReader$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1697
    move/from16 v18, v2

    move-object v0, v3

    move-object/from16 p1, v5

    move-object v2, v1

    .end local v2    # "target_type_value":I
    .end local v3    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    .end local v5    # "offset":Ljava/lang/Integer;
    .local v0, "target_type":Lcom/sun/tools/javac/code/TargetType;
    .local v18, "target_type_value":I
    .local p1, "offset":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized target type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1693
    .end local v0    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    .end local v18    # "target_type_value":I
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v2    # "target_type_value":I
    .restart local v3    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    .restart local v5    # "offset":Ljava/lang/Integer;
    :pswitch_0
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1694
    add-int/lit8 v4, v4, 0x1

    .line 1695
    move-object/from16 v17, v6

    goto/16 :goto_1

    .line 1680
    :pswitch_1
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1681
    add-int/lit8 v4, v4, 0x2

    .line 1683
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1684
    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 1685
    move-object/from16 v17, v6

    goto/16 :goto_1

    .line 1662
    :pswitch_2
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1663
    add-int/lit8 v4, v4, 0x2

    .line 1664
    move-object/from16 v17, v6

    goto/16 :goto_1

    .line 1658
    :pswitch_3
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1659
    add-int/lit8 v4, v4, 0x2

    .line 1660
    move-object/from16 v17, v6

    goto/16 :goto_1

    .line 1653
    :pswitch_4
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1654
    move-object/from16 p1, v5

    .end local v5    # "offset":Ljava/lang/Integer;
    .restart local p1    # "offset":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v17, v6

    .end local v6    # "location_length":Ljava/lang/Integer;
    .local v17, "location_length":Ljava/lang/Integer;
    const v6, 0xffff

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v13, v5

    .line 1655
    :cond_0
    add-int/lit8 v4, v4, 0x2

    .line 1656
    move-object/from16 v5, p1

    goto/16 :goto_1

    .line 1641
    .end local v17    # "location_length":Ljava/lang/Integer;
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v5    # "offset":Ljava/lang/Integer;
    .restart local v6    # "location_length":Ljava/lang/Integer;
    :pswitch_5
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    .end local v5    # "offset":Ljava/lang/Integer;
    .end local v6    # "location_length":Ljava/lang/Integer;
    .restart local v17    # "location_length":Ljava/lang/Integer;
    .restart local p1    # "offset":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1642
    add-int/lit8 v4, v4, 0x1

    .line 1643
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1644
    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 1645
    move-object/from16 v5, p1

    goto/16 :goto_1

    .line 1631
    .end local v17    # "location_length":Ljava/lang/Integer;
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v5    # "offset":Ljava/lang/Integer;
    .restart local v6    # "location_length":Ljava/lang/Integer;
    :pswitch_6
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    .end local v5    # "offset":Ljava/lang/Integer;
    .end local v6    # "location_length":Ljava/lang/Integer;
    .restart local v17    # "location_length":Ljava/lang/Integer;
    .restart local p1    # "offset":Ljava/lang/Integer;
    goto :goto_0

    .line 1623
    .end local v17    # "location_length":Ljava/lang/Integer;
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v5    # "offset":Ljava/lang/Integer;
    .restart local v6    # "location_length":Ljava/lang/Integer;
    :pswitch_7
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    .end local v5    # "offset":Ljava/lang/Integer;
    .end local v6    # "location_length":Ljava/lang/Integer;
    .restart local v17    # "location_length":Ljava/lang/Integer;
    .restart local p1    # "offset":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1624
    add-int/lit8 v4, v4, 0x1

    .line 1625
    move-object/from16 v5, p1

    goto :goto_1

    .line 1616
    .end local v17    # "location_length":Ljava/lang/Integer;
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v5    # "offset":Ljava/lang/Integer;
    .restart local v6    # "location_length":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    .end local v5    # "offset":Ljava/lang/Integer;
    .end local v6    # "location_length":Ljava/lang/Integer;
    .restart local v17    # "location_length":Ljava/lang/Integer;
    .restart local p1    # "offset":Ljava/lang/Integer;
    goto :goto_0

    .line 1601
    .end local v17    # "location_length":Ljava/lang/Integer;
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v5    # "offset":Ljava/lang/Integer;
    .restart local v6    # "location_length":Ljava/lang/Integer;
    :pswitch_9
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    .end local v5    # "offset":Ljava/lang/Integer;
    .end local v6    # "location_length":Ljava/lang/Integer;
    .restart local v17    # "location_length":Ljava/lang/Integer;
    .restart local p1    # "offset":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1602
    add-int/lit8 v4, v4, 0x2

    .line 1603
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1604
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1605
    add-int/lit8 v4, v4, 0x2

    .line 1606
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1607
    add-int/lit8 v4, v4, 0x2

    .line 1608
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1609
    add-int/lit8 v4, v4, 0x2

    .line 1610
    move-object/from16 v5, p1

    goto :goto_1

    .line 1603
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1589
    .end local v17    # "location_length":Ljava/lang/Integer;
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v5    # "offset":Ljava/lang/Integer;
    .restart local v6    # "location_length":Ljava/lang/Integer;
    :pswitch_a
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    .line 1703
    .end local v5    # "offset":Ljava/lang/Integer;
    .end local v6    # "location_length":Ljava/lang/Integer;
    .restart local v17    # "location_length":Ljava/lang/Integer;
    .restart local p1    # "offset":Ljava/lang/Integer;
    :goto_0
    move-object/from16 v5, p1

    goto :goto_1

    .line 1581
    .end local v17    # "location_length":Ljava/lang/Integer;
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v5    # "offset":Ljava/lang/Integer;
    .restart local v6    # "location_length":Ljava/lang/Integer;
    :pswitch_b
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    .end local v5    # "offset":Ljava/lang/Integer;
    .end local v6    # "location_length":Ljava/lang/Integer;
    .restart local v17    # "location_length":Ljava/lang/Integer;
    .restart local p1    # "offset":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1582
    .end local p1    # "offset":Ljava/lang/Integer;
    .restart local v5    # "offset":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x2

    .line 1583
    nop

    .line 1703
    :goto_1
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1704
    .end local v17    # "location_length":Ljava/lang/Integer;
    .restart local v6    # "location_length":Ljava/lang/Integer;
    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 1705
    const/16 v16, 0x0

    move-object/from16 p1, v15

    move/from16 v15, v16

    .local v15, "m":I
    .local p1, "table_length":Ljava/lang/Integer;
    :goto_2
    move-object/from16 v16, v3

    .end local v3    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    .local v16, "target_type":Lcom/sun/tools/javac/code/TargetType;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v15, v3, :cond_2

    .line 1706
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v3

    .line 1707
    .local v3, "loctag":I
    move-object/from16 v17, v6

    .end local v6    # "location_length":Ljava/lang/Integer;
    .restart local v17    # "location_length":Ljava/lang/Integer;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v6

    .line 1708
    .local v6, "locarg":I
    add-int/lit8 v4, v4, 0x2

    .line 1709
    move/from16 v18, v4

    .end local v4    # "v":I
    .local v18, "v":I
    invoke-static {v3, v6}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->fromBinary(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    .end local v3    # "loctag":I
    .end local v6    # "locarg":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move/from16 v4, v18

    goto :goto_2

    .end local v17    # "location_length":Ljava/lang/Integer;
    .end local v18    # "v":I
    .restart local v4    # "v":I
    .local v6, "location_length":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v17, v6

    .line 1713
    .end local v6    # "location_length":Ljava/lang/Integer;
    .end local v15    # "m":I
    .restart local v17    # "location_length":Ljava/lang/Integer;
    invoke-virtual {v0, v4, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1714
    .local v3, "desc":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x2

    .line 1715
    const/4 v6, 0x0

    move-object/from16 v15, p3

    move/from16 v1, p4

    invoke-interface {v15, v3, v1, v6}, Lorg/checkerframework/org/objectweb/asmx/MemberVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v6

    .line 1717
    .local v6, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    invoke-interface {v6, v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTargetType(I)V

    .line 1718
    if-eqz v8, :cond_3

    .line 1719
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXStartPc(I)V

    .line 1721
    :cond_3
    if-eqz v9, :cond_4

    .line 1722
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLength(I)V

    .line 1724
    :cond_4
    if-eqz v10, :cond_5

    .line 1725
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXIndex(I)V

    .line 1727
    :cond_5
    if-eqz v5, :cond_6

    .line 1728
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXOffset(I)V

    .line 1730
    :cond_6
    if-eqz v13, :cond_7

    .line 1731
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTypeIndex(I)V

    .line 1733
    :cond_7
    if-eqz v11, :cond_8

    .line 1734
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXParamIndex(I)V

    .line 1736
    :cond_8
    if-eqz v12, :cond_9

    .line 1737
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXBoundIndex(I)V

    .line 1739
    :cond_9
    if-eqz v14, :cond_a

    .line 1740
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXExceptionIndex(I)V

    .line 1742
    :cond_a
    if-eqz v17, :cond_b

    .line 1743
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocationLength(I)V

    .line 1745
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    check-cast v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 1746
    .local v1, "location":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    invoke-interface {v6, v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V

    .line 1747
    .end local v1    # "location":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    move-object/from16 v1, v19

    goto :goto_3

    .line 1749
    :cond_c
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXNameAndArgsSize()V

    .line 1752
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1753
    .local v1, "i":I
    add-int/lit8 v4, v4, 0x2

    .line 1754
    :goto_4
    if-lez v1, :cond_d

    .line 1755
    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, p2

    .end local v2    # "target_type_value":I
    .end local v3    # "desc":Ljava/lang/String;
    .local v18, "target_type_value":I
    .local v19, "desc":Ljava/lang/String;
    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1756
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x2

    .line 1760
    invoke-direct {v0, v4, v2, v3, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    move-result v4

    .line 1754
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_4

    .line 1770
    .end local v18    # "target_type_value":I
    .end local v19    # "desc":Ljava/lang/String;
    .restart local v2    # "target_type_value":I
    .local v3, "desc":Ljava/lang/String;
    :cond_d
    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, p2

    .end local v2    # "target_type_value":I
    .end local v3    # "desc":Ljava/lang/String;
    .restart local v18    # "target_type_value":I
    .restart local v19    # "desc":Ljava/lang/String;
    if-eqz p5, :cond_e

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    move-object/from16 v0, v16

    .end local v16    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    .restart local v0    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    if-eq v0, v3, :cond_f

    goto :goto_5

    .end local v0    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    .restart local v16    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    :cond_e
    move-object/from16 v0, v16

    .line 1771
    .end local v16    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    .restart local v0    # "target_type":Lcom/sun/tools/javac/code/TargetType;
    :goto_5
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1773
    :cond_f
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .locals 9
    .param p1, "index"    # I
    .param p2, "utfLen"    # I
    .param p3, "buf"    # [C

    .line 2114
    add-int v0, p1, p2

    .line 2115
    .local v0, "endIndex":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    .line 2116
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 2118
    .local v2, "strLen":I
    :goto_0
    if-ge p1, v0, :cond_0

    .line 2119
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .local v3, "index":I
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 2120
    .local p1, "c":I
    shr-int/lit8 v4, p1, 0x4

    packed-switch v4, :pswitch_data_0

    .line 2140
    :pswitch_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aget-byte v3, v1, v3

    .line 2141
    .local v3, "d":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aget-byte v4, v1, v4

    .line 2142
    .local v4, "e":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "strLen":I
    .local v6, "strLen":I
    and-int/lit8 v7, p1, 0xf

    shl-int/lit8 v7, v7, 0xc

    and-int/lit8 v8, v3, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    and-int/lit8 v8, v4, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p3, v2

    .line 2144
    move p1, v5

    move v2, v6

    goto :goto_0

    .line 2135
    .end local v4    # "e":I
    .end local v5    # "index":I
    .end local v6    # "strLen":I
    .restart local v2    # "strLen":I
    .local v3, "index":I
    :pswitch_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aget-byte v3, v1, v3

    .line 2136
    .local v3, "d":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "strLen":I
    .local v5, "strLen":I
    and-int/lit8 v6, p1, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, p3, v2

    .line 2137
    move p1, v4

    move v2, v5

    goto :goto_0

    .line 2130
    .end local v4    # "index":I
    .end local v5    # "strLen":I
    .restart local v2    # "strLen":I
    .local v3, "index":I
    :pswitch_2
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "strLen":I
    .local v4, "strLen":I
    int-to-char v5, p1

    aput-char v5, p3, v2

    .line 2131
    move p1, v3

    move v2, v4

    goto :goto_0

    .line 2147
    .end local v3    # "index":I
    .end local v4    # "strLen":I
    .restart local v2    # "strLen":I
    .local p1, "index":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p3, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V
    .locals 1
    .param p1, "classVisitor"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;
    .param p2, "skipDebug"    # Z

    .line 445
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/objectweb/asmx/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;[Lorg/checkerframework/org/objectweb/asmx/Attribute;Z)V

    .line 446
    return-void
.end method

.method public accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;[Lorg/checkerframework/org/objectweb/asmx/Attribute;Z)V
    .locals 66
    .param p1, "classVisitor"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;
    .param p2, "attrs"    # [Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .param p3, "skipDebug"    # Z

    .line 468
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    iget-object v12, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    .line 469
    .local v12, "b":[B
    iget v0, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->maxStringLength:I

    new-array v11, v0, [C

    .line 479
    .local v11, "c":[C
    const/4 v0, 0x0

    .line 480
    .local v0, "anns":I
    const/4 v1, 0x0

    .line 481
    .local v1, "ianns":I
    const/4 v2, 0x0

    .line 482
    .local v2, "xanns":I
    const/4 v3, 0x0

    .line 483
    .local v3, "ixanns":I
    const/4 v4, 0x0

    .line 486
    .local v4, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    iget v5, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    .line 487
    .local v5, "u":I
    invoke-virtual {v8, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 488
    .local v6, "access":I
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {v8, v7, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v16

    .line 489
    .local v16, "name":Ljava/lang/String;
    iget-object v7, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x4

    invoke-virtual {v8, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v7, v7, v9

    .line 490
    .local v7, "v":I
    if-nez v7, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v7, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    .line 491
    .local v14, "superClassName":Ljava/lang/String;
    :goto_0
    add-int/lit8 v9, v5, 0x6

    invoke-virtual {v8, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    .line 493
    .local v9, "implementedItfs":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 494
    .local v17, "w":I
    add-int/lit8 v5, v5, 0x8

    .line 495
    const/16 v18, 0x0

    move/from16 v10, v18

    .local v10, "i":I
    :goto_1
    move/from16 v19, v0

    .end local v0    # "anns":I
    .local v19, "anns":I
    array-length v0, v9

    if-ge v10, v0, :cond_1

    .line 496
    invoke-virtual {v8, v5, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    .line 497
    add-int/lit8 v5, v5, 0x2

    .line 495
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v19

    goto :goto_1

    .line 503
    :cond_1
    move v0, v5

    .line 504
    .end local v7    # "v":I
    .local v0, "v":I
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 505
    .end local v10    # "i":I
    .local v7, "i":I
    add-int/lit8 v0, v0, 0x2

    .line 506
    :goto_2
    if-lez v7, :cond_3

    .line 507
    add-int/lit8 v10, v0, 0x6

    invoke-virtual {v8, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v10

    .line 508
    .local v10, "j":I
    add-int/lit8 v0, v0, 0x8

    .line 509
    :goto_3
    if-lez v10, :cond_2

    .line 510
    move/from16 v20, v1

    .end local v1    # "ianns":I
    .local v20, "ianns":I
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 509
    add-int/lit8 v10, v10, -0x1

    move/from16 v1, v20

    goto :goto_3

    .line 506
    .end local v20    # "ianns":I
    .restart local v1    # "ianns":I
    :cond_2
    move/from16 v20, v1

    .end local v1    # "ianns":I
    .restart local v20    # "ianns":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 513
    .end local v10    # "j":I
    .end local v20    # "ianns":I
    .restart local v1    # "ianns":I
    :cond_3
    move/from16 v20, v1

    .end local v1    # "ianns":I
    .restart local v20    # "ianns":I
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 514
    .end local v7    # "i":I
    .local v1, "i":I
    add-int/lit8 v0, v0, 0x2

    .line 515
    :goto_4
    if-lez v1, :cond_5

    .line 516
    add-int/lit8 v7, v0, 0x6

    invoke-virtual {v8, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 517
    .local v7, "j":I
    add-int/lit8 v0, v0, 0x8

    .line 518
    :goto_5
    if-lez v7, :cond_4

    .line 519
    add-int/lit8 v10, v0, 0x2

    invoke-virtual {v8, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x6

    add-int/2addr v0, v10

    .line 518
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 515
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 523
    .end local v7    # "j":I
    :cond_5
    const/4 v7, 0x0

    .line 524
    .local v7, "signature":Ljava/lang/String;
    const/4 v10, 0x0

    .line 525
    .local v10, "sourceFile":Ljava/lang/String;
    const/16 v21, 0x0

    .line 526
    .local v21, "sourceDebug":Ljava/lang/String;
    const/16 v22, 0x0

    .line 527
    .local v22, "enclosingOwner":Ljava/lang/String;
    const/16 v23, 0x0

    .line 528
    .local v23, "enclosingName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 530
    .local v24, "enclosingDesc":Ljava/lang/String;
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 531
    add-int/lit8 v0, v0, 0x2

    move-object/from16 v64, v10

    move v10, v0

    move-object/from16 v0, v24

    move-object/from16 v24, v7

    move-object v7, v4

    move/from16 v4, v17

    move/from16 v17, v1

    move-object/from16 v1, v23

    move/from16 v23, v5

    move-object/from16 v5, v64

    move-object/from16 v65, v21

    move/from16 v21, v2

    move-object/from16 v2, v22

    move/from16 v22, v3

    move-object/from16 v3, v65

    .line 532
    .local v0, "enclosingDesc":Ljava/lang/String;
    .local v1, "enclosingName":Ljava/lang/String;
    .local v2, "enclosingOwner":Ljava/lang/String;
    .local v3, "sourceDebug":Ljava/lang/String;
    .local v4, "w":I
    .local v5, "sourceFile":Ljava/lang/String;
    .local v7, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v10, "v":I
    .local v17, "i":I
    .local v21, "xanns":I
    .local v22, "ixanns":I
    .local v23, "u":I
    .local v24, "signature":Ljava/lang/String;
    :goto_6
    move-object/from16 v25, v7

    .end local v7    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v25, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    const-string v7, "Enum"

    move-object/from16 v26, v5

    .end local v5    # "sourceFile":Ljava/lang/String;
    .local v26, "sourceFile":Ljava/lang/String;
    const-string v5, "RuntimeInvisibleAnnotations"

    move/from16 v27, v4

    .end local v4    # "w":I
    .local v27, "w":I
    const-string v4, "RuntimeVisibleAnnotations"

    move-object/from16 v28, v3

    .end local v3    # "sourceDebug":Ljava/lang/String;
    .local v28, "sourceDebug":Ljava/lang/String;
    const-string v3, "Signature"

    const/high16 v29, 0x20000

    move-object/from16 v30, v2

    .end local v2    # "enclosingOwner":Ljava/lang/String;
    .local v30, "enclosingOwner":Ljava/lang/String;
    const-string v2, "Synthetic"

    move-object/from16 v31, v1

    .end local v1    # "enclosingName":Ljava/lang/String;
    .local v31, "enclosingName":Ljava/lang/String;
    const-string v1, "Deprecated"

    move-object/from16 v32, v0

    .end local v0    # "enclosingDesc":Ljava/lang/String;
    .local v32, "enclosingDesc":Ljava/lang/String;
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    move-object/from16 v33, v14

    .end local v14    # "superClassName":Ljava/lang/String;
    .local v33, "superClassName":Ljava/lang/String;
    const-string v14, "RuntimeVisibleTypeAnnotations"

    if-lez v17, :cond_17

    .line 533
    invoke-virtual {v8, v10, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 534
    .local v15, "attrName":Ljava/lang/String;
    move-object/from16 v35, v9

    .end local v9    # "implementedItfs":[Ljava/lang/String;
    .local v35, "implementedItfs":[Ljava/lang/String;
    const-string v9, "SourceFile"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 535
    add-int/lit8 v0, v10, 0x6

    invoke-virtual {v8, v0, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object/from16 v7, v25

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v26    # "sourceFile":Ljava/lang/String;
    .local v0, "sourceFile":Ljava/lang/String;
    goto/16 :goto_9

    .line 536
    .end local v0    # "sourceFile":Ljava/lang/String;
    .restart local v26    # "sourceFile":Ljava/lang/String;
    :cond_6
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 537
    or-int v0, v6, v29

    move v6, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v6    # "access":I
    .local v0, "access":I
    goto/16 :goto_9

    .line 538
    .end local v0    # "access":I
    .restart local v6    # "access":I
    :cond_7
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 539
    or-int/lit16 v0, v6, 0x1000

    move v6, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v6    # "access":I
    .restart local v0    # "access":I
    goto/16 :goto_9

    .line 540
    .end local v0    # "access":I
    .restart local v6    # "access":I
    :cond_8
    const-string v1, "Annotation"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 541
    or-int/lit16 v0, v6, 0x2000

    move v6, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v6    # "access":I
    .restart local v0    # "access":I
    goto/16 :goto_9

    .line 542
    .end local v0    # "access":I
    .restart local v6    # "access":I
    :cond_9
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 543
    or-int/lit16 v0, v6, 0x4000

    move v6, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v6    # "access":I
    .restart local v0    # "access":I
    goto/16 :goto_9

    .line 544
    .end local v0    # "access":I
    .restart local v6    # "access":I
    :cond_a
    const-string v1, "InnerClasses"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 545
    add-int/lit8 v0, v10, 0x6

    move v4, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v27    # "w":I
    .local v0, "w":I
    goto/16 :goto_9

    .line 546
    .end local v0    # "w":I
    .restart local v27    # "w":I
    :cond_b
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 547
    add-int/lit8 v0, v10, 0x6

    invoke-virtual {v8, v0, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v24    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_9

    .line 548
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v24    # "signature":Ljava/lang/String;
    :cond_c
    const-string v1, "SourceDebugExtension"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 549
    add-int/lit8 v0, v10, 0x2

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    .line 550
    .local v0, "len":I
    add-int/lit8 v1, v10, 0x6

    new-array v2, v0, [C

    invoke-direct {v8, v1, v0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v0

    .line 551
    .end local v28    # "sourceDebug":Ljava/lang/String;
    .local v0, "sourceDebug":Ljava/lang/String;
    move-object v3, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    goto/16 :goto_9

    .end local v0    # "sourceDebug":Ljava/lang/String;
    .restart local v28    # "sourceDebug":Ljava/lang/String;
    :cond_d
    const-string v1, "EnclosingMethod"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 552
    add-int/lit8 v0, v10, 0x6

    invoke-virtual {v8, v0, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    .line 553
    .end local v30    # "enclosingOwner":Ljava/lang/String;
    .local v0, "enclosingOwner":Ljava/lang/String;
    add-int/lit8 v1, v10, 0x8

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 554
    .local v1, "item":I
    if-eqz v1, :cond_e

    .line 555
    iget-object v2, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 556
    .end local v31    # "enclosingName":Ljava/lang/String;
    .local v2, "enclosingName":Ljava/lang/String;
    iget-object v3, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget v3, v3, v1

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v8, v3, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    move-object v1, v2

    move-object/from16 v32, v3

    .end local v32    # "enclosingDesc":Ljava/lang/String;
    .local v3, "enclosingDesc":Ljava/lang/String;
    goto :goto_7

    .line 554
    .end local v2    # "enclosingName":Ljava/lang/String;
    .end local v3    # "enclosingDesc":Ljava/lang/String;
    .restart local v31    # "enclosingName":Ljava/lang/String;
    .restart local v32    # "enclosingDesc":Ljava/lang/String;
    :cond_e
    move-object/from16 v1, v31

    .line 558
    .end local v31    # "enclosingName":Ljava/lang/String;
    .local v1, "enclosingName":Ljava/lang/String;
    :goto_7
    move-object v2, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v0, v32

    goto/16 :goto_9

    .end local v0    # "enclosingOwner":Ljava/lang/String;
    .end local v1    # "enclosingName":Ljava/lang/String;
    .restart local v30    # "enclosingOwner":Ljava/lang/String;
    .restart local v31    # "enclosingName":Ljava/lang/String;
    :cond_f
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 559
    add-int/lit8 v0, v10, 0x6

    move/from16 v19, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v19    # "anns":I
    .local v0, "anns":I
    goto/16 :goto_9

    .line 560
    .end local v0    # "anns":I
    .restart local v19    # "anns":I
    :cond_10
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 561
    add-int/lit8 v0, v10, 0x6

    move/from16 v20, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v20    # "ianns":I
    .local v0, "ianns":I
    goto/16 :goto_9

    .line 562
    .end local v0    # "ianns":I
    .restart local v20    # "ianns":I
    :cond_11
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 563
    add-int/lit8 v0, v10, 0x6

    move/from16 v21, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v21    # "xanns":I
    .local v0, "xanns":I
    goto/16 :goto_9

    .line 564
    .end local v0    # "xanns":I
    .restart local v21    # "xanns":I
    :cond_12
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 565
    add-int/lit8 v0, v10, 0x6

    move/from16 v22, v0

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    .end local v22    # "ixanns":I
    .local v0, "ixanns":I
    goto/16 :goto_9

    .line 566
    .end local v0    # "ixanns":I
    .restart local v22    # "ixanns":I
    :cond_13
    const-string v0, "BootstrapMethods"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 567
    add-int/lit8 v0, v10, 0x6

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->bootstrapMethods:[I

    .line 568
    const/4 v0, 0x0

    .local v0, "j":I
    add-int/lit8 v1, v10, 0x8

    .end local v23    # "u":I
    .local v1, "u":I
    :goto_8
    iget-object v2, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->bootstrapMethods:[I

    array-length v3, v2

    if-ge v0, v3, :cond_14

    .line 569
    aput v1, v2, v0

    .line 570
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const/16 v34, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    move/from16 v23, v1

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v4, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    goto :goto_9

    .line 573
    .end local v0    # "j":I
    .end local v1    # "u":I
    .restart local v23    # "u":I
    :cond_15
    add-int/lit8 v3, v10, 0x6

    add-int/lit8 v0, v10, 0x2

    .line 576
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v4

    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 573
    move-object/from16 v14, v32

    .end local v32    # "enclosingDesc":Ljava/lang/String;
    .local v14, "enclosingDesc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v5, v31

    .end local v31    # "enclosingName":Ljava/lang/String;
    .local v5, "enclosingName":Ljava/lang/String;
    move-object/from16 v1, p2

    move-object/from16 v36, v30

    .end local v30    # "enclosingOwner":Ljava/lang/String;
    .local v36, "enclosingOwner":Ljava/lang/String;
    move-object v2, v15

    move-object/from16 v37, v28

    .end local v28    # "sourceDebug":Ljava/lang/String;
    .local v37, "sourceDebug":Ljava/lang/String;
    move/from16 v38, v27

    .end local v27    # "w":I
    .local v38, "w":I
    move-object/from16 v40, v5

    move-object/from16 v39, v26

    .end local v5    # "enclosingName":Ljava/lang/String;
    .end local v26    # "sourceFile":Ljava/lang/String;
    .local v39, "sourceFile":Ljava/lang/String;
    .local v40, "enclosingName":Ljava/lang/String;
    move-object v5, v11

    move/from16 v26, v6

    .end local v6    # "access":I
    .local v26, "access":I
    move v6, v7

    move-object/from16 v14, v25

    .end local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v14, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v32    # "enclosingDesc":Ljava/lang/String;
    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAttribute([Lorg/checkerframework/org/objectweb/asmx/Attribute;Ljava/lang/String;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v0

    .line 580
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    if-eqz v0, :cond_16

    .line 581
    iput-object v14, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 582
    move-object v1, v0

    move-object v7, v1

    move/from16 v6, v26

    move-object/from16 v0, v32

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move/from16 v4, v38

    move-object/from16 v5, v39

    move-object/from16 v1, v40

    .end local v14    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v1, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    goto :goto_9

    .line 580
    .end local v1    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v14    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :cond_16
    move-object v7, v14

    move/from16 v6, v26

    move-object/from16 v0, v32

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move/from16 v4, v38

    move-object/from16 v5, v39

    move-object/from16 v1, v40

    .line 585
    .end local v14    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v26    # "access":I
    .end local v32    # "enclosingDesc":Ljava/lang/String;
    .end local v36    # "enclosingOwner":Ljava/lang/String;
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .end local v38    # "w":I
    .end local v39    # "sourceFile":Ljava/lang/String;
    .end local v40    # "enclosingName":Ljava/lang/String;
    .local v0, "enclosingDesc":Ljava/lang/String;
    .local v1, "enclosingName":Ljava/lang/String;
    .local v2, "enclosingOwner":Ljava/lang/String;
    .local v3, "sourceDebug":Ljava/lang/String;
    .restart local v4    # "w":I
    .local v5, "sourceFile":Ljava/lang/String;
    .restart local v6    # "access":I
    .restart local v7    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :goto_9
    add-int/lit8 v9, v10, 0x2

    invoke-virtual {v8, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v10, v9

    .line 532
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v15, p1

    move-object/from16 v14, v33

    move-object/from16 v9, v35

    goto/16 :goto_6

    .line 588
    .end local v0    # "enclosingDesc":Ljava/lang/String;
    .end local v1    # "enclosingName":Ljava/lang/String;
    .end local v2    # "enclosingOwner":Ljava/lang/String;
    .end local v3    # "sourceDebug":Ljava/lang/String;
    .end local v4    # "w":I
    .end local v5    # "sourceFile":Ljava/lang/String;
    .end local v7    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v15    # "attrName":Ljava/lang/String;
    .end local v35    # "implementedItfs":[Ljava/lang/String;
    .restart local v9    # "implementedItfs":[Ljava/lang/String;
    .restart local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v26, "sourceFile":Ljava/lang/String;
    .restart local v27    # "w":I
    .restart local v28    # "sourceDebug":Ljava/lang/String;
    .restart local v30    # "enclosingOwner":Ljava/lang/String;
    .restart local v31    # "enclosingName":Ljava/lang/String;
    .restart local v32    # "enclosingDesc":Ljava/lang/String;
    :cond_17
    move-object/from16 v35, v9

    move-object/from16 v39, v26

    move/from16 v38, v27

    move-object/from16 v37, v28

    move-object/from16 v36, v30

    move-object/from16 v40, v31

    const/16 v34, 0x1

    move/from16 v26, v6

    move-object/from16 v6, v32

    move-object/from16 v64, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v64

    .end local v9    # "implementedItfs":[Ljava/lang/String;
    .end local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v27    # "w":I
    .end local v28    # "sourceDebug":Ljava/lang/String;
    .end local v30    # "enclosingOwner":Ljava/lang/String;
    .end local v31    # "enclosingName":Ljava/lang/String;
    .end local v32    # "enclosingDesc":Ljava/lang/String;
    .local v6, "enclosingDesc":Ljava/lang/String;
    .restart local v14    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v26, "access":I
    .restart local v35    # "implementedItfs":[Ljava/lang/String;
    .restart local v36    # "enclosingOwner":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    .restart local v38    # "w":I
    .restart local v39    # "sourceFile":Ljava/lang/String;
    .restart local v40    # "enclosingName":Ljava/lang/String;
    const/4 v15, 0x4

    invoke-virtual {v8, v15}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v27

    move-object/from16 v28, v35

    .end local v35    # "implementedItfs":[Ljava/lang/String;
    .local v28, "implementedItfs":[Ljava/lang/String;
    move-object/from16 v9, p1

    move-object/from16 v30, v0

    move/from16 v18, v10

    const/4 v0, 0x0

    .end local v10    # "v":I
    .local v18, "v":I
    move/from16 v10, v27

    move-object v0, v11

    .end local v11    # "c":[C
    .local v0, "c":[C
    move/from16 v11, v26

    move-object/from16 v31, v12

    .end local v12    # "b":[B
    .local v31, "b":[B
    move-object/from16 v12, v16

    move-object/from16 v13, v24

    move-object/from16 v32, v5

    move/from16 v34, v15

    move-object/from16 v5, p1

    move-object/from16 v15, v28

    move-object/from16 v42, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v33

    .end local v33    # "superClassName":Ljava/lang/String;
    .local v14, "superClassName":Ljava/lang/String;
    .restart local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    invoke-interface/range {v9 .. v15}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 596
    move-object/from16 v10, v39

    .end local v39    # "sourceFile":Ljava/lang/String;
    .local v10, "sourceFile":Ljava/lang/String;
    if-nez v10, :cond_18

    move-object/from16 v9, v37

    .end local v37    # "sourceDebug":Ljava/lang/String;
    .local v9, "sourceDebug":Ljava/lang/String;
    if-eqz v9, :cond_19

    goto :goto_a

    .end local v9    # "sourceDebug":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    :cond_18
    move-object/from16 v9, v37

    .line 597
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .restart local v9    # "sourceDebug":Ljava/lang/String;
    :goto_a
    invoke-interface {v5, v10, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_19
    move-object/from16 v11, v36

    .end local v36    # "enclosingOwner":Ljava/lang/String;
    .local v11, "enclosingOwner":Ljava/lang/String;
    if-eqz v11, :cond_1a

    .line 602
    move-object/from16 v12, v40

    .end local v40    # "enclosingName":Ljava/lang/String;
    .local v12, "enclosingName":Ljava/lang/String;
    invoke-interface {v5, v11, v12, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 601
    .end local v12    # "enclosingName":Ljava/lang/String;
    .restart local v40    # "enclosingName":Ljava/lang/String;
    :cond_1a
    move-object/from16 v12, v40

    .line 608
    .end local v40    # "enclosingName":Ljava/lang/String;
    .restart local v12    # "enclosingName":Ljava/lang/String;
    :goto_b
    const/4 v13, 0x1

    .end local v17    # "i":I
    .local v13, "i":I
    :goto_c
    if-ltz v13, :cond_1f

    .line 609
    if-nez v13, :cond_1b

    move/from16 v17, v20

    goto :goto_d

    :cond_1b
    move/from16 v17, v19

    :goto_d
    move/from16 v18, v17

    .line 610
    move/from16 v15, v18

    .end local v18    # "v":I
    .local v15, "v":I
    if-eqz v15, :cond_1e

    .line 611
    invoke-virtual {v8, v15}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v18

    .line 612
    .local v18, "j":I
    add-int/lit8 v15, v15, 0x2

    .line 613
    :goto_e
    if-lez v18, :cond_1d

    .line 614
    move-object/from16 v33, v6

    .end local v6    # "enclosingDesc":Ljava/lang/String;
    .local v33, "enclosingDesc":Ljava/lang/String;
    invoke-virtual {v8, v15, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, "desc":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x2

    .line 616
    move-object/from16 v37, v9

    if-eqz v13, :cond_1c

    const/4 v9, 0x1

    goto :goto_f

    :cond_1c
    const/4 v9, 0x0

    .line 618
    .end local v9    # "sourceDebug":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    :goto_f
    invoke-interface {v5, v6, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v9

    .line 616
    invoke-direct {v8, v15, v0, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    move-result v15

    .line 613
    add-int/lit8 v18, v18, -0x1

    move-object/from16 v6, v33

    move-object/from16 v9, v37

    goto :goto_e

    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .local v6, "enclosingDesc":Ljava/lang/String;
    .restart local v9    # "sourceDebug":Ljava/lang/String;
    :cond_1d
    move-object/from16 v33, v6

    move-object/from16 v37, v9

    .end local v6    # "enclosingDesc":Ljava/lang/String;
    .end local v9    # "sourceDebug":Ljava/lang/String;
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    move/from16 v18, v15

    goto :goto_10

    .line 610
    .end local v18    # "j":I
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .restart local v6    # "enclosingDesc":Ljava/lang/String;
    .restart local v9    # "sourceDebug":Ljava/lang/String;
    :cond_1e
    move-object/from16 v33, v6

    move-object/from16 v37, v9

    .end local v6    # "enclosingDesc":Ljava/lang/String;
    .end local v9    # "sourceDebug":Ljava/lang/String;
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    move/from16 v18, v15

    .line 608
    .end local v15    # "v":I
    .local v18, "v":I
    :goto_10
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v6, v33

    move-object/from16 v9, v37

    goto :goto_c

    .line 625
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .restart local v6    # "enclosingDesc":Ljava/lang/String;
    .restart local v9    # "sourceDebug":Ljava/lang/String;
    :cond_1f
    move-object/from16 v33, v6

    move-object/from16 v37, v9

    .end local v6    # "enclosingDesc":Ljava/lang/String;
    .end local v9    # "sourceDebug":Ljava/lang/String;
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    const/4 v6, 0x1

    .end local v13    # "i":I
    .local v6, "i":I
    :goto_11
    if-ltz v6, :cond_24

    .line 626
    if-nez v6, :cond_20

    move/from16 v9, v22

    goto :goto_12

    :cond_20
    move/from16 v9, v21

    .line 627
    .end local v18    # "v":I
    .local v9, "v":I
    :goto_12
    if-eqz v9, :cond_23

    .line 628
    invoke-virtual {v8, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .line 629
    .local v13, "j":I
    add-int/lit8 v9, v9, 0x2

    .line 630
    :goto_13
    if-lez v13, :cond_22

    .line 631
    if-eqz v6, :cond_21

    const/4 v15, 0x1

    goto :goto_14

    :cond_21
    const/4 v15, 0x0

    :goto_14
    invoke-direct {v8, v9, v0, v5, v15}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readTypeAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;Z)I

    move-result v9

    .line 630
    add-int/lit8 v13, v13, -0x1

    goto :goto_13

    :cond_22
    move/from16 v18, v9

    goto :goto_15

    .line 627
    .end local v13    # "j":I
    :cond_23
    move/from16 v18, v9

    .line 625
    .end local v9    # "v":I
    .restart local v18    # "v":I
    :goto_15
    add-int/lit8 v6, v6, -0x1

    goto :goto_11

    :cond_24
    move-object/from16 v9, v25

    .line 638
    .end local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v9, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :goto_16
    if-eqz v9, :cond_25

    .line 639
    iget-object v13, v9, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 640
    .local v13, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    const/4 v15, 0x0

    iput-object v15, v9, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 641
    invoke-interface {v5, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 642
    move-object v9, v13

    goto :goto_16

    .line 646
    .end local v13    # "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :cond_25
    const/4 v15, 0x0

    move/from16 v13, v38

    .end local v38    # "w":I
    .local v13, "w":I
    if-eqz v13, :cond_2a

    .line 647
    invoke-virtual {v8, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 648
    add-int/lit8 v13, v13, 0x2

    .line 649
    :goto_17
    if-lez v6, :cond_29

    .line 650
    invoke-virtual {v8, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v25

    if-nez v25, :cond_26

    goto :goto_18

    .line 652
    :cond_26
    invoke-virtual {v8, v13, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v15, v25

    :goto_18
    move-object/from16 v25, v9

    .end local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    add-int/lit8 v9, v13, 0x2

    invoke-virtual {v8, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v9

    if-nez v9, :cond_27

    const/4 v9, 0x0

    goto :goto_19

    :cond_27
    add-int/lit8 v9, v13, 0x2

    .line 654
    invoke-virtual {v8, v9, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v9

    :goto_19
    move-object/from16 v39, v10

    .end local v10    # "sourceFile":Ljava/lang/String;
    .restart local v39    # "sourceFile":Ljava/lang/String;
    add-int/lit8 v10, v13, 0x4

    invoke-virtual {v8, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v10

    if-nez v10, :cond_28

    const/4 v10, 0x0

    goto :goto_1a

    :cond_28
    add-int/lit8 v10, v13, 0x4

    .line 656
    invoke-virtual {v8, v10, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    :goto_1a
    move-object/from16 v36, v11

    .end local v11    # "enclosingOwner":Ljava/lang/String;
    .restart local v36    # "enclosingOwner":Ljava/lang/String;
    add-int/lit8 v11, v13, 0x6

    invoke-virtual {v8, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 650
    invoke-interface {v5, v15, v9, v10, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 657
    add-int/lit8 v13, v13, 0x8

    .line 649
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v9, v25

    move-object/from16 v11, v36

    move-object/from16 v10, v39

    const/4 v15, 0x0

    goto :goto_17

    .end local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v36    # "enclosingOwner":Ljava/lang/String;
    .end local v39    # "sourceFile":Ljava/lang/String;
    .restart local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v10    # "sourceFile":Ljava/lang/String;
    .restart local v11    # "enclosingOwner":Ljava/lang/String;
    :cond_29
    move-object/from16 v25, v9

    move-object/from16 v39, v10

    move-object/from16 v36, v11

    .end local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v10    # "sourceFile":Ljava/lang/String;
    .end local v11    # "enclosingOwner":Ljava/lang/String;
    .restart local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v36    # "enclosingOwner":Ljava/lang/String;
    .restart local v39    # "sourceFile":Ljava/lang/String;
    goto :goto_1b

    .line 646
    .end local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v36    # "enclosingOwner":Ljava/lang/String;
    .end local v39    # "sourceFile":Ljava/lang/String;
    .restart local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v10    # "sourceFile":Ljava/lang/String;
    .restart local v11    # "enclosingOwner":Ljava/lang/String;
    :cond_2a
    move-object/from16 v25, v9

    move-object/from16 v39, v10

    move-object/from16 v36, v11

    .line 662
    .end local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v10    # "sourceFile":Ljava/lang/String;
    .end local v11    # "enclosingOwner":Ljava/lang/String;
    .restart local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v36    # "enclosingOwner":Ljava/lang/String;
    .restart local v39    # "sourceFile":Ljava/lang/String;
    :goto_1b
    iget v9, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    add-int/lit8 v9, v9, 0x8

    move-object/from16 v10, v28

    .end local v28    # "implementedItfs":[Ljava/lang/String;
    .local v10, "implementedItfs":[Ljava/lang/String;
    array-length v11, v10

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    .line 663
    .end local v23    # "u":I
    .local v9, "u":I
    invoke-virtual {v8, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 664
    add-int/lit8 v9, v9, 0x2

    move v11, v9

    move v9, v6

    move/from16 v6, v26

    .line 665
    .end local v26    # "access":I
    .local v6, "access":I
    .local v9, "i":I
    .local v11, "u":I
    :goto_1c
    if-lez v9, :cond_42

    .line 666
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 667
    add-int/lit8 v15, v11, 0x2

    invoke-virtual {v8, v15, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    .line 668
    add-int/lit8 v15, v11, 0x4

    invoke-virtual {v8, v15, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 671
    .local v15, "desc":Ljava/lang/String;
    const/16 v23, 0x0

    .line 672
    .local v23, "fieldValueItem":I
    const/16 v24, 0x0

    .line 673
    const/16 v19, 0x0

    .line 674
    const/16 v20, 0x0

    .line 675
    const/16 v21, 0x0

    .line 676
    const/16 v22, 0x0

    .line 677
    const/16 v25, 0x0

    .line 679
    add-int/lit8 v5, v11, 0x6

    invoke-virtual {v8, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 680
    .local v5, "j":I
    add-int/lit8 v11, v11, 0x8

    move-object/from16 v28, v10

    move-object/from16 v40, v12

    move/from16 v10, v23

    move-object/from16 v12, v25

    move/from16 v64, v11

    move v11, v5

    move/from16 v5, v64

    .line 681
    .end local v23    # "fieldValueItem":I
    .end local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v5, "u":I
    .local v10, "fieldValueItem":I
    .local v11, "j":I
    .local v12, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v28    # "implementedItfs":[Ljava/lang/String;
    .restart local v40    # "enclosingName":Ljava/lang/String;
    :goto_1d
    if-lez v11, :cond_35

    .line 682
    move/from16 v23, v13

    .end local v13    # "w":I
    .local v23, "w":I
    invoke-virtual {v8, v5, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 683
    .local v13, "attrName":Ljava/lang/String;
    move-object/from16 v26, v14

    .end local v14    # "superClassName":Ljava/lang/String;
    .local v26, "superClassName":Ljava/lang/String;
    const-string v14, "ConstantValue"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 684
    add-int/lit8 v14, v5, 0x6

    invoke-virtual {v8, v14}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v10

    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move v14, v5

    move-object/from16 v45, v30

    move-object/from16 v51, v32

    move-object/from16 v27, v33

    move-object/from16 v30, v7

    move-object/from16 v32, v13

    move-object/from16 v13, v42

    goto/16 :goto_1e

    .line 685
    :cond_2b
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    .line 686
    or-int/lit16 v6, v6, 0x1000

    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move v14, v5

    move-object/from16 v45, v30

    move-object/from16 v51, v32

    move-object/from16 v27, v33

    move-object/from16 v30, v7

    move-object/from16 v32, v13

    move-object/from16 v13, v42

    goto/16 :goto_1e

    .line 687
    :cond_2c
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 688
    or-int v6, v6, v29

    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move v14, v5

    move-object/from16 v45, v30

    move-object/from16 v51, v32

    move-object/from16 v27, v33

    move-object/from16 v30, v7

    move-object/from16 v32, v13

    move-object/from16 v13, v42

    goto/16 :goto_1e

    .line 689
    :cond_2d
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 690
    or-int/lit16 v6, v6, 0x4000

    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move v14, v5

    move-object/from16 v45, v30

    move-object/from16 v51, v32

    move-object/from16 v27, v33

    move-object/from16 v30, v7

    move-object/from16 v32, v13

    move-object/from16 v13, v42

    goto/16 :goto_1e

    .line 691
    :cond_2e
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 692
    add-int/lit8 v14, v5, 0x6

    invoke-virtual {v8, v14, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move v14, v5

    move-object/from16 v45, v30

    move-object/from16 v51, v32

    move-object/from16 v27, v33

    move-object/from16 v30, v7

    move-object/from16 v32, v13

    move-object/from16 v13, v42

    goto/16 :goto_1e

    .line 693
    :cond_2f
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_30

    .line 694
    add-int/lit8 v19, v5, 0x6

    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move v14, v5

    move-object/from16 v45, v30

    move-object/from16 v51, v32

    move-object/from16 v27, v33

    move-object/from16 v30, v7

    move-object/from16 v32, v13

    move-object/from16 v13, v42

    goto/16 :goto_1e

    .line 695
    :cond_30
    move-object/from16 v14, v32

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_31

    .line 696
    add-int/lit8 v20, v5, 0x6

    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move-object/from16 v32, v13

    move-object/from16 v51, v14

    move-object/from16 v45, v30

    move-object/from16 v27, v33

    move-object/from16 v13, v42

    move v14, v5

    move-object/from16 v30, v7

    goto/16 :goto_1e

    .line 697
    :cond_31
    move-object/from16 v32, v7

    move-object/from16 v7, v42

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_32

    .line 698
    add-int/lit8 v21, v5, 0x6

    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move-object/from16 v51, v14

    move-object/from16 v45, v30

    move-object/from16 v30, v32

    move-object/from16 v27, v33

    move v14, v5

    move-object/from16 v32, v13

    move-object v13, v7

    goto/16 :goto_1e

    .line 699
    :cond_32
    move-object/from16 v35, v0

    move-object/from16 v0, v30

    .end local v0    # "c":[C
    .local v35, "c":[C
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_33

    .line 700
    add-int/lit8 v22, v5, 0x6

    move-object/from16 v45, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move-object/from16 v51, v14

    move-object/from16 v30, v32

    move-object/from16 v27, v33

    move-object/from16 v44, v35

    move v14, v5

    move-object/from16 v32, v13

    move-object v13, v7

    goto :goto_1e

    .line 703
    :cond_33
    add-int/lit8 v25, v5, 0x6

    move-object/from16 v30, v0

    add-int/lit8 v0, v5, 0x2

    .line 706
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v38

    const/16 v42, -0x1

    const/16 v43, 0x0

    .line 703
    move-object/from16 v45, v30

    move-object/from16 v44, v35

    .end local v35    # "c":[C
    .local v44, "c":[C
    move-object/from16 v0, p0

    move-object/from16 v47, v1

    move-object/from16 v1, p2

    move-object/from16 v48, v2

    move-object v2, v13

    move-object/from16 v49, v3

    move/from16 v3, v25

    move-object/from16 v50, v4

    move/from16 v4, v38

    move-object/from16 v51, v14

    move v14, v5

    .end local v5    # "u":I
    .local v14, "u":I
    move-object/from16 v5, v44

    move/from16 v25, v6

    move-object/from16 v27, v33

    .end local v6    # "access":I
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .local v25, "access":I
    .local v27, "enclosingDesc":Ljava/lang/String;
    move/from16 v6, v42

    move-object/from16 v30, v32

    move-object/from16 v32, v13

    move-object v13, v7

    .end local v13    # "attrName":Ljava/lang/String;
    .local v32, "attrName":Ljava/lang/String;
    move-object/from16 v7, v43

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAttribute([Lorg/checkerframework/org/objectweb/asmx/Attribute;Ljava/lang/String;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v0

    .line 710
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    if-eqz v0, :cond_34

    .line 711
    iput-object v12, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 712
    move-object v1, v0

    move-object v12, v1

    move/from16 v6, v25

    .end local v12    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v1, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    goto :goto_1e

    .line 710
    .end local v1    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v12    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :cond_34
    move/from16 v6, v25

    .line 715
    .end local v0    # "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v25    # "access":I
    .restart local v6    # "access":I
    :goto_1e
    add-int/lit8 v5, v14, 0x2

    invoke-virtual {v8, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int v5, v14, v0

    .line 681
    .end local v14    # "u":I
    .restart local v5    # "u":I
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v42, v13

    move/from16 v13, v23

    move-object/from16 v14, v26

    move-object/from16 v33, v27

    move-object/from16 v7, v30

    move-object/from16 v0, v44

    move-object/from16 v30, v45

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    move-object/from16 v4, v50

    move-object/from16 v32, v51

    goto/16 :goto_1d

    .line 718
    .end local v23    # "w":I
    .end local v26    # "superClassName":Ljava/lang/String;
    .end local v27    # "enclosingDesc":Ljava/lang/String;
    .end local v32    # "attrName":Ljava/lang/String;
    .end local v44    # "c":[C
    .local v0, "c":[C
    .local v13, "w":I
    .local v14, "superClassName":Ljava/lang/String;
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    :cond_35
    move-object/from16 v44, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move/from16 v25, v6

    move/from16 v23, v13

    move-object/from16 v26, v14

    move-object/from16 v45, v30

    move-object/from16 v51, v32

    move-object/from16 v27, v33

    move-object/from16 v13, v42

    move v14, v5

    move-object/from16 v30, v7

    .end local v0    # "c":[C
    .end local v5    # "u":I
    .end local v6    # "access":I
    .end local v13    # "w":I
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .local v14, "u":I
    .restart local v23    # "w":I
    .restart local v25    # "access":I
    .restart local v26    # "superClassName":Ljava/lang/String;
    .restart local v27    # "enclosingDesc":Ljava/lang/String;
    .restart local v44    # "c":[C
    if-nez v10, :cond_36

    move-object/from16 v7, v44

    const/4 v5, 0x0

    goto :goto_1f

    .line 720
    :cond_36
    move-object/from16 v7, v44

    .end local v44    # "c":[C
    .local v7, "c":[C
    invoke-virtual {v8, v10, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    :goto_1f
    nop

    .line 722
    .local v5, "value":Ljava/lang/Object;
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v16

    move-object v3, v15

    move-object/from16 v4, v24

    invoke-interface/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v0

    .line 728
    .local v0, "fv":Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    if-eqz v0, :cond_41

    .line 729
    const/4 v1, 0x1

    move v11, v1

    :goto_20
    if-ltz v11, :cond_3b

    .line 730
    if-nez v11, :cond_37

    move/from16 v1, v20

    goto :goto_21

    :cond_37
    move/from16 v1, v19

    .line 731
    .end local v18    # "v":I
    .local v1, "v":I
    :goto_21
    if-eqz v1, :cond_3a

    .line 732
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 733
    .local v2, "k":I
    add-int/lit8 v1, v1, 0x2

    .line 734
    :goto_22
    if-lez v2, :cond_39

    .line 735
    invoke-virtual {v8, v1, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 736
    add-int/lit8 v1, v1, 0x2

    .line 737
    if-eqz v11, :cond_38

    const/4 v3, 0x1

    goto :goto_23

    :cond_38
    const/4 v3, 0x0

    .line 739
    :goto_23
    invoke-interface {v0, v15, v3}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v3

    .line 737
    invoke-direct {v8, v1, v7, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    move-result v1

    .line 734
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    :cond_39
    move/from16 v18, v1

    goto :goto_24

    .line 731
    .end local v2    # "k":I
    :cond_3a
    move/from16 v18, v1

    .line 729
    .end local v1    # "v":I
    .restart local v18    # "v":I
    :goto_24
    add-int/lit8 v11, v11, -0x1

    goto :goto_20

    .line 745
    :cond_3b
    if-eqz v21, :cond_3d

    .line 746
    move/from16 v1, v21

    .line 747
    .end local v18    # "v":I
    .restart local v1    # "v":I
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 748
    .restart local v2    # "k":I
    add-int/lit8 v1, v1, 0x2

    .line 749
    :goto_25
    if-lez v2, :cond_3c

    .line 750
    const/4 v4, 0x1

    invoke-direct {v8, v1, v7, v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readTypeAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;Z)I

    move-result v1

    .line 749
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    :cond_3c
    const/4 v4, 0x1

    move/from16 v18, v1

    goto :goto_26

    .line 745
    .end local v1    # "v":I
    .end local v2    # "k":I
    .restart local v18    # "v":I
    :cond_3d
    const/4 v4, 0x1

    .line 755
    :goto_26
    if-eqz v22, :cond_3f

    .line 756
    move/from16 v1, v22

    .line 757
    .end local v18    # "v":I
    .restart local v1    # "v":I
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 758
    .restart local v2    # "k":I
    add-int/lit8 v1, v1, 0x2

    .line 759
    :goto_27
    if-lez v2, :cond_3e

    .line 760
    const/4 v3, 0x0

    invoke-direct {v8, v1, v7, v0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readTypeAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;Z)I

    move-result v1

    .line 759
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    :cond_3e
    move/from16 v18, v1

    .line 765
    .end local v1    # "v":I
    .end local v2    # "k":I
    .restart local v18    # "v":I
    :cond_3f
    :goto_28
    if-eqz v12, :cond_40

    .line 766
    iget-object v1, v12, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 767
    .local v1, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    const/4 v3, 0x0

    iput-object v3, v12, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 768
    invoke-interface {v0, v12}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 769
    move-object v12, v1

    goto :goto_28

    .line 771
    .end local v1    # "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :cond_40
    const/4 v3, 0x0

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitEnd()V

    goto :goto_29

    .line 728
    :cond_41
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 665
    .end local v0    # "fv":Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v10    # "fieldValueItem":I
    :goto_29
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v5, p1

    move-object v0, v7

    move-object/from16 v42, v13

    move v11, v14

    move/from16 v13, v23

    move/from16 v6, v25

    move-object/from16 v14, v26

    move-object/from16 v33, v27

    move-object/from16 v10, v28

    move-object/from16 v7, v30

    move-object/from16 v30, v45

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    move-object/from16 v4, v50

    move-object/from16 v32, v51

    move-object/from16 v25, v12

    move-object/from16 v12, v40

    goto/16 :goto_1c

    .line 776
    .end local v7    # "c":[C
    .end local v15    # "desc":Ljava/lang/String;
    .end local v23    # "w":I
    .end local v26    # "superClassName":Ljava/lang/String;
    .end local v27    # "enclosingDesc":Ljava/lang/String;
    .end local v28    # "implementedItfs":[Ljava/lang/String;
    .end local v40    # "enclosingName":Ljava/lang/String;
    .local v0, "c":[C
    .restart local v6    # "access":I
    .local v10, "implementedItfs":[Ljava/lang/String;
    .local v11, "u":I
    .local v12, "enclosingName":Ljava/lang/String;
    .restart local v13    # "w":I
    .local v14, "superClassName":Ljava/lang/String;
    .local v25, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    :cond_42
    move-object v7, v0

    move-object/from16 v47, v1

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v50, v4

    move-object/from16 v28, v10

    move-object/from16 v40, v12

    move/from16 v23, v13

    move-object/from16 v26, v14

    move-object/from16 v45, v30

    move-object/from16 v51, v32

    move-object/from16 v27, v33

    move-object/from16 v13, v42

    const/4 v3, 0x0

    const/4 v4, 0x1

    .end local v0    # "c":[C
    .end local v10    # "implementedItfs":[Ljava/lang/String;
    .end local v12    # "enclosingName":Ljava/lang/String;
    .end local v13    # "w":I
    .end local v14    # "superClassName":Ljava/lang/String;
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .restart local v7    # "c":[C
    .restart local v23    # "w":I
    .restart local v26    # "superClassName":Ljava/lang/String;
    .restart local v27    # "enclosingDesc":Ljava/lang/String;
    .restart local v28    # "implementedItfs":[Ljava/lang/String;
    .restart local v40    # "enclosingName":Ljava/lang/String;
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 777
    .end local v9    # "i":I
    .local v0, "i":I
    add-int/lit8 v11, v11, 0x2

    move v9, v0

    .line 778
    .end local v0    # "i":I
    .restart local v9    # "i":I
    :goto_2a
    if-lez v9, :cond_a5

    .line 779
    add-int/lit8 v10, v11, 0x6

    .line 780
    .local v10, "u0":I
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 781
    .end local v6    # "access":I
    .local v0, "access":I
    add-int/lit8 v1, v11, 0x2

    invoke-virtual {v8, v1, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    .line 782
    add-int/lit8 v1, v11, 0x4

    invoke-virtual {v8, v1, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 783
    .local v12, "desc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 784
    .end local v24    # "signature":Ljava/lang/String;
    .local v1, "signature":Ljava/lang/String;
    const/4 v2, 0x0

    .line 785
    .end local v19    # "anns":I
    .local v2, "anns":I
    const/4 v5, 0x0

    .line 787
    .end local v20    # "ianns":I
    .local v5, "ianns":I
    const/4 v6, 0x0

    .line 788
    .end local v21    # "xanns":I
    .local v6, "xanns":I
    const/4 v14, 0x0

    .line 790
    .end local v22    # "ixanns":I
    .local v14, "ixanns":I
    const/4 v15, 0x0

    .line 791
    .local v15, "dann":I
    const/16 v19, 0x0

    .line 792
    .local v19, "mpanns":I
    const/16 v20, 0x0

    .line 793
    .local v20, "impanns":I
    const/16 v21, 0x0

    .line 794
    .end local v25    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v21, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    const/16 v18, 0x0

    .line 795
    const/16 v22, 0x0

    .line 798
    .end local v23    # "w":I
    .local v22, "w":I
    add-int/lit8 v3, v11, 0x6

    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 799
    .local v3, "j":I
    add-int/lit8 v11, v11, 0x8

    move/from16 v64, v14

    move v14, v0

    move/from16 v0, v22

    move/from16 v22, v64

    move/from16 v65, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v21

    move/from16 v21, v6

    move v6, v15

    move v15, v11

    move v11, v3

    move/from16 v3, v19

    move/from16 v19, v2

    move/from16 v2, v20

    move/from16 v20, v5

    move/from16 v5, v65

    .line 800
    .local v0, "w":I
    .local v1, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v2, "impanns":I
    .local v3, "mpanns":I
    .local v5, "v":I
    .local v6, "dann":I
    .local v11, "j":I
    .local v14, "access":I
    .local v15, "u":I
    .local v18, "signature":Ljava/lang/String;
    .local v19, "anns":I
    .local v20, "ianns":I
    .local v21, "xanns":I
    .local v22, "ixanns":I
    :goto_2b
    if-lez v11, :cond_52

    .line 801
    move/from16 v23, v6

    .end local v6    # "dann":I
    .local v23, "dann":I
    invoke-virtual {v8, v15, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, "attrName":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x2

    .line 803
    invoke-virtual {v8, v15}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v24

    .line 804
    .local v24, "attrSize":I
    add-int/lit8 v15, v15, 0x4

    .line 805
    const-string v4, "Code"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 806
    move v4, v15

    move v5, v4

    move/from16 v30, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move-object/from16 v38, v47

    move-object/from16 v41, v48

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    .end local v5    # "v":I
    .local v4, "v":I
    goto/16 :goto_2c

    .line 807
    .end local v4    # "v":I
    .restart local v5    # "v":I
    :cond_43
    const-string v4, "Exceptions"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 808
    move v0, v15

    move/from16 v30, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move-object/from16 v38, v47

    move-object/from16 v41, v48

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 809
    :cond_44
    move-object/from16 v4, v48

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_45

    .line 810
    or-int/lit16 v14, v14, 0x1000

    move-object/from16 v41, v4

    move/from16 v30, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move-object/from16 v38, v47

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 811
    :cond_45
    move/from16 v25, v0

    .end local v0    # "w":I
    .local v25, "w":I
    const-string v0, "Varargs"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 812
    or-int/lit16 v14, v14, 0x80

    move-object/from16 v41, v4

    move/from16 v30, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v38, v47

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 813
    :cond_46
    const-string v0, "Bridge"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 814
    or-int/lit8 v14, v14, 0x40

    move-object/from16 v41, v4

    move/from16 v30, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v38, v47

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 815
    :cond_47
    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_48

    .line 816
    or-int v14, v14, v29

    move-object/from16 v38, v0

    move-object/from16 v41, v4

    move/from16 v30, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 817
    :cond_48
    move/from16 v30, v9

    move-object/from16 v9, v49

    .end local v9    # "i":I
    .local v30, "i":I
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_49

    .line 818
    invoke-virtual {v8, v15, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v38, v0

    move-object/from16 v41, v4

    move-object/from16 v49, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 819
    :cond_49
    move-object/from16 v47, v0

    const-string v0, "AnnotationDefault"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 820
    move v0, v15

    move-object/from16 v41, v4

    move-object/from16 v23, v6

    move-object/from16 v49, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move-object/from16 v38, v47

    move-object/from16 v35, v50

    move v6, v0

    move-object v10, v7

    move/from16 v0, v25

    .end local v23    # "dann":I
    .local v0, "dann":I
    goto/16 :goto_2c

    .line 821
    .end local v0    # "dann":I
    .restart local v23    # "dann":I
    :cond_4a
    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4b

    .line 822
    move/from16 v19, v15

    move-object/from16 v35, v0

    move-object/from16 v41, v4

    move-object/from16 v49, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v38, v47

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 823
    :cond_4b
    move-object/from16 v49, v9

    move-object/from16 v9, v51

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4c

    .line 824
    move/from16 v20, v15

    move-object/from16 v35, v0

    move-object/from16 v41, v4

    move-object/from16 v51, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v38, v47

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 825
    :cond_4c
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4d

    .line 826
    move/from16 v21, v15

    move-object/from16 v35, v0

    move-object/from16 v41, v4

    move-object/from16 v51, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v38, v47

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 827
    :cond_4d
    move-object/from16 v51, v9

    move-object/from16 v9, v45

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4e

    .line 828
    move/from16 v22, v15

    move-object/from16 v35, v0

    move-object/from16 v41, v4

    move-object/from16 v45, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v38, v47

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    goto/16 :goto_2c

    .line 829
    :cond_4e
    move-object/from16 v50, v0

    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 830
    move v0, v15

    move v3, v0

    move-object/from16 v41, v4

    move-object/from16 v45, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v38, v47

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    .end local v3    # "mpanns":I
    .local v0, "mpanns":I
    goto/16 :goto_2c

    .line 831
    .end local v0    # "mpanns":I
    .restart local v3    # "mpanns":I
    :cond_4f
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 832
    move v0, v15

    move v2, v0

    move-object/from16 v41, v4

    move-object/from16 v45, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move/from16 v0, v25

    move-object/from16 v38, v47

    move-object/from16 v35, v50

    move-object v10, v7

    move/from16 v64, v23

    move-object/from16 v23, v6

    move/from16 v6, v64

    .end local v2    # "impanns":I
    .local v0, "impanns":I
    goto :goto_2c

    .line 834
    .end local v0    # "impanns":I
    .restart local v2    # "impanns":I
    :cond_50
    const/16 v32, -0x1

    const/16 v33, 0x0

    move-object/from16 v42, v13

    move/from16 v13, v25

    move-object/from16 v38, v47

    move-object/from16 v35, v50

    .end local v25    # "w":I
    .restart local v13    # "w":I
    move-object/from16 v0, p0

    move-object/from16 v45, v9

    move-object v9, v1

    .end local v1    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v9, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    move-object/from16 v1, p2

    move/from16 v52, v2

    .end local v2    # "impanns":I
    .local v52, "impanns":I
    move-object v2, v6

    move/from16 v53, v3

    .end local v3    # "mpanns":I
    .local v53, "mpanns":I
    move v3, v15

    move-object/from16 v41, v4

    move/from16 v4, v24

    move/from16 v55, v5

    .end local v5    # "v":I
    .local v55, "v":I
    move-object v5, v7

    move/from16 v56, v23

    move-object/from16 v23, v6

    .end local v6    # "attrName":Ljava/lang/String;
    .local v23, "attrName":Ljava/lang/String;
    .local v56, "dann":I
    move/from16 v6, v32

    move/from16 v32, v10

    move-object v10, v7

    .end local v7    # "c":[C
    .local v10, "c":[C
    .local v32, "u0":I
    move-object/from16 v7, v33

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAttribute([Lorg/checkerframework/org/objectweb/asmx/Attribute;Ljava/lang/String;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v0

    .line 841
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    if-eqz v0, :cond_51

    .line 842
    iput-object v9, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 843
    move-object v1, v0

    move v0, v13

    move/from16 v2, v52

    move/from16 v3, v53

    move/from16 v5, v55

    move/from16 v6, v56

    .end local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v1    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    goto :goto_2c

    .line 841
    .end local v1    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :cond_51
    move-object v1, v9

    move v0, v13

    move/from16 v2, v52

    move/from16 v3, v53

    move/from16 v5, v55

    move/from16 v6, v56

    .line 846
    .end local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v13    # "w":I
    .end local v52    # "impanns":I
    .end local v53    # "mpanns":I
    .end local v55    # "v":I
    .end local v56    # "dann":I
    .local v0, "w":I
    .restart local v1    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v2    # "impanns":I
    .restart local v3    # "mpanns":I
    .restart local v5    # "v":I
    .local v6, "dann":I
    :goto_2c
    add-int v15, v15, v24

    .line 800
    .end local v24    # "attrSize":I
    add-int/lit8 v11, v11, -0x1

    move-object v7, v10

    move/from16 v9, v30

    move/from16 v10, v32

    move-object/from16 v50, v35

    move-object/from16 v47, v38

    move-object/from16 v48, v41

    move-object/from16 v13, v42

    const/4 v4, 0x1

    goto/16 :goto_2b

    .line 850
    .end local v23    # "attrName":Ljava/lang/String;
    .end local v30    # "i":I
    .end local v32    # "u0":I
    .restart local v7    # "c":[C
    .local v9, "i":I
    .local v10, "u0":I
    :cond_52
    move/from16 v52, v2

    move/from16 v53, v3

    move/from16 v55, v5

    move/from16 v56, v6

    move/from16 v30, v9

    move/from16 v32, v10

    move-object/from16 v42, v13

    move-object/from16 v38, v47

    move-object/from16 v41, v48

    move-object/from16 v35, v50

    move v13, v0

    move-object v9, v1

    move-object v10, v7

    .end local v0    # "w":I
    .end local v1    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v2    # "impanns":I
    .end local v3    # "mpanns":I
    .end local v5    # "v":I
    .end local v6    # "dann":I
    .end local v7    # "c":[C
    .local v9, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v10, "c":[C
    .restart local v13    # "w":I
    .restart local v30    # "i":I
    .restart local v32    # "u0":I
    .restart local v52    # "impanns":I
    .restart local v53    # "mpanns":I
    .restart local v55    # "v":I
    .restart local v56    # "dann":I
    if-nez v13, :cond_53

    .line 851
    const/4 v0, 0x0

    move-object v7, v0

    .local v0, "exceptions":[Ljava/lang/String;
    goto :goto_2e

    .line 853
    .end local v0    # "exceptions":[Ljava/lang/String;
    :cond_53
    invoke-virtual {v8, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 854
    .restart local v0    # "exceptions":[Ljava/lang/String;
    add-int/lit8 v1, v13, 0x2

    .line 855
    .end local v13    # "w":I
    .local v1, "w":I
    const/4 v2, 0x0

    move v11, v2

    :goto_2d
    array-length v2, v0

    if-ge v11, v2, :cond_54

    .line 856
    invoke-virtual {v8, v1, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    .line 857
    add-int/lit8 v1, v1, 0x2

    .line 855
    add-int/lit8 v11, v11, 0x1

    goto :goto_2d

    :cond_54
    move-object v7, v0

    move v13, v1

    .line 862
    .end local v0    # "exceptions":[Ljava/lang/String;
    .end local v1    # "w":I
    .local v7, "exceptions":[Ljava/lang/String;
    .restart local v13    # "w":I
    :goto_2e
    move-object/from16 v0, p1

    move v1, v14

    move-object/from16 v2, v16

    move-object v3, v12

    move-object/from16 v4, v18

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v6

    .line 868
    .local v6, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    if-eqz v6, :cond_6c

    .line 880
    instance-of v0, v6, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    if-eqz v0, :cond_5d

    .line 881
    move-object v0, v6

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    .line 882
    .local v0, "mw":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->cr:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    if-ne v1, v8, :cond_5c

    .line 883
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->signature:Ljava/lang/String;

    move-object/from16 v5, v18

    .end local v18    # "signature":Ljava/lang/String;
    .local v5, "signature":Ljava/lang/String;
    if-ne v5, v1, :cond_5b

    .line 884
    const/4 v1, 0x0

    .line 885
    .local v1, "sameExceptions":Z
    if-nez v7, :cond_56

    .line 886
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    if-nez v2, :cond_55

    const/4 v2, 0x1

    goto :goto_2f

    :cond_55
    const/4 v2, 0x0

    :goto_2f
    move v1, v2

    const/4 v4, 0x1

    goto :goto_31

    .line 888
    :cond_56
    array-length v2, v7

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    if-ne v2, v3, :cond_59

    .line 889
    const/4 v1, 0x1

    .line 890
    array-length v2, v7

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .end local v11    # "j":I
    .local v2, "j":I
    :goto_30
    if-ltz v2, :cond_58

    .line 892
    add-int/lit8 v13, v13, -0x2

    .line 893
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptions:[I

    aget v3, v3, v2

    invoke-virtual {v8, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v11

    if-eq v3, v11, :cond_57

    .line 895
    const/4 v1, 0x0

    .line 896
    move v11, v2

    goto :goto_31

    .line 890
    :cond_57
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    :cond_58
    move v11, v2

    goto :goto_31

    .line 888
    .end local v2    # "j":I
    .restart local v11    # "j":I
    :cond_59
    const/4 v4, 0x1

    .line 901
    :goto_31
    if-eqz v1, :cond_5a

    .line 908
    move/from16 v3, v32

    .end local v32    # "u0":I
    .local v3, "u0":I
    iput v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->classReaderOffset:I

    .line 909
    sub-int v2, v15, v3

    iput v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->classReaderLength:I

    .line 910
    move/from16 v44, v4

    move-object/from16 v47, v5

    move-object/from16 v25, v9

    move/from16 v23, v13

    move/from16 v52, v14

    move/from16 v54, v15

    move-object/from16 v56, v42

    move/from16 v18, v55

    const/4 v2, 0x0

    const/16 v43, 0x0

    goto/16 :goto_61

    .line 901
    .end local v3    # "u0":I
    .restart local v32    # "u0":I
    :cond_5a
    move/from16 v3, v32

    .end local v32    # "u0":I
    .restart local v3    # "u0":I
    goto :goto_32

    .line 883
    .end local v1    # "sameExceptions":Z
    .end local v3    # "u0":I
    .restart local v32    # "u0":I
    :cond_5b
    move/from16 v3, v32

    const/4 v4, 0x1

    .end local v32    # "u0":I
    .restart local v3    # "u0":I
    goto :goto_32

    .line 882
    .end local v3    # "u0":I
    .end local v5    # "signature":Ljava/lang/String;
    .restart local v18    # "signature":Ljava/lang/String;
    .restart local v32    # "u0":I
    :cond_5c
    move-object/from16 v5, v18

    move/from16 v3, v32

    const/4 v4, 0x1

    .end local v18    # "signature":Ljava/lang/String;
    .end local v32    # "u0":I
    .restart local v3    # "u0":I
    .restart local v5    # "signature":Ljava/lang/String;
    goto :goto_32

    .line 880
    .end local v0    # "mw":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .end local v3    # "u0":I
    .end local v5    # "signature":Ljava/lang/String;
    .restart local v18    # "signature":Ljava/lang/String;
    .restart local v32    # "u0":I
    :cond_5d
    move-object/from16 v5, v18

    move/from16 v3, v32

    const/4 v4, 0x1

    .line 915
    .end local v18    # "signature":Ljava/lang/String;
    .end local v32    # "u0":I
    .restart local v3    # "u0":I
    .restart local v5    # "signature":Ljava/lang/String;
    :goto_32
    move/from16 v2, v56

    .end local v56    # "dann":I
    .local v2, "dann":I
    if-eqz v2, :cond_5e

    .line 916
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    .line 917
    .local v0, "dv":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    const/4 v1, 0x0

    invoke-direct {v8, v2, v10, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    .line 918
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    goto :goto_33

    .line 915
    .end local v0    # "dv":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    :cond_5e
    const/4 v1, 0x0

    .line 920
    :goto_33
    const/4 v0, 0x1

    .end local v11    # "j":I
    .local v0, "j":I
    :goto_34
    if-ltz v0, :cond_63

    .line 921
    if-nez v0, :cond_5f

    move/from16 v11, v20

    goto :goto_35

    :cond_5f
    move/from16 v11, v19

    .line 922
    .end local v13    # "w":I
    .local v11, "w":I
    :goto_35
    if-eqz v11, :cond_62

    .line 923
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .line 924
    .local v13, "k":I
    add-int/lit8 v11, v11, 0x2

    .line 925
    :goto_36
    if-lez v13, :cond_61

    .line 926
    invoke-virtual {v8, v11, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 927
    add-int/lit8 v11, v11, 0x2

    .line 928
    if-eqz v0, :cond_60

    move v1, v4

    goto :goto_37

    :cond_60
    const/4 v1, 0x0

    .line 930
    :goto_37
    invoke-interface {v6, v12, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    .line 928
    invoke-direct {v8, v11, v10, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)I

    move-result v11

    .line 925
    add-int/lit8 v13, v13, -0x1

    const/4 v1, 0x0

    goto :goto_36

    :cond_61
    move v13, v11

    goto :goto_38

    .line 922
    .end local v13    # "k":I
    :cond_62
    move v13, v11

    .line 920
    .end local v11    # "w":I
    .local v13, "w":I
    :goto_38
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    goto :goto_34

    .line 936
    :cond_63
    const/4 v0, 0x1

    move v11, v0

    .end local v0    # "j":I
    .local v11, "j":I
    :goto_39
    if-ltz v11, :cond_68

    .line 937
    if-nez v11, :cond_64

    move/from16 v0, v22

    goto :goto_3a

    :cond_64
    move/from16 v0, v21

    .line 938
    .end local v13    # "w":I
    .local v0, "w":I
    :goto_3a
    if-eqz v0, :cond_67

    .line 939
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 940
    .local v1, "k":I
    add-int/lit8 v0, v0, 0x2

    .line 941
    :goto_3b
    if-lez v1, :cond_66

    .line 942
    if-eqz v11, :cond_65

    move v13, v4

    goto :goto_3c

    :cond_65
    const/4 v13, 0x0

    :goto_3c
    invoke-direct {v8, v0, v10, v6, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readTypeAnnotationValuesBodies(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;Z)I

    move-result v0

    .line 941
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    :cond_66
    move v13, v0

    goto :goto_3d

    .line 938
    .end local v1    # "k":I
    :cond_67
    move v13, v0

    .line 936
    .end local v0    # "w":I
    .restart local v13    # "w":I
    :goto_3d
    add-int/lit8 v11, v11, -0x1

    goto :goto_39

    .line 948
    :cond_68
    move/from16 v1, v53

    .end local v53    # "mpanns":I
    .local v1, "mpanns":I
    if-eqz v1, :cond_69

    .line 949
    invoke-direct {v8, v1, v10, v4, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readParameterAnnotations(I[CZLorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 951
    :cond_69
    move/from16 v0, v52

    .end local v52    # "impanns":I
    .local v0, "impanns":I
    if-eqz v0, :cond_6a

    .line 952
    const/4 v4, 0x0

    invoke-direct {v8, v0, v10, v4, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readParameterAnnotations(I[CZLorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 955
    :cond_6a
    :goto_3e
    if-eqz v9, :cond_6b

    .line 956
    iget-object v4, v9, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 957
    .local v4, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    move/from16 v52, v0

    const/4 v0, 0x0

    .end local v0    # "impanns":I
    .restart local v52    # "impanns":I
    iput-object v0, v9, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 958
    invoke-interface {v6, v9}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 959
    move-object v9, v4

    move/from16 v0, v52

    goto :goto_3e

    .line 955
    .end local v4    # "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v52    # "impanns":I
    .restart local v0    # "impanns":I
    :cond_6b
    move/from16 v52, v0

    .end local v0    # "impanns":I
    .restart local v52    # "impanns":I
    goto :goto_3f

    .line 868
    .end local v1    # "mpanns":I
    .end local v2    # "dann":I
    .end local v3    # "u0":I
    .end local v5    # "signature":Ljava/lang/String;
    .restart local v18    # "signature":Ljava/lang/String;
    .restart local v32    # "u0":I
    .restart local v53    # "mpanns":I
    .restart local v56    # "dann":I
    :cond_6c
    move-object/from16 v5, v18

    move/from16 v3, v32

    move/from16 v1, v53

    move/from16 v2, v56

    .line 963
    .end local v18    # "signature":Ljava/lang/String;
    .end local v32    # "u0":I
    .end local v53    # "mpanns":I
    .end local v56    # "dann":I
    .restart local v1    # "mpanns":I
    .restart local v2    # "dann":I
    .restart local v3    # "u0":I
    .restart local v5    # "signature":Ljava/lang/String;
    :goto_3f
    if-eqz v6, :cond_a3

    move/from16 v0, v55

    .end local v55    # "v":I
    .local v0, "v":I
    if-eqz v0, :cond_a2

    .line 964
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 965
    .local v4, "maxStack":I
    move/from16 v53, v1

    .end local v1    # "mpanns":I
    .restart local v53    # "mpanns":I
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 966
    .local v1, "maxLocals":I
    move/from16 v23, v1

    .end local v1    # "maxLocals":I
    .local v23, "maxLocals":I
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v24

    .line 967
    .local v24, "codeLength":I
    add-int/lit8 v0, v0, 0x8

    .line 969
    move/from16 v25, v0

    .line 970
    .local v25, "codeStart":I
    add-int v1, v0, v24

    .line 972
    .local v1, "codeEnd":I
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitCode()V

    .line 976
    move/from16 v32, v0

    .end local v0    # "v":I
    .local v32, "v":I
    add-int/lit8 v0, v24, 0x1

    new-array v0, v0, [Lorg/checkerframework/org/objectweb/asmx/Label;

    move/from16 v64, v13

    move v13, v11

    move/from16 v11, v32

    move/from16 v32, v64

    .line 977
    .local v0, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v11, "v":I
    .local v13, "j":I
    .local v32, "w":I
    :goto_40
    if-ge v11, v1, :cond_76

    .line 978
    move/from16 v33, v1

    .end local v1    # "codeEnd":I
    .local v33, "codeEnd":I
    aget-byte v1, v31, v11

    and-int/lit16 v1, v1, 0xff

    .line 979
    .local v1, "opcode":I
    sget-object v43, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->TYPE:[B

    aget-byte v43, v43, v1

    packed-switch v43, :pswitch_data_0

    .line 1067
    :pswitch_0
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .local v44, "opcode":I
    .restart local v56    # "dann":I
    add-int/lit8 v11, v11, 0x4

    goto/16 :goto_43

    .line 999
    .end local v44    # "opcode":I
    .end local v56    # "dann":I
    .restart local v1    # "opcode":I
    .restart local v2    # "dann":I
    :pswitch_1
    add-int/lit8 v43, v11, 0x1

    move/from16 v44, v1

    .end local v1    # "opcode":I
    .restart local v44    # "opcode":I
    aget-byte v1, v31, v43

    and-int/lit16 v1, v1, 0xff

    .line 1000
    .end local v44    # "opcode":I
    .restart local v1    # "opcode":I
    move/from16 v56, v2

    .end local v2    # "dann":I
    .restart local v56    # "dann":I
    const/16 v2, 0x84

    if-ne v1, v2, :cond_6d

    .line 1001
    add-int/lit8 v11, v11, 0x6

    goto/16 :goto_43

    .line 1003
    :cond_6d
    add-int/lit8 v11, v11, 0x4

    .line 1005
    goto/16 :goto_43

    .line 1030
    .end local v56    # "dann":I
    .restart local v2    # "dann":I
    :pswitch_2
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .restart local v44    # "opcode":I
    .restart local v56    # "dann":I
    sub-int v1, v11, v25

    .line 1031
    .end local v32    # "w":I
    .local v1, "w":I
    add-int/lit8 v2, v11, 0x4

    and-int/lit8 v32, v1, 0x3

    sub-int v2, v2, v32

    .line 1033
    .end local v11    # "v":I
    .local v2, "v":I
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v11

    add-int/2addr v11, v1

    .line 1034
    .local v11, "label":I
    add-int/lit8 v2, v2, 0x4

    .line 1035
    aget-object v32, v0, v11

    if-nez v32, :cond_6e

    .line 1036
    new-instance v32, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct/range {v32 .. v32}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v32, v0, v11

    .line 1038
    :cond_6e
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v13

    .line 1039
    add-int/lit8 v2, v2, 0x4

    .line 1040
    :goto_41
    if-lez v13, :cond_70

    .line 1041
    add-int/lit8 v2, v2, 0x4

    .line 1042
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v32

    add-int v11, v1, v32

    .line 1043
    add-int/lit8 v2, v2, 0x4

    .line 1044
    aget-object v32, v0, v11

    if-nez v32, :cond_6f

    .line 1045
    new-instance v32, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct/range {v32 .. v32}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v32, v0, v11

    .line 1040
    :cond_6f
    add-int/lit8 v13, v13, -0x1

    goto :goto_41

    :cond_70
    move/from16 v32, v1

    move v11, v2

    goto/16 :goto_43

    .line 1008
    .end local v44    # "opcode":I
    .end local v56    # "dann":I
    .local v1, "opcode":I
    .local v2, "dann":I
    .local v11, "v":I
    .restart local v32    # "w":I
    :pswitch_3
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .restart local v44    # "opcode":I
    .restart local v56    # "dann":I
    sub-int v1, v11, v25

    .line 1009
    .end local v32    # "w":I
    .local v1, "w":I
    add-int/lit8 v2, v11, 0x4

    and-int/lit8 v32, v1, 0x3

    sub-int v2, v2, v32

    .line 1011
    .end local v11    # "v":I
    .local v2, "v":I
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v11

    add-int/2addr v11, v1

    .line 1012
    .local v11, "label":I
    add-int/lit8 v2, v2, 0x4

    .line 1013
    aget-object v32, v0, v11

    if-nez v32, :cond_71

    .line 1014
    new-instance v32, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct/range {v32 .. v32}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v32, v0, v11

    .line 1016
    :cond_71
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v13

    .line 1017
    add-int/lit8 v2, v2, 0x4

    .line 1018
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v32

    sub-int v32, v32, v13

    const/16 v43, 0x1

    add-int/lit8 v32, v32, 0x1

    .line 1019
    .end local v13    # "j":I
    .local v32, "j":I
    add-int/lit8 v2, v2, 0x4

    .line 1020
    :goto_42
    if-lez v32, :cond_73

    .line 1021
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v13

    add-int v11, v1, v13

    .line 1022
    add-int/lit8 v2, v2, 0x4

    .line 1023
    aget-object v13, v0, v11

    if-nez v13, :cond_72

    .line 1024
    new-instance v13, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v13}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v13, v0, v11

    .line 1020
    :cond_72
    add-int/lit8 v32, v32, -0x1

    goto :goto_42

    :cond_73
    move v11, v2

    move/from16 v13, v32

    move/from16 v32, v1

    goto :goto_43

    .line 992
    .end local v44    # "opcode":I
    .end local v56    # "dann":I
    .local v1, "opcode":I
    .local v2, "dann":I
    .local v11, "v":I
    .restart local v13    # "j":I
    .local v32, "w":I
    :pswitch_4
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .restart local v44    # "opcode":I
    .restart local v56    # "dann":I
    sub-int v1, v11, v25

    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 993
    .local v1, "label":I
    aget-object v2, v0, v1

    if-nez v2, :cond_74

    .line 994
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v2}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v2, v0, v1

    .line 996
    :cond_74
    add-int/lit8 v11, v11, 0x5

    .line 997
    goto :goto_43

    .line 985
    .end local v44    # "opcode":I
    .end local v56    # "dann":I
    .local v1, "opcode":I
    .restart local v2    # "dann":I
    :pswitch_5
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .restart local v44    # "opcode":I
    .restart local v56    # "dann":I
    sub-int v1, v11, v25

    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readShort(I)S

    move-result v2

    add-int/2addr v1, v2

    .line 986
    .local v1, "label":I
    aget-object v2, v0, v1

    if-nez v2, :cond_75

    .line 987
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v2}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v2, v0, v1

    .line 989
    :cond_75
    add-int/lit8 v11, v11, 0x3

    .line 990
    goto :goto_43

    .line 1063
    .end local v44    # "opcode":I
    .end local v56    # "dann":I
    .local v1, "opcode":I
    .restart local v2    # "dann":I
    :pswitch_6
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .restart local v44    # "opcode":I
    .restart local v56    # "dann":I
    add-int/lit8 v11, v11, 0x5

    .line 1064
    goto :goto_43

    .line 1059
    .end local v44    # "opcode":I
    .end local v56    # "dann":I
    .restart local v1    # "opcode":I
    .restart local v2    # "dann":I
    :pswitch_7
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .restart local v44    # "opcode":I
    .restart local v56    # "dann":I
    add-int/lit8 v11, v11, 0x3

    .line 1060
    goto :goto_43

    .line 1052
    .end local v44    # "opcode":I
    .end local v56    # "dann":I
    .restart local v1    # "opcode":I
    .restart local v2    # "dann":I
    :pswitch_8
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .restart local v44    # "opcode":I
    .restart local v56    # "dann":I
    add-int/lit8 v11, v11, 0x2

    .line 1053
    goto :goto_43

    .line 982
    .end local v44    # "opcode":I
    .end local v56    # "dann":I
    .restart local v1    # "opcode":I
    .restart local v2    # "dann":I
    :pswitch_9
    move/from16 v44, v1

    move/from16 v56, v2

    .end local v1    # "opcode":I
    .end local v2    # "dann":I
    .restart local v44    # "opcode":I
    .restart local v56    # "dann":I
    add-int/lit8 v11, v11, 0x1

    .line 983
    nop

    .line 1070
    .end local v44    # "opcode":I
    :goto_43
    move/from16 v1, v33

    move/from16 v2, v56

    goto/16 :goto_40

    .line 1072
    .end local v33    # "codeEnd":I
    .end local v56    # "dann":I
    .local v1, "codeEnd":I
    .restart local v2    # "dann":I
    :cond_76
    move/from16 v33, v1

    move/from16 v56, v2

    .end local v1    # "codeEnd":I
    .end local v2    # "dann":I
    .restart local v33    # "codeEnd":I
    .restart local v56    # "dann":I
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1073
    .end local v13    # "j":I
    .local v1, "j":I
    add-int/lit8 v11, v11, 0x2

    .line 1074
    :goto_44
    if-lez v1, :cond_7b

    .line 1075
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1076
    .local v2, "label":I
    aget-object v13, v0, v2

    .line 1077
    .local v13, "start":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-nez v13, :cond_77

    .line 1078
    new-instance v43, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct/range {v43 .. v43}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    move-object/from16 v13, v43

    aput-object v43, v0, v2

    .line 1080
    :cond_77
    move/from16 v43, v2

    .end local v2    # "label":I
    .local v43, "label":I
    add-int/lit8 v2, v11, 0x2

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1081
    .end local v43    # "label":I
    .restart local v2    # "label":I
    aget-object v43, v0, v2

    .line 1082
    .local v43, "end":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-nez v43, :cond_78

    .line 1083
    new-instance v44, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct/range {v44 .. v44}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    move-object/from16 v43, v44

    aput-object v44, v0, v2

    move/from16 v44, v2

    move-object/from16 v2, v43

    goto :goto_45

    .line 1082
    :cond_78
    move/from16 v44, v2

    move-object/from16 v2, v43

    .line 1085
    .end local v43    # "end":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v2, "end":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v44, "label":I
    :goto_45
    move/from16 v43, v3

    .end local v3    # "u0":I
    .local v43, "u0":I
    add-int/lit8 v3, v11, 0x4

    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1086
    .end local v44    # "label":I
    .local v3, "label":I
    aget-object v44, v0, v3

    .line 1087
    .local v44, "handler":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-nez v44, :cond_79

    .line 1088
    new-instance v46, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct/range {v46 .. v46}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    move-object/from16 v44, v46

    aput-object v46, v0, v3

    move/from16 v46, v3

    move-object/from16 v3, v44

    goto :goto_46

    .line 1087
    :cond_79
    move/from16 v46, v3

    move-object/from16 v3, v44

    .line 1091
    .end local v44    # "handler":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v3, "handler":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v46, "label":I
    :goto_46
    move/from16 v44, v4

    .end local v4    # "maxStack":I
    .local v44, "maxStack":I
    add-int/lit8 v4, v11, 0x6

    invoke-virtual {v8, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1092
    .local v4, "type":I
    if-nez v4, :cond_7a

    .line 1093
    move-object/from16 v47, v5

    const/4 v5, 0x0

    .end local v5    # "signature":Ljava/lang/String;
    .local v47, "signature":Ljava/lang/String;
    invoke-interface {v6, v13, v2, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    goto :goto_47

    .line 1095
    .end local v47    # "signature":Ljava/lang/String;
    .restart local v5    # "signature":Ljava/lang/String;
    :cond_7a
    move-object/from16 v47, v5

    const/4 v5, 0x0

    .end local v5    # "signature":Ljava/lang/String;
    .restart local v47    # "signature":Ljava/lang/String;
    iget-object v5, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget v5, v5, v4

    .line 1098
    invoke-virtual {v8, v5, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1095
    invoke-interface {v6, v13, v2, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    .line 1100
    :goto_47
    nop

    .end local v2    # "end":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v3    # "handler":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v4    # "type":I
    .end local v13    # "start":Lorg/checkerframework/org/objectweb/asmx/Label;
    add-int/lit8 v11, v11, 0x8

    .line 1074
    add-int/lit8 v1, v1, -0x1

    move/from16 v3, v43

    move/from16 v4, v44

    move-object/from16 v5, v47

    goto :goto_44

    .line 1104
    .end local v43    # "u0":I
    .end local v44    # "maxStack":I
    .end local v46    # "label":I
    .end local v47    # "signature":Ljava/lang/String;
    .local v3, "u0":I
    .local v4, "maxStack":I
    .restart local v5    # "signature":Ljava/lang/String;
    :cond_7b
    move/from16 v43, v3

    move/from16 v44, v4

    move-object/from16 v47, v5

    .end local v3    # "u0":I
    .end local v4    # "maxStack":I
    .end local v5    # "signature":Ljava/lang/String;
    .restart local v43    # "u0":I
    .restart local v44    # "maxStack":I
    .restart local v47    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1105
    .local v2, "varTable":I
    const/4 v3, 0x0

    .line 1106
    .local v3, "varTypeTable":I
    const/4 v4, 0x0

    .line 1107
    .end local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v4, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1108
    add-int/lit8 v11, v11, 0x2

    move v9, v1

    move v13, v3

    move v5, v11

    move/from16 v46, v32

    move v11, v2

    move-object/from16 v32, v4

    .line 1109
    .end local v1    # "j":I
    .end local v2    # "varTable":I
    .end local v3    # "varTypeTable":I
    .end local v4    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v5, "v":I
    .local v9, "j":I
    .local v11, "varTable":I
    .local v13, "varTypeTable":I
    .local v32, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v46, "w":I
    :goto_48
    if-lez v9, :cond_8d

    .line 1110
    invoke-virtual {v8, v5, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1111
    .local v4, "attrName":Ljava/lang/String;
    const-string v1, "LocalVariableTable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1112
    if-nez p3, :cond_7f

    .line 1113
    add-int/lit8 v1, v5, 0x6

    .line 1114
    .end local v11    # "varTable":I
    .local v1, "varTable":I
    add-int/lit8 v2, v5, 0x6

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1115
    .local v2, "k":I
    add-int/lit8 v3, v5, 0x8

    .line 1116
    .end local v46    # "w":I
    .local v3, "w":I
    :goto_49
    if-lez v2, :cond_7e

    .line 1117
    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 1118
    .local v11, "label":I
    aget-object v46, v0, v11

    if-nez v46, :cond_7c

    .line 1119
    new-instance v46, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct/range {v46 .. v46}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v46, v0, v11

    .line 1121
    :cond_7c
    move/from16 v48, v1

    .end local v1    # "varTable":I
    .local v48, "varTable":I
    add-int/lit8 v1, v3, 0x2

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/2addr v11, v1

    .line 1122
    aget-object v1, v0, v11

    if-nez v1, :cond_7d

    .line 1123
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v1}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v1, v0, v11

    .line 1125
    :cond_7d
    add-int/lit8 v3, v3, 0xa

    .line 1116
    add-int/lit8 v2, v2, -0x1

    move/from16 v1, v48

    goto :goto_49

    .end local v11    # "label":I
    .end local v48    # "varTable":I
    .restart local v1    # "varTable":I
    :cond_7e
    move/from16 v48, v1

    .end local v1    # "varTable":I
    .restart local v48    # "varTable":I
    move/from16 v46, v3

    move/from16 v54, v5

    move-object/from16 v18, v12

    move/from16 v57, v23

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move/from16 v11, v48

    move/from16 v50, v52

    move/from16 v23, v53

    move/from16 v53, v56

    const/16 v43, 0x0

    const/16 v44, 0x1

    move-object/from16 v48, v7

    move/from16 v52, v14

    move-object/from16 v7, v32

    move-object/from16 v56, v42

    move-object/from16 v42, v0

    move-object/from16 v32, v4

    move-object v14, v6

    goto/16 :goto_50

    .line 1112
    .end local v2    # "k":I
    .end local v3    # "w":I
    .end local v48    # "varTable":I
    .local v11, "varTable":I
    .restart local v46    # "w":I
    :cond_7f
    move-object/from16 v50, v0

    move-object/from16 v48, v7

    goto/16 :goto_4b

    .line 1128
    :cond_80
    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1129
    add-int/lit8 v1, v5, 0x6

    move v13, v1

    move/from16 v54, v5

    move-object/from16 v48, v7

    move-object/from16 v18, v12

    move/from16 v57, v23

    move-object/from16 v7, v32

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move/from16 v50, v52

    move/from16 v23, v53

    move/from16 v53, v56

    const/16 v43, 0x0

    const/16 v44, 0x1

    move-object/from16 v32, v4

    move/from16 v52, v14

    move-object/from16 v56, v42

    move-object/from16 v42, v0

    move-object v14, v6

    .end local v13    # "varTypeTable":I
    .local v1, "varTypeTable":I
    goto/16 :goto_50

    .line 1130
    .end local v1    # "varTypeTable":I
    .restart local v13    # "varTypeTable":I
    :cond_81
    const-string v1, "LineNumberTable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1131
    if-nez p3, :cond_84

    .line 1132
    add-int/lit8 v1, v5, 0x6

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1133
    .local v1, "k":I
    add-int/lit8 v2, v5, 0x8

    .line 1134
    .end local v46    # "w":I
    .local v2, "w":I
    :goto_4a
    if-lez v1, :cond_83

    .line 1135
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1136
    .local v3, "label":I
    aget-object v46, v0, v3

    if-nez v46, :cond_82

    .line 1137
    new-instance v46, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct/range {v46 .. v46}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v46, v0, v3

    .line 1139
    :cond_82
    move-object/from16 v48, v7

    .end local v7    # "exceptions":[Ljava/lang/String;
    .local v48, "exceptions":[Ljava/lang/String;
    aget-object v7, v0, v3

    move-object/from16 v50, v0

    .end local v0    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v50, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    iput v0, v7, Lorg/checkerframework/org/objectweb/asmx/Label;->line:I

    .line 1140
    add-int/lit8 v2, v2, 0x4

    .line 1134
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v7, v48

    move-object/from16 v0, v50

    goto :goto_4a

    .end local v3    # "label":I
    .end local v48    # "exceptions":[Ljava/lang/String;
    .end local v50    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v0    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v7    # "exceptions":[Ljava/lang/String;
    :cond_83
    move-object/from16 v50, v0

    move-object/from16 v48, v7

    .end local v0    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v7    # "exceptions":[Ljava/lang/String;
    .restart local v48    # "exceptions":[Ljava/lang/String;
    .restart local v50    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    move/from16 v46, v2

    move/from16 v54, v5

    move-object/from16 v18, v12

    move/from16 v57, v23

    move-object/from16 v7, v32

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move/from16 v23, v53

    move/from16 v53, v56

    const/16 v43, 0x0

    const/16 v44, 0x1

    move-object/from16 v32, v4

    move-object/from16 v56, v42

    move-object/from16 v42, v50

    move/from16 v50, v52

    move/from16 v52, v14

    move-object v14, v6

    goto/16 :goto_50

    .line 1131
    .end local v1    # "k":I
    .end local v2    # "w":I
    .end local v48    # "exceptions":[Ljava/lang/String;
    .end local v50    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v0    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v7    # "exceptions":[Ljava/lang/String;
    .restart local v46    # "w":I
    :cond_84
    move-object/from16 v50, v0

    move-object/from16 v48, v7

    .line 1173
    :goto_4b
    move/from16 v54, v5

    move-object/from16 v18, v12

    move/from16 v57, v23

    move-object/from16 v7, v32

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move/from16 v23, v53

    move/from16 v53, v56

    const/16 v43, 0x0

    const/16 v44, 0x1

    move-object/from16 v32, v4

    move-object/from16 v56, v42

    move-object/from16 v42, v50

    move/from16 v50, v52

    move/from16 v52, v14

    move-object v14, v6

    .end local v0    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v7    # "exceptions":[Ljava/lang/String;
    .restart local v48    # "exceptions":[Ljava/lang/String;
    .restart local v50    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    goto/16 :goto_50

    .line 1143
    .end local v48    # "exceptions":[Ljava/lang/String;
    .end local v50    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v0    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v7    # "exceptions":[Ljava/lang/String;
    :cond_85
    move-object/from16 v50, v0

    move-object/from16 v48, v7

    .end local v0    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v7    # "exceptions":[Ljava/lang/String;
    .restart local v48    # "exceptions":[Ljava/lang/String;
    .restart local v50    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    move-object/from16 v7, v45

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1144
    add-int/lit8 v0, v5, 0x6

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1145
    .local v0, "k":I
    add-int/lit8 v1, v5, 0x8

    .line 1146
    .end local v46    # "w":I
    .local v1, "w":I
    :goto_4c
    if-lez v0, :cond_86

    .line 1147
    const/4 v3, 0x0

    invoke-direct {v8, v1, v10, v6, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readTypeAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;Z)I

    move-result v1

    .line 1146
    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    :cond_86
    const/4 v3, 0x0

    move/from16 v46, v1

    move/from16 v54, v5

    move-object/from16 v45, v7

    move-object/from16 v18, v12

    move/from16 v57, v23

    move-object/from16 v7, v32

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move/from16 v23, v53

    move/from16 v53, v56

    const/16 v44, 0x1

    move/from16 v43, v3

    move-object/from16 v32, v4

    move-object/from16 v56, v42

    move-object/from16 v42, v50

    move/from16 v50, v52

    move/from16 v52, v14

    move-object v14, v6

    goto/16 :goto_50

    .line 1150
    .end local v0    # "k":I
    .end local v1    # "w":I
    .restart local v46    # "w":I
    :cond_87
    const/4 v3, 0x0

    move-object/from16 v2, v42

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1151
    add-int/lit8 v0, v5, 0x6

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1152
    .restart local v0    # "k":I
    add-int/lit8 v1, v5, 0x8

    .line 1153
    .end local v46    # "w":I
    .restart local v1    # "w":I
    :goto_4d
    if-lez v0, :cond_88

    .line 1154
    move-object/from16 v45, v7

    const/4 v7, 0x1

    invoke-direct {v8, v1, v10, v6, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readTypeAnnotationValues(I[CLorg/checkerframework/org/objectweb/asmx/MemberVisitor;Z)I

    move-result v1

    .line 1153
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v7, v45

    goto :goto_4d

    :cond_88
    move-object/from16 v45, v7

    const/4 v7, 0x1

    move/from16 v46, v1

    move/from16 v54, v5

    move-object/from16 v18, v12

    move/from16 v57, v23

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move-object/from16 v42, v50

    move/from16 v50, v52

    move/from16 v23, v53

    move/from16 v53, v56

    move-object/from16 v56, v2

    move/from16 v43, v3

    move/from16 v44, v7

    move/from16 v52, v14

    move-object/from16 v7, v32

    move-object/from16 v32, v4

    move-object v14, v6

    goto/16 :goto_50

    .line 1158
    .end local v0    # "k":I
    .end local v1    # "w":I
    .restart local v46    # "w":I
    :cond_89
    move-object/from16 v45, v7

    const/4 v7, 0x1

    const/4 v0, 0x0

    move v1, v0

    move-object/from16 v0, v32

    .end local v32    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v0, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v1, "k":I
    :goto_4e
    move-object/from16 v7, p2

    array-length v3, v7

    if-ge v1, v3, :cond_8c

    .line 1159
    aget-object v3, v7, v1

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1160
    aget-object v3, v7, v1

    add-int/lit8 v32, v5, 0x6

    move-object/from16 v42, v0

    .end local v0    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v42, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    add-int/lit8 v0, v5, 0x2

    .line 1162
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v54

    add-int/lit8 v55, v25, -0x8

    .line 1160
    move-object/from16 v7, v42

    move-object/from16 v42, v50

    move/from16 v50, v52

    .end local v52    # "impanns":I
    .local v7, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v42, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v50, "impanns":I
    move-object v0, v3

    move-object/from16 v18, v12

    move/from16 v52, v14

    move/from16 v3, v23

    move/from16 v12, v33

    move/from16 v23, v53

    const/4 v14, 0x0

    move/from16 v33, v1

    .end local v1    # "k":I
    .end local v14    # "access":I
    .end local v53    # "mpanns":I
    .local v3, "maxLocals":I
    .local v12, "codeEnd":I
    .local v18, "desc":Ljava/lang/String;
    .local v23, "mpanns":I
    .local v33, "k":I
    .local v52, "access":I
    move-object/from16 v1, p0

    move/from16 v53, v56

    move-object/from16 v56, v2

    .end local v56    # "dann":I
    .local v53, "dann":I
    move/from16 v2, v32

    move/from16 v57, v3

    move/from16 v17, v43

    const/16 v43, 0x0

    .end local v3    # "maxLocals":I
    .end local v43    # "u0":I
    .local v17, "u0":I
    .local v57, "maxLocals":I
    move/from16 v3, v54

    move-object/from16 v32, v4

    move/from16 v58, v44

    const/16 v44, 0x1

    .end local v4    # "attrName":Ljava/lang/String;
    .end local v44    # "maxStack":I
    .local v32, "attrName":Ljava/lang/String;
    .local v58, "maxStack":I
    move-object v4, v10

    move/from16 v54, v5

    .end local v5    # "v":I
    .local v54, "v":I
    move/from16 v5, v55

    move-object v14, v6

    .end local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .local v14, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    move-object/from16 v6, v42

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v0

    .line 1166
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    if-eqz v0, :cond_8b

    .line 1167
    iput-object v7, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 1168
    move-object v1, v0

    .end local v7    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v1, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    goto :goto_4f

    .line 1159
    .end local v17    # "u0":I
    .end local v18    # "desc":Ljava/lang/String;
    .end local v32    # "attrName":Ljava/lang/String;
    .end local v42    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "v":I
    .end local v57    # "maxLocals":I
    .end local v58    # "maxStack":I
    .local v0, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v1, "k":I
    .restart local v4    # "attrName":Ljava/lang/String;
    .restart local v5    # "v":I
    .restart local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .local v12, "desc":Ljava/lang/String;
    .local v14, "access":I
    .local v23, "maxLocals":I
    .local v33, "codeEnd":I
    .restart local v43    # "u0":I
    .restart local v44    # "maxStack":I
    .local v50, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v52, "impanns":I
    .local v53, "mpanns":I
    .restart local v56    # "dann":I
    :cond_8a
    move-object v7, v0

    move-object/from16 v32, v4

    move/from16 v54, v5

    move-object/from16 v18, v12

    move/from16 v57, v23

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move-object/from16 v42, v50

    move/from16 v50, v52

    move/from16 v23, v53

    move/from16 v53, v56

    const/16 v43, 0x0

    const/16 v44, 0x1

    move/from16 v33, v1

    move-object/from16 v56, v2

    move/from16 v52, v14

    move-object v14, v6

    .line 1158
    .end local v0    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v1    # "k":I
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v5    # "v":I
    .end local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .end local v43    # "u0":I
    .end local v44    # "maxStack":I
    .end local v56    # "dann":I
    .restart local v7    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v12, "codeEnd":I
    .local v14, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .restart local v17    # "u0":I
    .restart local v18    # "desc":Ljava/lang/String;
    .local v23, "mpanns":I
    .restart local v32    # "attrName":Ljava/lang/String;
    .local v33, "k":I
    .restart local v42    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v50, "impanns":I
    .local v52, "access":I
    .local v53, "dann":I
    .restart local v54    # "v":I
    .restart local v57    # "maxLocals":I
    .restart local v58    # "maxStack":I
    :cond_8b
    move-object v0, v7

    .end local v7    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v0    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :goto_4f
    add-int/lit8 v1, v33, 0x1

    move/from16 v33, v12

    move-object v6, v14

    move-object/from16 v12, v18

    move-object/from16 v4, v32

    move/from16 v3, v43

    move/from16 v7, v44

    move/from16 v14, v52

    move/from16 v5, v54

    move-object/from16 v2, v56

    move/from16 v44, v58

    move/from16 v43, v17

    move/from16 v52, v50

    move/from16 v56, v53

    move/from16 v53, v23

    move-object/from16 v50, v42

    move/from16 v23, v57

    .end local v33    # "k":I
    .restart local v1    # "k":I
    goto/16 :goto_4e

    .end local v17    # "u0":I
    .end local v18    # "desc":Ljava/lang/String;
    .end local v32    # "attrName":Ljava/lang/String;
    .end local v42    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "v":I
    .end local v57    # "maxLocals":I
    .end local v58    # "maxStack":I
    .restart local v4    # "attrName":Ljava/lang/String;
    .restart local v5    # "v":I
    .restart local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .local v12, "desc":Ljava/lang/String;
    .local v14, "access":I
    .local v23, "maxLocals":I
    .local v33, "codeEnd":I
    .restart local v43    # "u0":I
    .restart local v44    # "maxStack":I
    .local v50, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v52, "impanns":I
    .local v53, "mpanns":I
    .restart local v56    # "dann":I
    :cond_8c
    move-object v7, v0

    move-object/from16 v32, v4

    move/from16 v54, v5

    move-object/from16 v18, v12

    move/from16 v57, v23

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move-object/from16 v42, v50

    move/from16 v50, v52

    move/from16 v23, v53

    move/from16 v53, v56

    const/16 v43, 0x0

    const/16 v44, 0x1

    move/from16 v33, v1

    move-object/from16 v56, v2

    move/from16 v52, v14

    move-object v14, v6

    .line 1173
    .end local v0    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v1    # "k":I
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v5    # "v":I
    .end local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .end local v33    # "codeEnd":I
    .end local v43    # "u0":I
    .end local v44    # "maxStack":I
    .end local v56    # "dann":I
    .restart local v7    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v12, "codeEnd":I
    .local v14, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .restart local v17    # "u0":I
    .restart local v18    # "desc":Ljava/lang/String;
    .local v23, "mpanns":I
    .restart local v32    # "attrName":Ljava/lang/String;
    .restart local v42    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v50, "impanns":I
    .local v52, "access":I
    .local v53, "dann":I
    .restart local v54    # "v":I
    .restart local v57    # "maxLocals":I
    .restart local v58    # "maxStack":I
    :goto_50
    add-int/lit8 v5, v54, 0x2

    invoke-virtual {v8, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int v5, v54, v0

    .line 1109
    .end local v54    # "v":I
    .restart local v5    # "v":I
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v32, v7

    move/from16 v33, v12

    move-object v6, v14

    move/from16 v43, v17

    move-object/from16 v12, v18

    move-object/from16 v0, v42

    move-object/from16 v7, v48

    move/from16 v14, v52

    move-object/from16 v42, v56

    move/from16 v44, v58

    move/from16 v52, v50

    move/from16 v56, v53

    move/from16 v53, v23

    move/from16 v23, v57

    goto/16 :goto_48

    .line 1177
    .end local v17    # "u0":I
    .end local v18    # "desc":Ljava/lang/String;
    .end local v42    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v48    # "exceptions":[Ljava/lang/String;
    .end local v50    # "impanns":I
    .end local v57    # "maxLocals":I
    .end local v58    # "maxStack":I
    .local v0, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .local v7, "exceptions":[Ljava/lang/String;
    .local v12, "desc":Ljava/lang/String;
    .local v14, "access":I
    .local v23, "maxLocals":I
    .local v32, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v33    # "codeEnd":I
    .restart local v43    # "u0":I
    .restart local v44    # "maxStack":I
    .local v52, "impanns":I
    .local v53, "mpanns":I
    .restart local v56    # "dann":I
    :cond_8d
    move/from16 v54, v5

    move-object/from16 v48, v7

    move-object/from16 v18, v12

    move/from16 v57, v23

    move/from16 v12, v33

    move/from16 v17, v43

    move/from16 v58, v44

    move/from16 v50, v52

    move/from16 v23, v53

    move/from16 v53, v56

    const/16 v43, 0x0

    const/16 v44, 0x1

    move/from16 v52, v14

    move-object/from16 v56, v42

    move-object/from16 v42, v0

    move-object v14, v6

    .end local v0    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v5    # "v":I
    .end local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .end local v7    # "exceptions":[Ljava/lang/String;
    .end local v33    # "codeEnd":I
    .end local v43    # "u0":I
    .end local v44    # "maxStack":I
    .end local v56    # "dann":I
    .local v12, "codeEnd":I
    .local v14, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .restart local v17    # "u0":I
    .restart local v18    # "desc":Ljava/lang/String;
    .local v23, "mpanns":I
    .restart local v42    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v48    # "exceptions":[Ljava/lang/String;
    .restart local v50    # "impanns":I
    .local v52, "access":I
    .local v53, "dann":I
    .restart local v54    # "v":I
    .restart local v57    # "maxLocals":I
    .restart local v58    # "maxStack":I
    move/from16 v0, v25

    .line 1178
    .end local v54    # "v":I
    .local v0, "v":I
    instance-of v1, v14, Lorg/checkerframework/org/objectweb/asmx/PrecompiledMethodVisitor;

    if-eqz v1, :cond_8e

    move-object v1, v14

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/PrecompiledMethodVisitor;

    goto :goto_51

    :cond_8e
    const/4 v1, 0x0

    :goto_51
    move-object v7, v1

    move/from16 v33, v9

    move v9, v0

    .line 1182
    .end local v0    # "v":I
    .local v7, "pmv":Lorg/checkerframework/org/objectweb/asmx/PrecompiledMethodVisitor;
    .local v9, "v":I
    .local v33, "j":I
    :goto_52
    if-ge v9, v12, :cond_98

    .line 1183
    sub-int v0, v9, v25

    .line 1184
    .end local v46    # "w":I
    .local v0, "w":I
    if-eqz v7, :cond_8f

    .line 1185
    invoke-interface {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/PrecompiledMethodVisitor;->visitCurrentPosition(I)V

    .line 1186
    :cond_8f
    aget-object v1, v42, v0

    .line 1187
    .local v1, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-eqz v1, :cond_90

    .line 1188
    invoke-interface {v14, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1189
    if-nez p3, :cond_90

    iget v2, v1, Lorg/checkerframework/org/objectweb/asmx/Label;->line:I

    if-lez v2, :cond_90

    .line 1190
    iget v2, v1, Lorg/checkerframework/org/objectweb/asmx/Label;->line:I

    invoke-interface {v14, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1193
    :cond_90
    aget-byte v2, v31, v9

    and-int/lit16 v2, v2, 0xff

    .line 1194
    .local v2, "opcode":I
    sget-object v3, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->TYPE:[B

    aget-byte v3, v3, v2

    packed-switch v3, :pswitch_data_1

    .line 1339
    :pswitch_a
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .local v46, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v54, "u":I
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v1, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v9, 0x3

    aget-byte v3, v31, v3

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v14, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 1341
    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_58

    .line 1321
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_b
    iget-object v3, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v8, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    .line 1322
    .local v3, "cpIndex":I
    iget-object v4, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->bootstrapMethods:[I

    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v4, v4, v5

    .line 1323
    .local v4, "bsmIndex":I
    invoke-virtual {v8, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v8, v5, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/objectweb/asmx/Handle;

    .line 1324
    .local v5, "bsm":Lorg/checkerframework/org/objectweb/asmx/Handle;
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v8, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 1325
    .local v6, "bsmArgCount":I
    move-object/from16 v46, v1

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    new-array v1, v6, [Ljava/lang/Object;

    .line 1326
    .local v1, "bsmArgs":[Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x4

    .line 1327
    const/16 v33, 0x0

    move/from16 v54, v15

    move/from16 v15, v33

    .end local v33    # "j":I
    .local v15, "j":I
    .restart local v54    # "u":I
    :goto_53
    if-ge v15, v6, :cond_91

    .line 1328
    move/from16 v55, v6

    .end local v6    # "bsmArgCount":I
    .local v55, "bsmArgCount":I
    invoke-virtual {v8, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {v8, v6, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v15

    .line 1329
    add-int/lit8 v4, v4, 0x2

    .line 1327
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v55

    goto :goto_53

    .line 1331
    .end local v55    # "bsmArgCount":I
    .restart local v6    # "bsmArgCount":I
    :cond_91
    move/from16 v55, v6

    .end local v6    # "bsmArgCount":I
    .restart local v55    # "bsmArgCount":I
    iget-object v6, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    move/from16 v33, v4

    .end local v4    # "bsmIndex":I
    .local v33, "bsmIndex":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v8, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v6, v4

    .line 1332
    invoke-virtual {v8, v3, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1333
    .local v4, "iname":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v8, v6, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1334
    .local v6, "idesc":Ljava/lang/String;
    invoke-interface {v14, v4, v6, v5, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    .line 1335
    add-int/lit8 v9, v9, 0x5

    .line 1336
    move/from16 v33, v15

    goto/16 :goto_58

    .line 1222
    .end local v3    # "cpIndex":I
    .end local v4    # "iname":Ljava/lang/String;
    .end local v5    # "bsm":Lorg/checkerframework/org/objectweb/asmx/Handle;
    .end local v6    # "idesc":Ljava/lang/String;
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .end local v55    # "bsmArgCount":I
    .local v1, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v15, "u":I
    .local v33, "j":I
    :pswitch_c
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    aget-byte v1, v31, v1

    and-int/lit16 v1, v1, 0xff

    .line 1223
    .end local v2    # "opcode":I
    .local v1, "opcode":I
    const/16 v2, 0x84

    if-ne v1, v2, :cond_92

    .line 1224
    add-int/lit8 v2, v9, 0x2

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, v9, 0x4

    .line 1225
    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readShort(I)S

    move-result v3

    .line 1224
    invoke-interface {v14, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 1226
    add-int/lit8 v9, v9, 0x6

    goto/16 :goto_58

    .line 1228
    :cond_92
    add-int/lit8 v2, v9, 0x2

    .line 1229
    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1228
    invoke-interface {v14, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 1230
    add-int/lit8 v9, v9, 0x4

    .line 1232
    goto/16 :goto_58

    .line 1255
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .local v1, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v2    # "opcode":I
    .restart local v15    # "u":I
    :pswitch_d
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x4

    and-int/lit8 v3, v0, 0x3

    sub-int/2addr v1, v3

    .line 1257
    .end local v9    # "v":I
    .local v1, "v":I
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 1258
    .local v3, "label":I
    add-int/lit8 v1, v1, 0x4

    .line 1259
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v4

    .line 1260
    .end local v33    # "j":I
    .local v4, "j":I
    add-int/lit8 v1, v1, 0x4

    .line 1261
    new-array v5, v4, [I

    .line 1262
    .local v5, "keys":[I
    new-array v6, v4, [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1263
    .local v6, "values":[Lorg/checkerframework/org/objectweb/asmx/Label;
    const/4 v4, 0x0

    :goto_54
    array-length v9, v5

    if-ge v4, v9, :cond_93

    .line 1264
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v9

    aput v9, v5, v4

    .line 1265
    add-int/lit8 v1, v1, 0x4

    .line 1266
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v9

    add-int/2addr v9, v0

    aget-object v9, v42, v9

    aput-object v9, v6, v4

    .line 1267
    add-int/lit8 v1, v1, 0x4

    .line 1263
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 1269
    :cond_93
    aget-object v9, v42, v3

    invoke-interface {v14, v9, v5, v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1272
    move v9, v1

    move/from16 v33, v4

    goto/16 :goto_58

    .line 1235
    .end local v3    # "label":I
    .end local v4    # "j":I
    .end local v5    # "keys":[I
    .end local v6    # "values":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .local v1, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v9    # "v":I
    .restart local v15    # "u":I
    .restart local v33    # "j":I
    :pswitch_e
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x4

    and-int/lit8 v3, v0, 0x3

    sub-int/2addr v1, v3

    .line 1237
    .end local v9    # "v":I
    .local v1, "v":I
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 1238
    .restart local v3    # "label":I
    add-int/lit8 v1, v1, 0x4

    .line 1239
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v4

    .line 1240
    .local v4, "min":I
    add-int/lit8 v1, v1, 0x4

    .line 1241
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v5

    .line 1242
    .local v5, "max":I
    add-int/lit8 v1, v1, 0x4

    .line 1243
    sub-int v6, v5, v4

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1244
    .local v6, "table":[Lorg/checkerframework/org/objectweb/asmx/Label;
    const/4 v9, 0x0

    .end local v33    # "j":I
    .local v9, "j":I
    :goto_55
    array-length v15, v6

    if-ge v9, v15, :cond_94

    .line 1245
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v15

    add-int/2addr v15, v0

    aget-object v15, v42, v15

    aput-object v15, v6, v9

    .line 1246
    add-int/lit8 v1, v1, 0x4

    .line 1244
    add-int/lit8 v9, v9, 0x1

    goto :goto_55

    .line 1248
    :cond_94
    aget-object v15, v42, v3

    invoke-interface {v14, v4, v5, v15, v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1252
    move/from16 v33, v9

    move v9, v1

    goto/16 :goto_58

    .line 1317
    .end local v3    # "label":I
    .end local v4    # "min":I
    .end local v5    # "max":I
    .end local v6    # "table":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .local v1, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .local v9, "v":I
    .restart local v15    # "u":I
    .restart local v33    # "j":I
    :pswitch_f
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    aget-byte v1, v31, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v9, 0x2

    aget-byte v3, v31, v3

    invoke-interface {v14, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 1318
    add-int/lit8 v9, v9, 0x3

    .line 1319
    goto/16 :goto_58

    .line 1290
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_10
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {v8, v1, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1292
    add-int/lit8 v9, v9, 0x3

    .line 1293
    goto/16 :goto_58

    .line 1286
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_11
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    aget-byte v1, v31, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v8, v1, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1287
    add-int/lit8 v9, v9, 0x2

    .line 1288
    goto/16 :goto_58

    .line 1217
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_12
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v2, -0x21

    add-int/lit8 v3, v9, 0x1

    .line 1218
    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v0

    aget-object v3, v42, v3

    .line 1217
    invoke-interface {v14, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1219
    add-int/lit8 v9, v9, 0x5

    .line 1220
    goto/16 :goto_58

    .line 1212
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_13
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    .line 1213
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readShort(I)S

    move-result v1

    add-int/2addr v1, v0

    aget-object v1, v42, v1

    .line 1212
    invoke-interface {v14, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1214
    add-int/lit8 v9, v9, 0x3

    .line 1215
    goto/16 :goto_58

    .line 1296
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_14
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    iget-object v1, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v1, v1, v3

    .line 1297
    .local v1, "cpIndex":I
    invoke-virtual {v8, v1, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1298
    .local v3, "iowner":Ljava/lang/String;
    iget-object v4, v8, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v8, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v1, v4, v5

    .line 1299
    invoke-virtual {v8, v1, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1300
    .local v4, "iname":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v8, v5, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1301
    .local v5, "idesc":Ljava/lang/String;
    const/16 v6, 0xb6

    if-ge v2, v6, :cond_95

    .line 1302
    invoke-interface {v14, v2, v3, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 1304
    :cond_95
    invoke-interface {v14, v2, v3, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :goto_56
    const/16 v6, 0xb9

    if-ne v2, v6, :cond_96

    .line 1307
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_58

    .line 1309
    :cond_96
    add-int/lit8 v9, v9, 0x3

    .line 1311
    goto/16 :goto_58

    .line 1313
    .end local v3    # "iowner":Ljava/lang/String;
    .end local v4    # "iname":Ljava/lang/String;
    .end local v5    # "idesc":Ljava/lang/String;
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .local v1, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_15
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v1, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1314
    add-int/lit8 v9, v9, 0x3

    .line 1315
    goto :goto_58

    .line 1200
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_16
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    const/16 v1, 0x36

    if-le v2, v1, :cond_97

    .line 1201
    add-int/lit8 v2, v2, -0x3b

    .line 1202
    shr-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x36

    and-int/lit8 v3, v2, 0x3

    invoke-interface {v14, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    goto :goto_57

    .line 1205
    :cond_97
    add-int/lit8 v2, v2, -0x1a

    .line 1206
    shr-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x15

    and-int/lit8 v3, v2, 0x3

    invoke-interface {v14, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 1209
    :goto_57
    add-int/lit8 v9, v9, 0x1

    .line 1210
    goto :goto_58

    .line 1274
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_17
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    aget-byte v1, v31, v1

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v14, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 1275
    add-int/lit8 v9, v9, 0x2

    .line 1276
    goto :goto_58

    .line 1282
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_18
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readShort(I)S

    move-result v1

    invoke-interface {v14, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 1283
    add-int/lit8 v9, v9, 0x3

    .line 1284
    goto :goto_58

    .line 1278
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_19
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    add-int/lit8 v1, v9, 0x1

    aget-byte v1, v31, v1

    invoke-interface {v14, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 1279
    add-int/lit8 v9, v9, 0x2

    .line 1280
    goto :goto_58

    .line 1196
    .end local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v54    # "u":I
    .restart local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v15    # "u":I
    :pswitch_1a
    move-object/from16 v46, v1

    move/from16 v54, v15

    .end local v1    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v15    # "u":I
    .restart local v46    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .restart local v54    # "u":I
    invoke-interface {v14, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 1197
    add-int/lit8 v9, v9, 0x1

    .line 1198
    nop

    .line 1344
    .end local v2    # "opcode":I
    :goto_58
    move/from16 v46, v0

    move/from16 v15, v54

    goto/16 :goto_52

    .line 1345
    .end local v0    # "w":I
    .end local v54    # "u":I
    .restart local v15    # "u":I
    .local v46, "w":I
    :cond_98
    move/from16 v54, v15

    .end local v15    # "u":I
    .restart local v54    # "u":I
    sub-int v1, v12, v25

    aget-object v15, v42, v1

    .line 1346
    .local v15, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-eqz v15, :cond_9a

    .line 1347
    if-eqz v7, :cond_99

    .line 1348
    sub-int v1, v12, v25

    invoke-interface {v7, v1}, Lorg/checkerframework/org/objectweb/asmx/PrecompiledMethodVisitor;->visitCurrentPosition(I)V

    .line 1349
    :cond_99
    invoke-interface {v14, v15}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1353
    :cond_9a
    if-nez p3, :cond_a0

    if-eqz v11, :cond_a0

    .line 1354
    const/4 v0, 0x0

    .line 1355
    .local v0, "typeTable":[I
    if-eqz v13, :cond_9c

    .line 1356
    move v1, v13

    .line 1357
    .end local v46    # "w":I
    .local v1, "w":I
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    .line 1358
    .local v2, "k":I
    add-int/lit8 v1, v1, 0x2

    .line 1359
    new-array v0, v2, [I

    .line 1360
    :goto_59
    if-lez v2, :cond_9b

    .line 1361
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v1, 0x6

    aput v3, v0, v2

    .line 1362
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v1, 0x8

    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aput v3, v0, v2

    .line 1363
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aput v3, v0, v2

    .line 1364
    add-int/lit8 v1, v1, 0xa

    goto :goto_59

    .line 1360
    :cond_9b
    move-object v6, v0

    move/from16 v46, v1

    goto :goto_5a

    .line 1355
    .end local v1    # "w":I
    .end local v2    # "k":I
    .restart local v46    # "w":I
    :cond_9c
    move-object v6, v0

    .line 1367
    .end local v0    # "typeTable":[I
    .local v6, "typeTable":[I
    :goto_5a
    move v0, v11

    .line 1368
    .end local v46    # "w":I
    .local v0, "w":I
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1369
    .local v1, "k":I
    add-int/lit8 v0, v0, 0x2

    move v5, v0

    move/from16 v46, v1

    .line 1370
    .end local v0    # "w":I
    .end local v1    # "k":I
    .local v5, "w":I
    .local v46, "k":I
    :goto_5b
    if-lez v46, :cond_9f

    .line 1371
    invoke-virtual {v8, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1372
    .local v4, "start":I
    add-int/lit8 v0, v5, 0x2

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v55

    .line 1373
    .local v55, "length":I
    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1374
    .local v3, "index":I
    const/4 v0, 0x0

    .line 1375
    .local v0, "vsignature":Ljava/lang/String;
    if-eqz v6, :cond_9e

    .line 1376
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_5c
    array-length v2, v6

    if-ge v1, v2, :cond_9e

    .line 1377
    aget v2, v6, v1

    if-ne v2, v4, :cond_9d

    add-int/lit8 v2, v1, 0x1

    aget v2, v6, v2

    if-ne v2, v3, :cond_9d

    .line 1380
    add-int/lit8 v2, v1, 0x2

    aget v2, v6, v2

    invoke-virtual {v8, v2, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 1381
    move-object/from16 v59, v0

    goto :goto_5d

    .line 1376
    :cond_9d
    add-int/lit8 v1, v1, 0x3

    goto :goto_5c

    .line 1385
    .end local v1    # "a":I
    :cond_9e
    move-object/from16 v59, v0

    .end local v0    # "vsignature":Ljava/lang/String;
    .local v59, "vsignature":Ljava/lang/String;
    :goto_5d
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v8, v0, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v5, 0x6

    .line 1386
    invoke-virtual {v8, v0, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    aget-object v60, v42, v4

    add-int v0, v4, v55

    aget-object v61, v42, v0

    .line 1385
    move-object v0, v14

    move/from16 v62, v3

    .end local v3    # "index":I
    .local v62, "index":I
    move-object/from16 v3, v59

    move/from16 v63, v4

    .end local v4    # "start":I
    .local v63, "start":I
    move-object/from16 v4, v60

    move/from16 v60, v5

    .end local v5    # "w":I
    .local v60, "w":I
    move-object/from16 v5, v61

    move-object/from16 v61, v6

    .end local v6    # "typeTable":[I
    .local v61, "typeTable":[I
    move/from16 v6, v62

    invoke-interface/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 1391
    nop

    .end local v55    # "length":I
    .end local v59    # "vsignature":Ljava/lang/String;
    .end local v62    # "index":I
    .end local v63    # "start":I
    add-int/lit8 v5, v60, 0xa

    .line 1370
    .end local v60    # "w":I
    .restart local v5    # "w":I
    add-int/lit8 v46, v46, -0x1

    move-object/from16 v6, v61

    goto :goto_5b

    .end local v61    # "typeTable":[I
    .restart local v6    # "typeTable":[I
    :cond_9f
    move/from16 v60, v5

    move-object/from16 v61, v6

    .end local v5    # "w":I
    .end local v6    # "typeTable":[I
    .restart local v60    # "w":I
    .restart local v61    # "typeTable":[I
    move-object/from16 v0, v32

    goto :goto_5e

    .line 1395
    .end local v60    # "w":I
    .end local v61    # "typeTable":[I
    .local v46, "w":I
    :cond_a0
    move-object/from16 v0, v32

    move/from16 v60, v46

    .end local v32    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v46    # "w":I
    .local v0, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .restart local v60    # "w":I
    :goto_5e
    if-eqz v0, :cond_a1

    .line 1396
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 1397
    .local v1, "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 1398
    invoke-interface {v14, v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 1399
    move-object v0, v1

    goto :goto_5e

    .line 1402
    .end local v1    # "attr":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :cond_a1
    const/4 v2, 0x0

    move/from16 v3, v57

    move/from16 v1, v58

    .end local v57    # "maxLocals":I
    .end local v58    # "maxStack":I
    .local v1, "maxStack":I
    .local v3, "maxLocals":I
    invoke-interface {v14, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    move v5, v9

    move/from16 v11, v33

    move/from16 v13, v60

    move-object v9, v0

    goto :goto_60

    .line 963
    .end local v17    # "u0":I
    .end local v18    # "desc":Ljava/lang/String;
    .end local v23    # "mpanns":I
    .end local v24    # "codeLength":I
    .end local v25    # "codeStart":I
    .end local v33    # "j":I
    .end local v42    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v47    # "signature":Ljava/lang/String;
    .end local v48    # "exceptions":[Ljava/lang/String;
    .end local v50    # "impanns":I
    .end local v53    # "dann":I
    .end local v54    # "u":I
    .end local v60    # "w":I
    .local v0, "v":I
    .local v1, "mpanns":I
    .local v2, "dann":I
    .local v3, "u0":I
    .local v5, "signature":Ljava/lang/String;
    .local v6, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .local v7, "exceptions":[Ljava/lang/String;
    .local v9, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .local v11, "j":I
    .local v12, "desc":Ljava/lang/String;
    .local v13, "w":I
    .local v14, "access":I
    .local v15, "u":I
    .local v52, "impanns":I
    :cond_a2
    move/from16 v23, v1

    move/from16 v53, v2

    move/from16 v17, v3

    move-object/from16 v47, v5

    move-object/from16 v48, v7

    move-object/from16 v18, v12

    move/from16 v54, v15

    move-object/from16 v56, v42

    move/from16 v50, v52

    const/4 v2, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x1

    move/from16 v52, v14

    move-object v14, v6

    .end local v1    # "mpanns":I
    .end local v2    # "dann":I
    .end local v3    # "u0":I
    .end local v5    # "signature":Ljava/lang/String;
    .end local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .end local v7    # "exceptions":[Ljava/lang/String;
    .end local v12    # "desc":Ljava/lang/String;
    .end local v15    # "u":I
    .local v14, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .restart local v17    # "u0":I
    .restart local v18    # "desc":Ljava/lang/String;
    .restart local v23    # "mpanns":I
    .restart local v47    # "signature":Ljava/lang/String;
    .restart local v48    # "exceptions":[Ljava/lang/String;
    .restart local v50    # "impanns":I
    .local v52, "access":I
    .restart local v53    # "dann":I
    .restart local v54    # "u":I
    goto :goto_5f

    .end local v0    # "v":I
    .end local v17    # "u0":I
    .end local v18    # "desc":Ljava/lang/String;
    .end local v23    # "mpanns":I
    .end local v47    # "signature":Ljava/lang/String;
    .end local v48    # "exceptions":[Ljava/lang/String;
    .end local v50    # "impanns":I
    .end local v53    # "dann":I
    .end local v54    # "u":I
    .restart local v1    # "mpanns":I
    .restart local v2    # "dann":I
    .restart local v3    # "u0":I
    .restart local v5    # "signature":Ljava/lang/String;
    .restart local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .restart local v7    # "exceptions":[Ljava/lang/String;
    .restart local v12    # "desc":Ljava/lang/String;
    .local v14, "access":I
    .restart local v15    # "u":I
    .local v52, "impanns":I
    .local v55, "v":I
    :cond_a3
    move/from16 v23, v1

    move/from16 v53, v2

    move/from16 v17, v3

    move-object/from16 v47, v5

    move-object/from16 v48, v7

    move-object/from16 v18, v12

    move/from16 v54, v15

    move-object/from16 v56, v42

    move/from16 v50, v52

    move/from16 v0, v55

    const/4 v2, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x1

    move/from16 v52, v14

    move-object v14, v6

    .line 1405
    .end local v1    # "mpanns":I
    .end local v2    # "dann":I
    .end local v3    # "u0":I
    .end local v5    # "signature":Ljava/lang/String;
    .end local v6    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .end local v7    # "exceptions":[Ljava/lang/String;
    .end local v12    # "desc":Ljava/lang/String;
    .end local v15    # "u":I
    .end local v55    # "v":I
    .restart local v0    # "v":I
    .local v14, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .restart local v17    # "u0":I
    .restart local v18    # "desc":Ljava/lang/String;
    .restart local v23    # "mpanns":I
    .restart local v47    # "signature":Ljava/lang/String;
    .restart local v48    # "exceptions":[Ljava/lang/String;
    .restart local v50    # "impanns":I
    .local v52, "access":I
    .restart local v53    # "dann":I
    .restart local v54    # "u":I
    :goto_5f
    move v5, v0

    .end local v0    # "v":I
    .local v5, "v":I
    :goto_60
    if-eqz v14, :cond_a4

    .line 1406
    invoke-interface {v14}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitEnd()V

    .line 778
    .end local v14    # "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .end local v17    # "u0":I
    .end local v23    # "mpanns":I
    .end local v48    # "exceptions":[Ljava/lang/String;
    .end local v50    # "impanns":I
    .end local v53    # "dann":I
    :cond_a4
    move-object/from16 v25, v9

    move/from16 v23, v13

    move-object/from16 v12, v18

    move/from16 v18, v5

    .end local v5    # "v":I
    .end local v9    # "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .end local v13    # "w":I
    .restart local v12    # "desc":Ljava/lang/String;
    .local v18, "v":I
    .local v23, "w":I
    .local v25, "cattrs":Lorg/checkerframework/org/objectweb/asmx/Attribute;
    :goto_61
    add-int/lit8 v9, v30, -0x1

    move-object v3, v2

    move-object v7, v10

    move-object/from16 v50, v35

    move-object/from16 v48, v41

    move/from16 v4, v44

    move-object/from16 v24, v47

    move/from16 v6, v52

    move/from16 v11, v54

    move-object/from16 v13, v56

    move-object/from16 v47, v38

    .end local v30    # "i":I
    .local v9, "i":I
    goto/16 :goto_2a

    .line 1411
    .end local v10    # "c":[C
    .end local v12    # "desc":Ljava/lang/String;
    .end local v47    # "signature":Ljava/lang/String;
    .end local v52    # "access":I
    .end local v54    # "u":I
    .local v6, "access":I
    .local v7, "c":[C
    .local v11, "u":I
    .local v24, "signature":Ljava/lang/String;
    :cond_a5
    invoke-interface/range {p1 .. p1}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitEnd()V

    .line 1412
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method copyPool(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;)V
    .locals 14
    .param p1, "classWriter"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 230
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->maxStringLength:I

    new-array v0, v0, [C

    .line 231
    .local v0, "buf":[C
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    array-length v1, v1

    .line 232
    .local v1, "ll":I
    new-array v2, v1, [Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 233
    .local v2, "items2":[Lorg/checkerframework/org/objectweb/asmx/Item;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    .line 234
    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget v5, v5, v3

    .line 235
    .local v5, "index":I
    iget-object v6, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    add-int/lit8 v7, v5, -0x1

    aget-byte v6, v6, v7

    .line 236
    .local v6, "tag":I
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v7, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(I)V

    .line 238
    .local v7, "item":Lorg/checkerframework/org/objectweb/asmx/Item;
    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_0

    .line 307
    :pswitch_0
    invoke-virtual {p0, v5, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9, v8, v8}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 295
    :pswitch_1
    iget-object v8, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-nez v8, :cond_0

    .line 296
    invoke-direct {p0, p1, v2, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->copyBootstrapMethods(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[Lorg/checkerframework/org/objectweb/asmx/Item;[C)V

    .line 298
    :cond_0
    iget-object v8, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 299
    .local v8, "nameType":I
    invoke-virtual {p0, v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v8, 0x2

    .line 300
    invoke-virtual {p0, v10, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    .line 301
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 299
    invoke-virtual {v7, v9, v10, v11}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    goto/16 :goto_1

    .line 286
    .end local v8    # "nameType":I
    :pswitch_2
    iget-object v8, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 287
    .local v8, "fieldOrMethodRef":I
    iget-object v9, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {p0, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v10

    aget v9, v9, v10

    .line 288
    .local v9, "nameType":I
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    .line 289
    invoke-virtual {p0, v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v11

    .line 290
    invoke-virtual {p0, v9, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v9, 0x2

    .line 291
    invoke-virtual {p0, v13, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 288
    invoke-virtual {v7, v10, v11, v12, v13}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    goto/16 :goto_1

    .line 258
    .end local v8    # "fieldOrMethodRef":I
    .end local v9    # "nameType":I
    :pswitch_3
    nop

    .line 259
    invoke-virtual {p0, v5, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v5, 0x2

    .line 260
    invoke-virtual {p0, v10, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    .line 258
    invoke-virtual {v7, v6, v9, v10, v8}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    goto :goto_1

    .line 242
    :pswitch_4
    iget-object v8, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 243
    .local v8, "nameType":I
    nop

    .line 244
    invoke-virtual {p0, v5, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-virtual {p0, v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v8, 0x2

    .line 246
    invoke-virtual {p0, v11, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 243
    invoke-virtual {v7, v6, v9, v10, v11}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    goto :goto_1

    .line 270
    .end local v8    # "nameType":I
    :pswitch_5
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(D)V

    .line 271
    add-int/lit8 v3, v3, 0x1

    .line 272
    goto :goto_1

    .line 265
    :pswitch_6
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(J)V

    .line 266
    add-int/lit8 v3, v3, 0x1

    .line 267
    goto :goto_1

    .line 254
    :pswitch_7
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(F)V

    .line 255
    goto :goto_1

    .line 250
    :pswitch_8
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(I)V

    .line 251
    goto :goto_1

    .line 275
    :pswitch_9
    iget-object v9, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->strings:[Ljava/lang/String;

    aget-object v10, v9, v3

    .line 276
    .local v10, "s":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 277
    iget-object v11, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget v5, v11, v3

    .line 278
    add-int/lit8 v11, v5, 0x2

    .line 279
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .line 278
    invoke-direct {p0, v11, v12, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v3

    move-object v10, v11

    .line 282
    :cond_1
    invoke-virtual {v7, v6, v10, v8, v8}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    nop

    .line 311
    .end local v10    # "s":Ljava/lang/String;
    :goto_1
    iget v8, v7, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    array-length v9, v2

    rem-int/2addr v8, v9

    .line 312
    .local v8, "index2":I
    aget-object v9, v2, v8

    iput-object v9, v7, Lorg/checkerframework/org/objectweb/asmx/Item;->next:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 313
    aput-object v7, v2, v8

    .line 233
    .end local v5    # "index":I
    .end local v6    # "tag":I
    .end local v7    # "item":Lorg/checkerframework/org/objectweb/asmx/Item;
    .end local v8    # "index2":I
    add-int/2addr v3, v4

    goto/16 :goto_0

    .line 316
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget v3, v3, v4

    sub-int/2addr v3, v4

    .line 317
    .local v3, "off":I
    iget-object v4, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    iget v6, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 318
    iput-object v2, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 319
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    int-to-double v6, v1

    mul-double/2addr v6, v4

    double-to-int v4, v6

    iput v4, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->threshold:I

    .line 320
    iput v1, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    .line 321
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItem(I)I
    .locals 1
    .param p1, "item"    # I

    .line 2014
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget v0, v0, p1

    return v0
.end method

.method public readByte(I)I
    .locals 1
    .param p1, "index"    # I

    .line 2026
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2165
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 8
    .param p1, "item"    # I
    .param p2, "buf"    # [C

    .line 2181
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget v0, v0, p1

    .line 2182
    .local v0, "index":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 2199
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v1

    .line 2200
    .local v1, "tag":I
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    .line 2201
    .local v2, "items":[I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v3, v2, v3

    .line 2202
    .local v3, "cpIndex":I
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    .line 2203
    .local v4, "owner":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v2, v5

    .line 2204
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 2205
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 2206
    .local v6, "desc":Ljava/lang/String;
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/Handle;

    invoke-direct {v7, v1, v4, v5, v6}, Lorg/checkerframework/org/objectweb/asmx/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 2197
    .end local v1    # "tag":I
    .end local v2    # "items":[I
    .end local v3    # "cpIndex":I
    .end local v4    # "owner":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "desc":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getMethodType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    return-object v1

    .line 2195
    :sswitch_1
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2192
    :sswitch_2
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 2193
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v2

    return-object v2

    .line 2190
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_3
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 2188
    :sswitch_4
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 2186
    :sswitch_5
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    return-object v1

    .line 2184
    :sswitch_6
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "index"    # I

    .line 2064
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    .line 2065
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public readLong(I)J
    .locals 6
    .param p1, "index"    # I

    .line 2078
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 2079
    .local v0, "l1":J
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 2080
    .local v2, "l0":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method public readShort(I)S
    .locals 3
    .param p1, "index"    # I

    .line 2051
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    .line 2052
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2095
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2096
    .local v0, "item":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->strings:[Ljava/lang/String;

    aget-object v2, v1, v0

    .line 2097
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2098
    return-object v2

    .line 2100
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->items:[I

    aget p1, v3, v0

    .line 2101
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    return-object v3
.end method

.method public readUnsignedShort(I)I
    .locals 3
    .param p1, "index"    # I

    .line 2038
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    .line 2039
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method
