.class public Lnet/bytebuddy/jar/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field static final EXPAND_ASM_INSNS:I = 0x100

.field public static final EXPAND_FRAMES:I = 0x8

.field private static final INPUT_STREAM_DATA_CHUNK_SIZE:I = 0x1000

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4


# instance fields
.field public final b:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final bootstrapMethodOffsets:[I

.field final classFileBuffer:[B

.field private final constantDynamicValues:[Lnet/bytebuddy/jar/asm/ConstantDynamic;

.field private final constantUtf8Values:[Ljava/lang/String;

.field private final cpInfoOffsets:[I

.field public final header:I

.field private final maxStringLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    .line 285
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
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

    .line 296
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object v0

    .line 295
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    .line 298
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "classFile"    # [B

    .line 163
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([BII)V

    .line 164
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "classFileBuffer"    # [B
    .param p2, "classFileOffset"    # I
    .param p3, "classFileLength"    # I

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([BIZ)V

    .line 178
    return-void
.end method

.method constructor <init>([BIZ)V
    .locals 9
    .param p1, "classFileBuffer"    # [B
    .param p2, "classFileOffset"    # I
    .param p3, "checkClassVersion"    # Z

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    .line 191
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    .line 194
    if-eqz p3, :cond_1

    add-int/lit8 v0, p2, 0x6

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v0

    const/16 v1, 0x3d

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class file major version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x6

    .line 196
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    :goto_0
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 201
    .local v0, "constantPoolCount":I
    new-array v1, v0, [I

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 202
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    .line 207
    const/4 v1, 0x1

    .line 208
    .local v1, "currentCpInfoIndex":I
    add-int/lit8 v2, p2, 0xa

    .line 209
    .local v2, "currentCpInfoOffset":I
    const/4 v3, 0x0

    .line 210
    .local v3, "currentMaxStringLength":I
    const/4 v4, 0x0

    .line 211
    .local v4, "hasBootstrapMethods":Z
    const/4 v5, 0x0

    .line 213
    .local v5, "hasConstantDynamic":Z
    :goto_1
    if-ge v1, v0, :cond_3

    .line 214
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "currentCpInfoIndex":I
    .local v7, "currentCpInfoIndex":I
    add-int/lit8 v8, v2, 0x1

    aput v8, v6, v1

    .line 216
    aget-byte v1, p1, v2

    packed-switch v1, :pswitch_data_0

    .line 259
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 231
    :pswitch_1
    const/4 v1, 0x5

    .line 232
    .local v1, "cpInfoSize":I
    const/4 v4, 0x1

    .line 233
    goto :goto_2

    .line 226
    .end local v1    # "cpInfoSize":I
    :pswitch_2
    const/4 v1, 0x5

    .line 227
    .restart local v1    # "cpInfoSize":I
    const/4 v4, 0x1

    .line 228
    const/4 v5, 0x1

    .line 229
    goto :goto_2

    .line 249
    .end local v1    # "cpInfoSize":I
    :pswitch_3
    const/4 v1, 0x4

    .line 250
    .restart local v1    # "cpInfoSize":I
    goto :goto_2

    .line 256
    .end local v1    # "cpInfoSize":I
    :pswitch_4
    const/4 v1, 0x3

    .line 257
    .restart local v1    # "cpInfoSize":I
    goto :goto_2

    .line 236
    .end local v1    # "cpInfoSize":I
    :pswitch_5
    const/16 v1, 0x9

    .line 237
    .restart local v1    # "cpInfoSize":I
    add-int/lit8 v7, v7, 0x1

    .line 238
    goto :goto_2

    .line 223
    .end local v1    # "cpInfoSize":I
    :pswitch_6
    const/4 v1, 0x5

    .line 224
    .restart local v1    # "cpInfoSize":I
    goto :goto_2

    .line 240
    .end local v1    # "cpInfoSize":I
    :pswitch_7
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    .line 241
    .restart local v1    # "cpInfoSize":I
    if-le v1, v3, :cond_2

    .line 245
    move v3, v1

    .line 261
    :cond_2
    :goto_2
    add-int/2addr v2, v1

    .line 262
    .end local v1    # "cpInfoSize":I
    move v1, v7

    goto :goto_1

    .line 263
    .end local v7    # "currentCpInfoIndex":I
    .local v1, "currentCpInfoIndex":I
    :cond_3
    iput v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    .line 265
    iput v2, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    .line 268
    const/4 v6, 0x0

    if-eqz v5, :cond_4

    new-array v7, v0, [Lnet/bytebuddy/jar/asm/ConstantDynamic;

    goto :goto_3

    :cond_4
    move-object v7, v6

    :goto_3
    iput-object v7, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantDynamicValues:[Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 271
    nop

    .line 272
    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readBootstrapMethodsAttribute(I)[I

    move-result-object v6

    :cond_5
    iput-object v6, p0, Lnet/bytebuddy/jar/asm/ClassReader;->bootstrapMethodOffsets:[I

    .line 273
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private computeImplicitFrame(Lnet/bytebuddy/jar/asm/Context;)V
    .locals 8
    .param p1, "context"    # Lnet/bytebuddy/jar/asm/Context;

    .line 3175
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 3176
    .local v0, "methodDescriptor":Ljava/lang/String;
    iget-object v1, p1, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 3177
    .local v1, "locals":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 3178
    .local v2, "numLocal":I
    iget v3, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 3179
    const-string v3, "<init>"

    iget-object v4, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3180
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numLocal":I
    .local v3, "numLocal":I
    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    .line 3182
    .end local v3    # "numLocal":I
    .restart local v2    # "numLocal":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numLocal":I
    .restart local v3    # "numLocal":I
    iget v4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p1, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    invoke-virtual {p0, v4, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    move v2, v3

    .line 3187
    .end local v3    # "numLocal":I
    .restart local v2    # "numLocal":I
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 3189
    .local v3, "currentMethodDescritorOffset":I
    :goto_1
    move v4, v3

    .line 3190
    .local v4, "currentArgumentDescriptorStartOffset":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "currentMethodDescritorOffset":I
    .local v5, "currentMethodDescritorOffset":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3b

    sparse-switch v3, :sswitch_data_0

    .line 3230
    iput v2, p1, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    .line 3231
    return-void

    .line 3208
    :goto_2
    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x5b

    if-ne v3, v7, :cond_2

    .line 3209
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3211
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x4c

    if-ne v3, v7, :cond_3

    .line 3212
    add-int/lit8 v5, v5, 0x1

    .line 3213
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    .line 3214
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3217
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numLocal":I
    .local v3, "numLocal":I
    add-int/lit8 v5, v5, 0x1

    .line 3218
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 3220
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 3222
    .end local v3    # "numLocal":I
    .restart local v2    # "numLocal":I
    :goto_4
    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_4

    .line 3223
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3225
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numLocal":I
    .restart local v3    # "numLocal":I
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    .line 3226
    .end local v5    # "currentMethodDescritorOffset":I
    .local v7, "currentMethodDescritorOffset":I
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 3228
    move v2, v3

    move v3, v7

    goto :goto_5

    .line 3202
    .end local v3    # "numLocal":I
    .end local v7    # "currentMethodDescritorOffset":I
    .restart local v2    # "numLocal":I
    .restart local v5    # "currentMethodDescritorOffset":I
    :sswitch_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numLocal":I
    .restart local v3    # "numLocal":I
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 3203
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 3199
    .end local v3    # "numLocal":I
    .restart local v2    # "numLocal":I
    :sswitch_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numLocal":I
    .restart local v3    # "numLocal":I
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 3200
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 3205
    .end local v3    # "numLocal":I
    .restart local v2    # "numLocal":I
    :sswitch_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numLocal":I
    .restart local v3    # "numLocal":I
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 3206
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 3196
    .end local v3    # "numLocal":I
    .restart local v2    # "numLocal":I
    :sswitch_5
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numLocal":I
    .restart local v3    # "numLocal":I
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 3197
    move v2, v3

    move v3, v5

    .line 3233
    .end local v4    # "currentArgumentDescriptorStartOffset":I
    .end local v5    # "currentMethodDescritorOffset":I
    .restart local v2    # "numLocal":I
    .local v3, "currentMethodDescritorOffset":I
    :goto_5
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_5
        0x4a -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private createDebugLabel(I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2
    .param p1, "bytecodeOffset"    # I
    .param p2, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 2686
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2687
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 2689
    :cond_0
    return-void
.end method

.method private createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;
    .locals 2
    .param p1, "bytecodeOffset"    # I
    .param p2, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 2672
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    .line 2673
    .local v0, "label":Lnet/bytebuddy/jar/asm/Label;
    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v1, v1, -0x2

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 2674
    return-object v0
.end method

.method private getTypeAnnotationBytecodeOffset([II)I
    .locals 2
    .param p1, "typeAnnotationOffsets"    # [I
    .param p2, "typeAnnotationIndex"    # I

    .line 2814
    if-eqz p1, :cond_1

    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget v0, p1, p2

    .line 2816
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v1, 0x43

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2819
    :cond_0
    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0

    .line 2817
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;
    .locals 12
    .param p1, "attributePrototypes"    # [Lnet/bytebuddy/jar/asm/Attribute;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "charBuffer"    # [C
    .param p6, "codeAttributeOffset"    # I
    .param p7, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 3506
    move-object v0, p1

    move-object v1, p2

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v11, v0, v3

    .line 3507
    .local v11, "attributePrototype":Lnet/bytebuddy/jar/asm/Attribute;
    iget-object v4, v11, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3508
    move-object v4, v11

    move-object v5, p0

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lnet/bytebuddy/jar/asm/Attribute;->read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v2

    return-object v2

    .line 3506
    .end local v11    # "attributePrototype":Lnet/bytebuddy/jar/asm/Attribute;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3512
    :cond_1
    new-instance v4, Lnet/bytebuddy/jar/asm/Attribute;

    invoke-direct {v4, p2}, Lnet/bytebuddy/jar/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v4 .. v10}, Lnet/bytebuddy/jar/asm/Attribute;->read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v2

    return-object v2
.end method

.method private readBootstrapMethodsAttribute(I)[I
    .locals 9
    .param p1, "maxStringLength"    # I

    .line 3452
    new-array v0, p1, [C

    .line 3453
    .local v0, "charBuffer":[C
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v1

    .line 3454
    .local v1, "currentAttributeOffset":I
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    .line 3456
    invoke-virtual {p0, v1, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 3457
    .local v3, "attributeName":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v4

    .line 3458
    .local v4, "attributeLength":I
    add-int/lit8 v1, v1, 0x6

    .line 3459
    const-string v5, "BootstrapMethods"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3461
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    new-array v5, v5, [I

    .line 3463
    .local v5, "result":[I
    add-int/lit8 v6, v1, 0x2

    .line 3464
    .local v6, "currentBootstrapMethodOffset":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_0

    .line 3465
    aput v6, v5, v7

    .line 3468
    add-int/lit8 v8, v6, 0x2

    .line 3469
    invoke-virtual {p0, v8}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v6, v8

    .line 3464
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3471
    .end local v7    # "j":I
    :cond_0
    return-object v5

    .line 3473
    .end local v5    # "result":[I
    .end local v6    # "currentBootstrapMethodOffset":I
    :cond_1
    add-int/2addr v1, v4

    .line 3454
    .end local v3    # "attributeName":Ljava/lang/String;
    .end local v4    # "attributeLength":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3475
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method private readCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;I)V
    .locals 51
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "context"    # Lnet/bytebuddy/jar/asm/Context;
    .param p3, "codeOffset"    # I

    .line 1513
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v0, p3

    .line 1516
    .local v0, "currentOffset":I
    iget-object v11, v8, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    .line 1517
    .local v11, "classBuffer":[B
    iget-object v12, v10, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 1518
    .local v12, "charBuffer":[C
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .line 1519
    .local v13, "maxStack":I
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    .line 1520
    .local v14, "maxLocals":I
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v15

    .line 1521
    .local v15, "codeLength":I
    const/16 v7, 0x8

    add-int/2addr v0, v7

    .line 1522
    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt v15, v1, :cond_45

    .line 1527
    move/from16 v16, v0

    .line 1528
    .local v16, "bytecodeStartOffset":I
    add-int v6, v0, v15

    .line 1529
    .local v6, "bytecodeEndOffset":I
    add-int/lit8 v1, v15, 0x1

    new-array v1, v1, [Lnet/bytebuddy/jar/asm/Label;

    iput-object v1, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    move-object v5, v1

    .line 1530
    .local v5, "labels":[Lnet/bytebuddy/jar/asm/Label;
    :goto_0
    const/4 v4, 0x1

    if-ge v0, v6, :cond_1

    .line 1531
    sub-int v1, v0, v16

    .line 1532
    .local v1, "bytecodeOffset":I
    aget-byte v2, v11, v0

    and-int/lit16 v2, v2, 0xff

    .line 1533
    .local v2, "opcode":I
    packed-switch v2, :pswitch_data_0

    .line 1820
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1722
    :pswitch_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 1723
    add-int/lit8 v0, v0, 0x3

    .line 1724
    goto/16 :goto_3

    .line 1728
    :pswitch_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 1729
    add-int/lit8 v0, v0, 0x5

    .line 1730
    goto/16 :goto_3

    .line 1817
    :pswitch_2
    add-int/lit8 v0, v0, 0x4

    .line 1818
    goto/16 :goto_3

    .line 1732
    :pswitch_3
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    sparse-switch v3, :sswitch_data_0

    .line 1750
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1747
    :sswitch_0
    add-int/lit8 v0, v0, 0x6

    .line 1748
    goto/16 :goto_3

    .line 1744
    :sswitch_1
    add-int/lit8 v0, v0, 0x4

    .line 1745
    goto/16 :goto_3

    .line 1814
    :pswitch_4
    add-int/lit8 v0, v0, 0x5

    .line 1815
    goto :goto_3

    .line 1768
    :pswitch_5
    and-int/lit8 v3, v1, 0x3

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 1770
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 1771
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    .line 1772
    .local v3, "numSwitchCases":I
    add-int/2addr v0, v7

    .line 1774
    :goto_1
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "numSwitchCases":I
    .local v4, "numSwitchCases":I
    if-lez v3, :cond_0

    .line 1775
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 1776
    add-int/lit8 v0, v0, 0x8

    move v3, v4

    goto :goto_1

    .line 1755
    .end local v4    # "numSwitchCases":I
    :pswitch_6
    and-int/lit8 v3, v1, 0x3

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 1757
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 1758
    add-int/lit8 v3, v0, 0x8

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v7, v0, 0x4

    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v7

    sub-int/2addr v3, v7

    add-int/2addr v3, v4

    .line 1759
    .local v3, "numTableEntries":I
    add-int/lit8 v0, v0, 0xc

    .line 1761
    :goto_2
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "numTableEntries":I
    .local v4, "numTableEntries":I
    if-lez v3, :cond_0

    .line 1762
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 1763
    add-int/lit8 v0, v0, 0x4

    move v3, v4

    goto :goto_2

    .line 1701
    .end local v4    # "numTableEntries":I
    :pswitch_7
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 1702
    add-int/lit8 v0, v0, 0x3

    .line 1703
    goto :goto_3

    .line 1810
    :pswitch_8
    add-int/lit8 v0, v0, 0x3

    .line 1811
    goto :goto_3

    .line 1793
    :pswitch_9
    add-int/lit8 v0, v0, 0x2

    .line 1794
    goto :goto_3

    .line 1681
    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    .line 1682
    nop

    .line 1822
    .end local v1    # "bytecodeOffset":I
    .end local v2    # "opcode":I
    :cond_0
    :goto_3
    const/16 v7, 0x8

    goto/16 :goto_0

    .line 1826
    :cond_1
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1827
    .local v1, "exceptionTableLength":I
    add-int/lit8 v0, v0, 0x2

    .line 1828
    :goto_4
    add-int/lit8 v18, v1, -0x1

    .end local v1    # "exceptionTableLength":I
    .local v18, "exceptionTableLength":I
    if-lez v1, :cond_2

    .line 1829
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v1

    .line 1830
    .local v1, "start":Lnet/bytebuddy/jar/asm/Label;
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-direct {v8, v2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v2

    .line 1831
    .local v2, "end":Lnet/bytebuddy/jar/asm/Label;
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v3

    .line 1832
    .local v3, "handler":Lnet/bytebuddy/jar/asm/Label;
    iget-object v7, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v0, 0x6

    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v4, v7, v4

    invoke-virtual {v8, v4, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1833
    .local v4, "catchType":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x8

    .line 1834
    invoke-virtual {v9, v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    .line 1835
    .end local v1    # "start":Lnet/bytebuddy/jar/asm/Label;
    .end local v2    # "end":Lnet/bytebuddy/jar/asm/Label;
    .end local v3    # "handler":Lnet/bytebuddy/jar/asm/Label;
    .end local v4    # "catchType":Ljava/lang/String;
    move/from16 v1, v18

    const/4 v4, 0x1

    goto :goto_4

    .line 1843
    :cond_2
    const/4 v1, 0x0

    .line 1845
    .local v1, "stackMapFrameOffset":I
    const/4 v2, 0x0

    .line 1847
    .local v2, "stackMapTableEndOffset":I
    const/4 v3, 0x1

    .line 1849
    .local v3, "compressedFrames":Z
    const/4 v4, 0x0

    .line 1851
    .local v4, "localVariableTableOffset":I
    const/4 v7, 0x0

    .line 1854
    .local v7, "localVariableTypeTableOffset":I
    const/16 v20, 0x0

    .line 1857
    .local v20, "visibleTypeAnnotationOffsets":[I
    const/16 v21, 0x0

    .line 1860
    .local v21, "invisibleTypeAnnotationOffsets":[I
    const/16 v22, 0x0

    .line 1862
    .local v22, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v23

    .line 1863
    .local v23, "attributesCount":I
    add-int/lit8 v0, v0, 0x2

    move-object/from16 v24, v21

    move/from16 v21, v15

    move-object/from16 v15, v22

    move/from16 v49, v7

    move v7, v0

    move-object/from16 v0, v20

    move/from16 v20, v1

    move/from16 v1, v49

    move/from16 v50, v4

    move v4, v2

    move/from16 v2, v50

    .line 1864
    .end local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v0, "visibleTypeAnnotationOffsets":[I
    .local v1, "localVariableTypeTableOffset":I
    .local v2, "localVariableTableOffset":I
    .local v4, "stackMapTableEndOffset":I
    .local v7, "currentOffset":I
    .local v15, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v20, "stackMapFrameOffset":I
    .local v21, "codeLength":I
    .local v24, "invisibleTypeAnnotationOffsets":[I
    :goto_5
    add-int/lit8 v22, v23, -0x1

    move/from16 v25, v4

    .end local v4    # "stackMapTableEndOffset":I
    .end local v23    # "attributesCount":I
    .local v22, "attributesCount":I
    .local v25, "stackMapTableEndOffset":I
    if-lez v23, :cond_f

    .line 1866
    invoke-virtual {v8, v7, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1867
    .local v4, "attributeName":Ljava/lang/String;
    move-object/from16 v26, v0

    .end local v0    # "visibleTypeAnnotationOffsets":[I
    .local v26, "visibleTypeAnnotationOffsets":[I
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v27

    .line 1868
    .local v27, "attributeLength":I
    add-int/lit8 v7, v7, 0x6

    .line 1869
    const-string v0, "LocalVariableTable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1870
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 1871
    move v0, v7

    .line 1873
    .end local v2    # "localVariableTableOffset":I
    .local v0, "localVariableTableOffset":I
    move v2, v7

    .line 1874
    .local v2, "currentLocalVariableTableOffset":I
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v23

    .line 1875
    .local v23, "localVariableTableLength":I
    add-int/lit8 v2, v2, 0x2

    .line 1876
    :goto_6
    add-int/lit8 v28, v23, -0x1

    .end local v23    # "localVariableTableLength":I
    .local v28, "localVariableTableLength":I
    if-lez v23, :cond_3

    .line 1877
    move/from16 v23, v0

    .end local v0    # "localVariableTableOffset":I
    .local v23, "localVariableTableOffset":I
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1878
    .local v0, "startPc":I
    invoke-direct {v8, v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createDebugLabel(I[Lnet/bytebuddy/jar/asm/Label;)V

    .line 1879
    move/from16 v29, v1

    .end local v1    # "localVariableTypeTableOffset":I
    .local v29, "localVariableTypeTableOffset":I
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1880
    .local v1, "length":I
    move/from16 v30, v3

    .end local v3    # "compressedFrames":Z
    .local v30, "compressedFrames":Z
    add-int v3, v0, v1

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createDebugLabel(I[Lnet/bytebuddy/jar/asm/Label;)V

    .line 1882
    nop

    .end local v0    # "startPc":I
    .end local v1    # "length":I
    add-int/lit8 v2, v2, 0xa

    .line 1883
    move/from16 v0, v23

    move/from16 v23, v28

    move/from16 v1, v29

    move/from16 v3, v30

    goto :goto_6

    .line 1876
    .end local v23    # "localVariableTableOffset":I
    .end local v29    # "localVariableTypeTableOffset":I
    .end local v30    # "compressedFrames":Z
    .local v0, "localVariableTableOffset":I
    .local v1, "localVariableTypeTableOffset":I
    .restart local v3    # "compressedFrames":Z
    :cond_3
    move/from16 v23, v0

    move/from16 v29, v1

    move/from16 v30, v3

    .line 1884
    .end local v0    # "localVariableTableOffset":I
    .end local v1    # "localVariableTypeTableOffset":I
    .end local v2    # "currentLocalVariableTableOffset":I
    .end local v3    # "compressedFrames":Z
    .end local v28    # "localVariableTableLength":I
    .restart local v23    # "localVariableTableOffset":I
    .restart local v29    # "localVariableTypeTableOffset":I
    .restart local v30    # "compressedFrames":Z
    move-object/from16 v19, v4

    move/from16 v17, v7

    move-object/from16 v28, v12

    move/from16 v2, v23

    move/from16 v4, v25

    move-object/from16 v0, v26

    const/16 v12, 0x8

    move-object/from16 v25, v5

    move/from16 v29, v6

    goto/16 :goto_9

    .line 1870
    .end local v23    # "localVariableTableOffset":I
    .end local v29    # "localVariableTypeTableOffset":I
    .end local v30    # "compressedFrames":Z
    .restart local v1    # "localVariableTypeTableOffset":I
    .local v2, "localVariableTableOffset":I
    .restart local v3    # "compressedFrames":Z
    :cond_4
    move/from16 v29, v1

    move/from16 v30, v3

    .end local v1    # "localVariableTypeTableOffset":I
    .end local v3    # "compressedFrames":Z
    .restart local v29    # "localVariableTypeTableOffset":I
    .restart local v30    # "compressedFrames":Z
    move/from16 v28, v2

    const/4 v3, 0x1

    goto/16 :goto_8

    .line 1885
    .end local v29    # "localVariableTypeTableOffset":I
    .end local v30    # "compressedFrames":Z
    .restart local v1    # "localVariableTypeTableOffset":I
    .restart local v3    # "compressedFrames":Z
    :cond_5
    move/from16 v29, v1

    move/from16 v30, v3

    .end local v1    # "localVariableTypeTableOffset":I
    .end local v3    # "compressedFrames":Z
    .restart local v29    # "localVariableTypeTableOffset":I
    .restart local v30    # "compressedFrames":Z
    const-string v0, "LocalVariableTypeTable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1886
    move v0, v7

    move v1, v0

    move-object/from16 v19, v4

    move/from16 v29, v6

    move/from16 v17, v7

    move-object/from16 v28, v12

    move/from16 v4, v25

    move-object/from16 v0, v26

    move/from16 v3, v30

    const/16 v12, 0x8

    move-object/from16 v25, v5

    .end local v29    # "localVariableTypeTableOffset":I
    .local v0, "localVariableTypeTableOffset":I
    goto/16 :goto_9

    .line 1889
    .end local v0    # "localVariableTypeTableOffset":I
    .restart local v29    # "localVariableTypeTableOffset":I
    :cond_6
    const-string v0, "LineNumberTable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1890
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 1892
    move v0, v7

    .line 1893
    .local v0, "currentLineNumberTableOffset":I
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1894
    .local v1, "lineNumberTableLength":I
    add-int/lit8 v0, v0, 0x2

    .line 1895
    :goto_7
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "lineNumberTableLength":I
    .local v3, "lineNumberTableLength":I
    if-lez v1, :cond_7

    .line 1896
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1897
    .local v1, "startPc":I
    move/from16 v28, v2

    .end local v2    # "localVariableTableOffset":I
    .local v28, "localVariableTableOffset":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1898
    .local v2, "lineNumber":I
    add-int/lit8 v0, v0, 0x4

    .line 1899
    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createDebugLabel(I[Lnet/bytebuddy/jar/asm/Label;)V

    .line 1900
    move/from16 v23, v0

    .end local v0    # "currentLineNumberTableOffset":I
    .local v23, "currentLineNumberTableOffset":I
    aget-object v0, v5, v1

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/Label;->addLineNumber(I)V

    .line 1901
    .end local v1    # "startPc":I
    .end local v2    # "lineNumber":I
    move v1, v3

    move/from16 v0, v23

    move/from16 v2, v28

    goto :goto_7

    .line 1895
    .end local v23    # "currentLineNumberTableOffset":I
    .end local v28    # "localVariableTableOffset":I
    .restart local v0    # "currentLineNumberTableOffset":I
    .local v2, "localVariableTableOffset":I
    :cond_7
    move/from16 v28, v2

    .line 1902
    .end local v0    # "currentLineNumberTableOffset":I
    .end local v2    # "localVariableTableOffset":I
    .end local v3    # "lineNumberTableLength":I
    .restart local v28    # "localVariableTableOffset":I
    const/4 v3, 0x1

    goto/16 :goto_8

    .line 1890
    .end local v28    # "localVariableTableOffset":I
    .restart local v2    # "localVariableTableOffset":I
    :cond_8
    move/from16 v28, v2

    .end local v2    # "localVariableTableOffset":I
    .restart local v28    # "localVariableTableOffset":I
    const/4 v3, 0x1

    goto/16 :goto_8

    .line 1903
    .end local v28    # "localVariableTableOffset":I
    .restart local v2    # "localVariableTableOffset":I
    :cond_9
    move/from16 v28, v2

    .end local v2    # "localVariableTableOffset":I
    .restart local v28    # "localVariableTableOffset":I
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1904
    nop

    .line 1905
    const/4 v3, 0x1

    invoke-direct {v8, v9, v10, v7, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)[I

    move-result-object v0

    move-object/from16 v19, v4

    move/from16 v17, v7

    move/from16 v4, v25

    move/from16 v2, v28

    move/from16 v1, v29

    move/from16 v3, v30

    move-object/from16 v25, v5

    move/from16 v29, v6

    move-object/from16 v28, v12

    const/16 v12, 0x8

    .end local v26    # "visibleTypeAnnotationOffsets":[I
    .local v0, "visibleTypeAnnotationOffsets":[I
    goto/16 :goto_9

    .line 1912
    .end local v0    # "visibleTypeAnnotationOffsets":[I
    .restart local v26    # "visibleTypeAnnotationOffsets":[I
    :cond_a
    const/4 v3, 0x1

    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1913
    nop

    .line 1914
    const/4 v0, 0x0

    invoke-direct {v8, v9, v10, v7, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)[I

    move-result-object v0

    move-object/from16 v24, v0

    move-object/from16 v19, v4

    move/from16 v17, v7

    move/from16 v4, v25

    move-object/from16 v0, v26

    move/from16 v2, v28

    move/from16 v1, v29

    move/from16 v3, v30

    move-object/from16 v25, v5

    move/from16 v29, v6

    move-object/from16 v28, v12

    const/16 v12, 0x8

    .end local v24    # "invisibleTypeAnnotationOffsets":[I
    .local v0, "invisibleTypeAnnotationOffsets":[I
    goto/16 :goto_9

    .line 1916
    .end local v0    # "invisibleTypeAnnotationOffsets":[I
    .restart local v24    # "invisibleTypeAnnotationOffsets":[I
    :cond_b
    const-string v0, "StackMapTable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1917
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_d

    .line 1918
    add-int/lit8 v0, v7, 0x2

    .line 1919
    .end local v20    # "stackMapFrameOffset":I
    .local v0, "stackMapFrameOffset":I
    add-int v1, v7, v27

    move/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    move/from16 v17, v7

    move-object/from16 v0, v26

    move/from16 v2, v28

    move/from16 v3, v30

    move v4, v1

    move-object/from16 v28, v12

    move/from16 v1, v29

    const/16 v12, 0x8

    move/from16 v29, v6

    .end local v25    # "stackMapTableEndOffset":I
    .local v1, "stackMapTableEndOffset":I
    goto/16 :goto_9

    .line 1930
    .end local v0    # "stackMapFrameOffset":I
    .end local v1    # "stackMapTableEndOffset":I
    .restart local v20    # "stackMapFrameOffset":I
    .restart local v25    # "stackMapTableEndOffset":I
    :cond_c
    const-string v0, "StackMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1931
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_d

    .line 1932
    add-int/lit8 v0, v7, 0x2

    .line 1933
    .end local v20    # "stackMapFrameOffset":I
    .restart local v0    # "stackMapFrameOffset":I
    add-int v1, v7, v27

    .line 1934
    .end local v25    # "stackMapTableEndOffset":I
    .restart local v1    # "stackMapTableEndOffset":I
    const/4 v2, 0x0

    move/from16 v20, v0

    move v3, v2

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    move/from16 v17, v7

    move-object/from16 v0, v26

    move/from16 v2, v28

    move v4, v1

    move-object/from16 v28, v12

    move/from16 v1, v29

    const/16 v12, 0x8

    move/from16 v29, v6

    .end local v30    # "compressedFrames":Z
    .local v2, "compressedFrames":Z
    goto/16 :goto_9

    .line 1953
    .end local v0    # "stackMapFrameOffset":I
    .end local v1    # "stackMapTableEndOffset":I
    .end local v28    # "localVariableTableOffset":I
    .local v2, "localVariableTableOffset":I
    .restart local v20    # "stackMapFrameOffset":I
    .restart local v25    # "stackMapTableEndOffset":I
    .restart local v30    # "compressedFrames":Z
    :cond_d
    :goto_8
    move-object/from16 v19, v4

    move/from16 v17, v7

    move/from16 v4, v25

    move-object/from16 v0, v26

    move/from16 v2, v28

    move/from16 v1, v29

    move/from16 v3, v30

    move-object/from16 v25, v5

    move/from16 v29, v6

    move-object/from16 v28, v12

    const/16 v12, 0x8

    .end local v2    # "localVariableTableOffset":I
    .restart local v28    # "localVariableTableOffset":I
    goto :goto_9

    .line 1941
    :cond_e
    iget-object v1, v10, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    .line 1942
    move-object/from16 v2, v26

    .end local v26    # "visibleTypeAnnotationOffsets":[I
    .local v2, "visibleTypeAnnotationOffsets":[I
    move-object/from16 v0, p0

    move/from16 v31, v29

    .end local v29    # "localVariableTypeTableOffset":I
    .local v31, "localVariableTypeTableOffset":I
    move-object v9, v2

    move/from16 v32, v28

    .end local v2    # "visibleTypeAnnotationOffsets":[I
    .end local v28    # "localVariableTableOffset":I
    .local v9, "visibleTypeAnnotationOffsets":[I
    .local v32, "localVariableTableOffset":I
    move-object v2, v4

    move/from16 v19, v3

    move/from16 v33, v30

    .end local v30    # "compressedFrames":Z
    .local v33, "compressedFrames":Z
    move v3, v7

    move-object/from16 v19, v4

    move-object/from16 v26, v9

    move/from16 v9, v25

    .end local v4    # "attributeName":Ljava/lang/String;
    .end local v25    # "stackMapTableEndOffset":I
    .local v9, "stackMapTableEndOffset":I
    .local v19, "attributeName":Ljava/lang/String;
    .restart local v26    # "visibleTypeAnnotationOffsets":[I
    move/from16 v4, v27

    move-object/from16 v25, v5

    .end local v5    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .local v25, "labels":[Lnet/bytebuddy/jar/asm/Label;
    move-object v5, v12

    move-object/from16 v28, v12

    move v12, v6

    .end local v6    # "bytecodeEndOffset":I
    .local v12, "bytecodeEndOffset":I
    .local v28, "charBuffer":[C
    move/from16 v6, p3

    move/from16 v17, v7

    move/from16 v29, v12

    const/16 v12, 0x8

    .end local v7    # "currentOffset":I
    .end local v12    # "bytecodeEndOffset":I
    .local v17, "currentOffset":I
    .local v29, "bytecodeEndOffset":I
    move-object/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    .line 1950
    .local v0, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    iput-object v15, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1951
    move-object v1, v0

    move-object v15, v1

    move v4, v9

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    .line 1953
    .end local v9    # "stackMapTableEndOffset":I
    .end local v26    # "visibleTypeAnnotationOffsets":[I
    .end local v31    # "localVariableTypeTableOffset":I
    .end local v32    # "localVariableTableOffset":I
    .end local v33    # "compressedFrames":Z
    .local v0, "visibleTypeAnnotationOffsets":[I
    .local v1, "localVariableTypeTableOffset":I
    .local v2, "localVariableTableOffset":I
    .local v3, "compressedFrames":Z
    .local v4, "stackMapTableEndOffset":I
    :goto_9
    add-int v7, v17, v27

    .line 1954
    .end local v17    # "currentOffset":I
    .end local v19    # "attributeName":Ljava/lang/String;
    .end local v27    # "attributeLength":I
    .restart local v7    # "currentOffset":I
    move-object/from16 v9, p1

    move/from16 v23, v22

    move-object/from16 v5, v25

    move-object/from16 v12, v28

    move/from16 v6, v29

    goto/16 :goto_5

    .line 1958
    .end local v4    # "stackMapTableEndOffset":I
    .end local v28    # "charBuffer":[C
    .end local v29    # "bytecodeEndOffset":I
    .restart local v5    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v6    # "bytecodeEndOffset":I
    .local v12, "charBuffer":[C
    .local v25, "stackMapTableEndOffset":I
    :cond_f
    move-object/from16 v26, v0

    move/from16 v31, v1

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v29, v6

    move-object/from16 v28, v12

    move/from16 v9, v25

    const/16 v12, 0x8

    move-object/from16 v25, v5

    .end local v0    # "visibleTypeAnnotationOffsets":[I
    .end local v1    # "localVariableTypeTableOffset":I
    .end local v2    # "localVariableTableOffset":I
    .end local v3    # "compressedFrames":Z
    .end local v5    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .end local v6    # "bytecodeEndOffset":I
    .end local v12    # "charBuffer":[C
    .restart local v9    # "stackMapTableEndOffset":I
    .local v25, "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v26    # "visibleTypeAnnotationOffsets":[I
    .restart local v28    # "charBuffer":[C
    .restart local v29    # "bytecodeEndOffset":I
    .restart local v31    # "localVariableTypeTableOffset":I
    .restart local v32    # "localVariableTableOffset":I
    .restart local v33    # "compressedFrames":Z
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    :goto_a
    move v6, v4

    .line 1959
    .local v6, "expandFrames":Z
    const/4 v5, -0x1

    if-eqz v20, :cond_16

    .line 1963
    iput v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    .line 1964
    const/4 v4, 0x0

    iput v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 1965
    iput v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    .line 1966
    iput v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 1967
    new-array v0, v14, [Ljava/lang/Object;

    iput-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 1968
    iput v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    .line 1969
    new-array v0, v13, [Ljava/lang/Object;

    iput-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    .line 1970
    if-eqz v6, :cond_11

    .line 1971
    invoke-direct {v8, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->computeImplicitFrame(Lnet/bytebuddy/jar/asm/Context;)V

    .line 1980
    :cond_11
    move/from16 v0, v20

    .local v0, "offset":I
    :goto_b
    add-int/lit8 v1, v9, -0x2

    if-ge v0, v1, :cond_15

    .line 1981
    aget-byte v1, v11, v0

    if-ne v1, v12, :cond_14

    .line 1982
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1983
    .local v1, "potentialBytecodeOffset":I
    if-ltz v1, :cond_13

    move/from16 v3, v21

    .end local v21    # "codeLength":I
    .local v3, "codeLength":I
    if-ge v1, v3, :cond_12

    add-int v2, v16, v1

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_12

    .line 1987
    move-object/from16 v4, v25

    .end local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .local v4, "labels":[Lnet/bytebuddy/jar/asm/Label;
    invoke-direct {v8, v1, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    goto :goto_c

    .line 1983
    .end local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :cond_12
    move-object/from16 v4, v25

    .end local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    goto :goto_c

    .end local v3    # "codeLength":I
    .end local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v21    # "codeLength":I
    .restart local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :cond_13
    move/from16 v3, v21

    move-object/from16 v4, v25

    .end local v21    # "codeLength":I
    .end local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v3    # "codeLength":I
    .restart local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    goto :goto_c

    .line 1981
    .end local v1    # "potentialBytecodeOffset":I
    .end local v3    # "codeLength":I
    .end local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v21    # "codeLength":I
    .restart local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :cond_14
    move/from16 v3, v21

    move-object/from16 v4, v25

    .line 1980
    .end local v21    # "codeLength":I
    .end local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v3    # "codeLength":I
    .restart local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move/from16 v21, v3

    move-object/from16 v25, v4

    const/4 v4, 0x0

    goto :goto_b

    .end local v3    # "codeLength":I
    .end local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v21    # "codeLength":I
    .restart local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :cond_15
    move/from16 v3, v21

    move-object/from16 v4, v25

    .end local v21    # "codeLength":I
    .end local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v3    # "codeLength":I
    .restart local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    goto :goto_d

    .line 1959
    .end local v0    # "offset":I
    .end local v3    # "codeLength":I
    .end local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v21    # "codeLength":I
    .restart local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :cond_16
    move/from16 v3, v21

    move-object/from16 v4, v25

    .line 1992
    .end local v21    # "codeLength":I
    .end local v25    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v3    # "codeLength":I
    .restart local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :goto_d
    if-eqz v6, :cond_17

    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_17

    .line 1999
    const/4 v1, -0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move v2, v14

    move/from16 v25, v3

    .end local v3    # "codeLength":I
    .local v25, "codeLength":I
    move-object/from16 v3, v17

    move-object v12, v4

    move/from16 v17, v7

    const/4 v7, 0x0

    .end local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .end local v7    # "currentOffset":I
    .local v12, "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v17    # "currentOffset":I
    move/from16 v4, v19

    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_e

    .line 1992
    .end local v12    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .end local v17    # "currentOffset":I
    .end local v25    # "codeLength":I
    .restart local v3    # "codeLength":I
    .restart local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v7    # "currentOffset":I
    :cond_17
    move/from16 v25, v3

    move-object v12, v4

    move/from16 v17, v7

    const/4 v7, 0x0

    .line 2007
    .end local v3    # "codeLength":I
    .end local v4    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .end local v7    # "currentOffset":I
    .restart local v12    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v17    # "currentOffset":I
    .restart local v25    # "codeLength":I
    :goto_e
    const/4 v0, 0x0

    .line 2009
    .local v0, "currentVisibleTypeAnnotationIndex":I
    nop

    .line 2010
    move-object/from16 v1, v26

    .end local v26    # "visibleTypeAnnotationOffsets":[I
    .local v1, "visibleTypeAnnotationOffsets":[I
    invoke-direct {v8, v1, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v2

    .line 2013
    .local v2, "currentVisibleTypeAnnotationBytecodeOffset":I
    const/4 v3, 0x0

    .line 2015
    .local v3, "currentInvisibleTypeAnnotationIndex":I
    nop

    .line 2016
    move-object/from16 v5, v24

    .end local v24    # "invisibleTypeAnnotationOffsets":[I
    .local v5, "invisibleTypeAnnotationOffsets":[I
    invoke-direct {v8, v5, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v4

    .line 2019
    .local v4, "currentInvisibleTypeAnnotationBytecodeOffset":I
    const/16 v19, 0x0

    .line 2025
    .local v19, "insertFrame":Z
    iget v7, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_18

    const/16 v7, 0x21

    goto :goto_f

    :cond_18
    const/4 v7, 0x0

    :goto_f
    move/from16 v24, v7

    .line 2027
    .local v24, "wideJumpOpcodeDelta":I
    move/from16 v7, v16

    move/from16 v17, v0

    move/from16 v26, v4

    move/from16 v27, v19

    move/from16 v30, v20

    move/from16 v19, v2

    move/from16 v20, v3

    .line 2028
    .end local v0    # "currentVisibleTypeAnnotationIndex":I
    .end local v2    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .end local v3    # "currentInvisibleTypeAnnotationIndex":I
    .end local v4    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .restart local v7    # "currentOffset":I
    .local v17, "currentVisibleTypeAnnotationIndex":I
    .local v19, "currentVisibleTypeAnnotationBytecodeOffset":I
    .local v20, "currentInvisibleTypeAnnotationIndex":I
    .local v26, "currentInvisibleTypeAnnotationBytecodeOffset":I
    .local v27, "insertFrame":Z
    .local v30, "stackMapFrameOffset":I
    :goto_10
    move/from16 v4, v29

    .end local v29    # "bytecodeEndOffset":I
    .local v4, "bytecodeEndOffset":I
    if-ge v7, v4, :cond_34

    .line 2029
    sub-int v3, v7, v16

    .line 2032
    .local v3, "currentBytecodeOffset":I
    aget-object v2, v12, v3

    .line 2033
    .local v2, "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    if-eqz v2, :cond_1a

    .line 2034
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :goto_11
    move-object/from16 v29, v15

    move-object v15, v1

    move-object/from16 v1, p1

    .end local v1    # "visibleTypeAnnotationOffsets":[I
    .local v15, "visibleTypeAnnotationOffsets":[I
    .local v29, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    invoke-virtual {v2, v1, v0}, Lnet/bytebuddy/jar/asm/Label;->accept(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V

    goto :goto_12

    .line 2033
    .end local v29    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v1    # "visibleTypeAnnotationOffsets":[I
    .local v15, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :cond_1a
    move-object/from16 v29, v15

    move-object v15, v1

    move-object/from16 v1, p1

    .line 2038
    .end local v1    # "visibleTypeAnnotationOffsets":[I
    .local v15, "visibleTypeAnnotationOffsets":[I
    .restart local v29    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_12
    move/from16 v0, v30

    .end local v30    # "stackMapFrameOffset":I
    .local v0, "stackMapFrameOffset":I
    :goto_13
    if-eqz v0, :cond_21

    move/from16 v30, v0

    .end local v0    # "stackMapFrameOffset":I
    .restart local v30    # "stackMapFrameOffset":I
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    if-eq v0, v3, :cond_1c

    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    move/from16 v36, v13

    const/4 v13, -0x1

    .end local v13    # "maxStack":I
    .local v36, "maxStack":I
    if-ne v0, v13, :cond_1b

    goto :goto_14

    :cond_1b
    move v13, v3

    move/from16 v37, v4

    move-object/from16 v42, v5

    move/from16 v40, v14

    move-object/from16 v41, v15

    move/from16 v15, v30

    move/from16 v14, v33

    move-object/from16 v33, v2

    goto/16 :goto_18

    .end local v36    # "maxStack":I
    .restart local v13    # "maxStack":I
    :cond_1c
    move/from16 v36, v13

    const/4 v13, -0x1

    .line 2043
    .end local v13    # "maxStack":I
    .restart local v36    # "maxStack":I
    :goto_14
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    if-eq v0, v13, :cond_1f

    .line 2044
    move/from16 v0, v33

    .end local v33    # "compressedFrames":Z
    .local v0, "compressedFrames":Z
    if-eqz v0, :cond_1e

    if-eqz v6, :cond_1d

    move-object/from16 v33, v2

    move v13, v3

    move/from16 v37, v4

    move-object/from16 v42, v5

    move/from16 v40, v14

    move-object/from16 v41, v15

    move/from16 v15, v30

    move v14, v0

    goto :goto_15

    .line 2052
    :cond_1d
    iget v13, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    move-object/from16 v33, v2

    .end local v2    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .local v33, "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    move/from16 v37, v3

    .end local v3    # "currentBytecodeOffset":I
    .local v37, "currentBytecodeOffset":I
    iget-object v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move/from16 v38, v4

    .end local v4    # "bytecodeEndOffset":I
    .local v38, "bytecodeEndOffset":I
    iget v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    move-object/from16 v39, v5

    .end local v5    # "invisibleTypeAnnotationOffsets":[I
    .local v39, "invisibleTypeAnnotationOffsets":[I
    iget-object v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move/from16 v40, v14

    move-object/from16 v41, v15

    move/from16 v15, v30

    move v14, v0

    .end local v0    # "compressedFrames":Z
    .end local v30    # "stackMapFrameOffset":I
    .local v14, "compressedFrames":Z
    .local v15, "stackMapFrameOffset":I
    .local v40, "maxLocals":I
    .local v41, "visibleTypeAnnotationOffsets":[I
    move-object/from16 v0, p1

    move v1, v13

    move-object/from16 v13, v33

    .end local v33    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .local v13, "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    move/from16 v13, v37

    .end local v37    # "currentBytecodeOffset":I
    .local v13, "currentBytecodeOffset":I
    .restart local v33    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    move/from16 v37, v38

    .end local v38    # "bytecodeEndOffset":I
    .local v37, "bytecodeEndOffset":I
    move-object/from16 v42, v39

    .end local v39    # "invisibleTypeAnnotationOffsets":[I
    .local v42, "invisibleTypeAnnotationOffsets":[I
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_16

    .line 2044
    .end local v13    # "currentBytecodeOffset":I
    .end local v33    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .end local v37    # "bytecodeEndOffset":I
    .end local v40    # "maxLocals":I
    .end local v41    # "visibleTypeAnnotationOffsets":[I
    .end local v42    # "invisibleTypeAnnotationOffsets":[I
    .restart local v0    # "compressedFrames":Z
    .restart local v2    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .restart local v3    # "currentBytecodeOffset":I
    .restart local v4    # "bytecodeEndOffset":I
    .restart local v5    # "invisibleTypeAnnotationOffsets":[I
    .local v14, "maxLocals":I
    .local v15, "visibleTypeAnnotationOffsets":[I
    .restart local v30    # "stackMapFrameOffset":I
    :cond_1e
    move-object/from16 v33, v2

    move v13, v3

    move/from16 v37, v4

    move-object/from16 v42, v5

    move/from16 v40, v14

    move-object/from16 v41, v15

    move/from16 v15, v30

    move v14, v0

    .line 2045
    .end local v0    # "compressedFrames":Z
    .end local v2    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .end local v3    # "currentBytecodeOffset":I
    .end local v4    # "bytecodeEndOffset":I
    .end local v5    # "invisibleTypeAnnotationOffsets":[I
    .end local v30    # "stackMapFrameOffset":I
    .restart local v13    # "currentBytecodeOffset":I
    .local v14, "compressedFrames":Z
    .local v15, "stackMapFrameOffset":I
    .restart local v33    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .restart local v37    # "bytecodeEndOffset":I
    .restart local v40    # "maxLocals":I
    .restart local v41    # "visibleTypeAnnotationOffsets":[I
    .restart local v42    # "invisibleTypeAnnotationOffsets":[I
    :goto_15
    const/4 v1, -0x1

    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    iget v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    iget-object v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 2061
    :goto_16
    const/4 v0, 0x0

    move/from16 v27, v0

    .end local v27    # "insertFrame":Z
    .local v0, "insertFrame":Z
    goto :goto_17

    .line 2043
    .end local v0    # "insertFrame":Z
    .end local v13    # "currentBytecodeOffset":I
    .end local v37    # "bytecodeEndOffset":I
    .end local v40    # "maxLocals":I
    .end local v41    # "visibleTypeAnnotationOffsets":[I
    .end local v42    # "invisibleTypeAnnotationOffsets":[I
    .restart local v2    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .restart local v3    # "currentBytecodeOffset":I
    .restart local v4    # "bytecodeEndOffset":I
    .restart local v5    # "invisibleTypeAnnotationOffsets":[I
    .local v14, "maxLocals":I
    .local v15, "visibleTypeAnnotationOffsets":[I
    .restart local v27    # "insertFrame":Z
    .restart local v30    # "stackMapFrameOffset":I
    .local v33, "compressedFrames":Z
    :cond_1f
    move v13, v3

    move/from16 v37, v4

    move-object/from16 v42, v5

    move/from16 v40, v14

    move-object/from16 v41, v15

    move/from16 v15, v30

    move/from16 v14, v33

    move-object/from16 v33, v2

    .line 2063
    .end local v2    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .end local v3    # "currentBytecodeOffset":I
    .end local v4    # "bytecodeEndOffset":I
    .end local v5    # "invisibleTypeAnnotationOffsets":[I
    .end local v30    # "stackMapFrameOffset":I
    .restart local v13    # "currentBytecodeOffset":I
    .local v14, "compressedFrames":Z
    .local v15, "stackMapFrameOffset":I
    .local v33, "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .restart local v37    # "bytecodeEndOffset":I
    .restart local v40    # "maxLocals":I
    .restart local v41    # "visibleTypeAnnotationOffsets":[I
    .restart local v42    # "invisibleTypeAnnotationOffsets":[I
    :goto_17
    if-ge v15, v9, :cond_20

    .line 2064
    nop

    .line 2065
    invoke-direct {v8, v15, v14, v6, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readStackMapFrame(IZZLnet/bytebuddy/jar/asm/Context;)I

    move-result v0

    move-object/from16 v1, p1

    move v3, v13

    move-object/from16 v2, v33

    move/from16 v13, v36

    move/from16 v4, v37

    move-object/from16 v15, v41

    move-object/from16 v5, v42

    move/from16 v33, v14

    move/from16 v14, v40

    .end local v15    # "stackMapFrameOffset":I
    .local v0, "stackMapFrameOffset":I
    goto/16 :goto_13

    .line 2067
    .end local v0    # "stackMapFrameOffset":I
    .restart local v15    # "stackMapFrameOffset":I
    :cond_20
    const/4 v0, 0x0

    move-object/from16 v1, p1

    move v3, v13

    move-object/from16 v2, v33

    move/from16 v13, v36

    move/from16 v4, v37

    move-object/from16 v15, v41

    move-object/from16 v5, v42

    move/from16 v33, v14

    move/from16 v14, v40

    .end local v15    # "stackMapFrameOffset":I
    .restart local v0    # "stackMapFrameOffset":I
    goto/16 :goto_13

    .line 2038
    .end local v36    # "maxStack":I
    .end local v37    # "bytecodeEndOffset":I
    .end local v40    # "maxLocals":I
    .end local v41    # "visibleTypeAnnotationOffsets":[I
    .end local v42    # "invisibleTypeAnnotationOffsets":[I
    .restart local v2    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .restart local v3    # "currentBytecodeOffset":I
    .restart local v4    # "bytecodeEndOffset":I
    .restart local v5    # "invisibleTypeAnnotationOffsets":[I
    .local v13, "maxStack":I
    .local v14, "maxLocals":I
    .local v15, "visibleTypeAnnotationOffsets":[I
    .local v33, "compressedFrames":Z
    :cond_21
    move/from16 v37, v4

    move-object/from16 v42, v5

    move/from16 v36, v13

    move/from16 v40, v14

    move-object/from16 v41, v15

    move/from16 v14, v33

    move v15, v0

    move-object/from16 v33, v2

    move v13, v3

    .line 2073
    .end local v0    # "stackMapFrameOffset":I
    .end local v2    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .end local v3    # "currentBytecodeOffset":I
    .end local v4    # "bytecodeEndOffset":I
    .end local v5    # "invisibleTypeAnnotationOffsets":[I
    .local v13, "currentBytecodeOffset":I
    .local v14, "compressedFrames":Z
    .local v15, "stackMapFrameOffset":I
    .local v33, "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .restart local v36    # "maxStack":I
    .restart local v37    # "bytecodeEndOffset":I
    .restart local v40    # "maxLocals":I
    .restart local v41    # "visibleTypeAnnotationOffsets":[I
    .restart local v42    # "invisibleTypeAnnotationOffsets":[I
    :goto_18
    if-eqz v27, :cond_23

    .line 2074
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_22

    .line 2075
    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 2077
    :cond_22
    const/16 v27, 0x0

    .line 2081
    :cond_23
    aget-byte v0, v11, v7

    and-int/lit16 v4, v0, 0xff

    .line 2082
    .local v4, "opcode":I
    const/16 v0, 0xc8

    packed-switch v4, :pswitch_data_1

    .line 2474
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2320
    :pswitch_b
    add-int/lit8 v1, v7, 0x1

    .line 2321
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int v3, v13, v1

    aget-object v1, v12, v3

    .line 2320
    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 2325
    const/4 v0, 0x1

    .line 2326
    .end local v27    # "insertFrame":Z
    .local v0, "insertFrame":Z
    add-int/lit8 v7, v7, 0x5

    .line 2327
    move/from16 v27, v0

    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v28

    const/16 v2, 0x8

    move-object v9, v3

    move/from16 v28, v6

    goto/16 :goto_22

    .line 2296
    .end local v0    # "insertFrame":Z
    .restart local v27    # "insertFrame":Z
    :pswitch_c
    move-object/from16 v3, p1

    const/16 v1, 0xda

    if-ge v4, v1, :cond_24

    .line 2297
    add-int/lit8 v1, v4, -0x31

    goto :goto_19

    .line 2298
    :cond_24
    add-int/lit8 v1, v4, -0x14

    :goto_19
    nop

    .line 2299
    .end local v4    # "opcode":I
    .local v1, "opcode":I
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/2addr v2, v13

    aget-object v2, v12, v2

    .line 2300
    .local v2, "target":Lnet/bytebuddy/jar/asm/Label;
    const/16 v4, 0xa7

    if-eq v1, v4, :cond_27

    const/16 v5, 0xa8

    if-ne v1, v5, :cond_25

    const/4 v5, 0x1

    goto :goto_1b

    .line 2307
    :cond_25
    if-ge v1, v4, :cond_26

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    sub-int/2addr v4, v5

    goto :goto_1a

    :cond_26
    const/4 v5, 0x1

    xor-int/lit8 v4, v1, 0x1

    :goto_1a
    move v1, v4

    .line 2308
    add-int/lit8 v4, v13, 0x3

    invoke-direct {v8, v4, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    .line 2309
    .local v4, "endif":Lnet/bytebuddy/jar/asm/Label;
    invoke-virtual {v3, v1, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 2310
    invoke-virtual {v3, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 2313
    const/16 v27, 0x1

    move v4, v1

    goto :goto_1c

    .line 2300
    .end local v4    # "endif":Lnet/bytebuddy/jar/asm/Label;
    :cond_27
    const/4 v5, 0x1

    .line 2302
    :goto_1b
    add-int/lit8 v0, v1, 0x21

    invoke-virtual {v3, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    move v4, v1

    .line 2315
    .end local v1    # "opcode":I
    .local v4, "opcode":I
    :goto_1c
    add-int/lit8 v7, v7, 0x3

    .line 2316
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v28

    const/16 v2, 0x8

    move-object v9, v3

    move/from16 v28, v6

    goto/16 :goto_22

    .line 2265
    .end local v2    # "target":Lnet/bytebuddy/jar/asm/Label;
    :pswitch_d
    move-object/from16 v3, p1

    const/4 v5, 0x1

    sub-int v0, v4, v24

    add-int/lit8 v1, v7, 0x1

    .line 2267
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/2addr v1, v13

    aget-object v1, v12, v1

    .line 2265
    invoke-virtual {v3, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 2268
    add-int/lit8 v7, v7, 0x5

    .line 2269
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v28

    const/16 v2, 0x8

    move-object v9, v3

    move/from16 v28, v6

    goto/16 :goto_22

    .line 2469
    :pswitch_e
    move-object/from16 v3, p1

    const/4 v5, 0x1

    add-int/lit8 v0, v7, 0x1

    .line 2470
    move-object/from16 v2, v28

    .end local v28    # "charBuffer":[C
    .local v2, "charBuffer":[C
    invoke-virtual {v8, v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v7, 0x3

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    .line 2469
    invoke-virtual {v3, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 2471
    add-int/lit8 v7, v7, 0x4

    .line 2472
    move/from16 v28, v6

    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v0, v17

    move/from16 v1, v19

    move-object v14, v2

    move-object v9, v3

    const/16 v2, 0x8

    goto/16 :goto_22

    .line 2329
    .end local v2    # "charBuffer":[C
    .restart local v28    # "charBuffer":[C
    :pswitch_f
    move-object/from16 v3, p1

    move-object/from16 v2, v28

    const/4 v5, 0x1

    .end local v28    # "charBuffer":[C
    .restart local v2    # "charBuffer":[C
    add-int/lit8 v0, v7, 0x1

    aget-byte v0, v11, v0

    and-int/lit16 v4, v0, 0xff

    .line 2330
    const/16 v0, 0x84

    if-ne v4, v0, :cond_28

    .line 2331
    add-int/lit8 v0, v7, 0x2

    .line 2332
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v7, 0x4

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v1

    .line 2331
    invoke-virtual {v3, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    .line 2333
    add-int/lit8 v7, v7, 0x6

    move/from16 v28, v6

    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v0, v17

    move/from16 v1, v19

    move-object v14, v2

    move-object v9, v3

    const/16 v2, 0x8

    goto/16 :goto_22

    .line 2335
    :cond_28
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2336
    add-int/lit8 v7, v7, 0x4

    .line 2338
    move/from16 v28, v6

    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v0, v17

    move/from16 v1, v19

    move-object v14, v2

    move-object v9, v3

    const/16 v2, 0x8

    goto/16 :goto_22

    .line 2460
    .end local v2    # "charBuffer":[C
    .restart local v28    # "charBuffer":[C
    :pswitch_10
    move-object/from16 v3, p1

    move-object/from16 v2, v28

    const/4 v5, 0x1

    .end local v28    # "charBuffer":[C
    .restart local v2    # "charBuffer":[C
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v8, v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 2461
    add-int/lit8 v7, v7, 0x3

    .line 2462
    move/from16 v28, v6

    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v0, v17

    move/from16 v1, v19

    move-object v14, v2

    move-object v9, v3

    const/16 v2, 0x8

    goto/16 :goto_22

    .line 2436
    .end local v2    # "charBuffer":[C
    .restart local v28    # "charBuffer":[C
    :pswitch_11
    move-object/from16 v3, p1

    move-object/from16 v2, v28

    const/4 v5, 0x1

    .end local v28    # "charBuffer":[C
    .restart local v2    # "charBuffer":[C
    iget-object v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    .line 2437
    .local v0, "cpInfoOffset":I
    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v1, v1, v5

    .line 2438
    .local v1, "nameAndTypeCpInfoOffset":I
    invoke-virtual {v8, v1, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 2439
    .local v5, "name":Ljava/lang/String;
    move/from16 v28, v6

    .end local v6    # "expandFrames":Z
    .local v28, "expandFrames":Z
    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v8, v6, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 2440
    .local v6, "descriptor":Ljava/lang/String;
    move/from16 v30, v1

    .end local v1    # "nameAndTypeCpInfoOffset":I
    .local v30, "nameAndTypeCpInfoOffset":I
    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ClassReader;->bootstrapMethodOffsets:[I

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v38

    aget v1, v1, v38

    .line 2441
    .local v1, "bootstrapMethodOffset":I
    nop

    .line 2442
    move/from16 v38, v0

    .end local v0    # "cpInfoOffset":I
    .local v38, "cpInfoOffset":I
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v8, v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/jar/asm/Handle;

    .line 2443
    .local v0, "handle":Lnet/bytebuddy/jar/asm/Handle;
    move/from16 v39, v9

    .end local v9    # "stackMapTableEndOffset":I
    .local v39, "stackMapTableEndOffset":I
    add-int/lit8 v9, v1, 0x2

    .line 2444
    invoke-virtual {v8, v9}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    new-array v9, v9, [Ljava/lang/Object;

    .line 2445
    .local v9, "bootstrapMethodArguments":[Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x4

    .line 2446
    const/16 v43, 0x0

    move/from16 v49, v43

    move/from16 v43, v14

    move/from16 v14, v49

    .local v14, "i":I
    .local v43, "compressedFrames":Z
    :goto_1d
    move/from16 v44, v15

    .end local v15    # "stackMapFrameOffset":I
    .local v44, "stackMapFrameOffset":I
    array-length v15, v9

    if-ge v14, v15, :cond_29

    .line 2447
    nop

    .line 2448
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    invoke-virtual {v8, v15, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v9, v14

    .line 2449
    add-int/lit8 v1, v1, 0x2

    .line 2446
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v44

    goto :goto_1d

    .line 2451
    .end local v14    # "i":I
    :cond_29
    invoke-virtual {v3, v5, v6, v0, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 2453
    add-int/lit8 v7, v7, 0x5

    .line 2454
    move-object v14, v2

    move-object v9, v3

    move/from16 v0, v17

    move/from16 v1, v19

    const/16 v2, 0x8

    goto/16 :goto_22

    .line 2415
    .end local v0    # "handle":Lnet/bytebuddy/jar/asm/Handle;
    .end local v1    # "bootstrapMethodOffset":I
    .end local v2    # "charBuffer":[C
    .end local v5    # "name":Ljava/lang/String;
    .end local v30    # "nameAndTypeCpInfoOffset":I
    .end local v38    # "cpInfoOffset":I
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .local v6, "expandFrames":Z
    .local v9, "stackMapTableEndOffset":I
    .local v14, "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_12
    move-object/from16 v3, p1

    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v2, v28

    move/from16 v28, v6

    .end local v6    # "expandFrames":Z
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .restart local v2    # "charBuffer":[C
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    iget-object v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v6, v0, v1

    .line 2416
    .local v6, "cpInfoOffset":I
    iget-object v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v6, 0x2

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v9, v0, v1

    .line 2417
    .local v9, "nameAndTypeCpInfoOffset":I
    invoke-virtual {v8, v6, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    .line 2418
    .local v14, "owner":Ljava/lang/String;
    invoke-virtual {v8, v9, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 2419
    .local v15, "name":Ljava/lang/String;
    add-int/lit8 v0, v9, 0x2

    invoke-virtual {v8, v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 2420
    .local v1, "descriptor":Ljava/lang/String;
    const/16 v0, 0xb6

    if-ge v4, v0, :cond_2a

    .line 2421
    invoke-virtual {v3, v4, v14, v15, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v34, v1

    move-object/from16 v45, v2

    move/from16 v46, v6

    move/from16 v30, v9

    move-object v9, v3

    move v6, v4

    goto :goto_1f

    .line 2423
    :cond_2a
    add-int/lit8 v0, v6, -0x1

    aget-byte v0, v11, v0

    const/16 v5, 0xb

    if-ne v0, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_1e

    :cond_2b
    const/4 v5, 0x0

    :goto_1e
    const/4 v0, 0x1

    .line 2425
    .local v5, "isInterface":Z
    move/from16 v30, v9

    move v9, v0

    .end local v9    # "nameAndTypeCpInfoOffset":I
    .restart local v30    # "nameAndTypeCpInfoOffset":I
    move-object/from16 v0, p1

    move-object/from16 v34, v1

    .end local v1    # "descriptor":Ljava/lang/String;
    .local v34, "descriptor":Ljava/lang/String;
    move v1, v4

    move-object/from16 v45, v2

    .end local v2    # "charBuffer":[C
    .local v45, "charBuffer":[C
    move-object v2, v14

    move-object v9, v3

    move-object v3, v15

    move/from16 v46, v6

    move v6, v4

    .end local v4    # "opcode":I
    .local v6, "opcode":I
    .local v46, "cpInfoOffset":I
    move-object/from16 v4, v34

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2427
    .end local v5    # "isInterface":Z
    :goto_1f
    const/16 v0, 0xb9

    if-ne v6, v0, :cond_2c

    .line 2428
    add-int/lit8 v7, v7, 0x5

    move v4, v6

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    const/16 v2, 0x8

    goto/16 :goto_22

    .line 2430
    :cond_2c
    add-int/lit8 v7, v7, 0x3

    .line 2432
    move v4, v6

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    const/16 v2, 0x8

    goto/16 :goto_22

    .line 2359
    .end local v30    # "nameAndTypeCpInfoOffset":I
    .end local v34    # "descriptor":Ljava/lang/String;
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .end local v45    # "charBuffer":[C
    .end local v46    # "cpInfoOffset":I
    .restart local v4    # "opcode":I
    .local v6, "expandFrames":Z
    .local v9, "stackMapTableEndOffset":I
    .local v14, "compressedFrames":Z
    .local v15, "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_13
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v28

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    .restart local v45    # "charBuffer":[C
    and-int/lit8 v0, v13, 0x3

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v7, v0

    .line 2361
    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v3, v13, v0

    aget-object v0, v12, v3

    .line 2362
    .local v0, "defaultLabel":Lnet/bytebuddy/jar/asm/Label;
    add-int/lit8 v1, v7, 0x4

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 2363
    .local v1, "numPairs":I
    const/16 v2, 0x8

    add-int/2addr v7, v2

    .line 2364
    new-array v3, v1, [I

    .line 2365
    .local v3, "keys":[I
    new-array v4, v1, [Lnet/bytebuddy/jar/asm/Label;

    .line 2366
    .local v4, "values":[Lnet/bytebuddy/jar/asm/Label;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v1, :cond_2d

    .line 2367
    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v14

    aput v14, v3, v5

    .line 2368
    add-int/lit8 v14, v7, 0x4

    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v14

    add-int/2addr v14, v13

    aget-object v14, v12, v14

    aput-object v14, v4, v5

    .line 2369
    add-int/lit8 v7, v7, 0x8

    .line 2366
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 2371
    .end local v5    # "i":I
    :cond_2d
    invoke-virtual {v9, v0, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    .line 2372
    move v4, v6

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    goto/16 :goto_22

    .line 2342
    .end local v0    # "defaultLabel":Lnet/bytebuddy/jar/asm/Label;
    .end local v1    # "numPairs":I
    .end local v3    # "keys":[I
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .end local v45    # "charBuffer":[C
    .local v4, "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .restart local v14    # "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_14
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    .restart local v45    # "charBuffer":[C
    and-int/lit8 v0, v13, 0x3

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v7, v0

    .line 2344
    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v3, v13, v0

    aget-object v0, v12, v3

    .line 2345
    .restart local v0    # "defaultLabel":Lnet/bytebuddy/jar/asm/Label;
    add-int/lit8 v1, v7, 0x4

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 2346
    .local v1, "low":I
    add-int/lit8 v3, v7, 0x8

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    .line 2347
    .local v3, "high":I
    add-int/lit8 v7, v7, 0xc

    .line 2348
    sub-int v4, v3, v1

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [Lnet/bytebuddy/jar/asm/Label;

    .line 2349
    .local v4, "table":[Lnet/bytebuddy/jar/asm/Label;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_21
    array-length v14, v4

    if-ge v5, v14, :cond_2e

    .line 2350
    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v14

    add-int/2addr v14, v13

    aget-object v14, v12, v14

    aput-object v14, v4, v5

    .line 2351
    add-int/lit8 v7, v7, 0x4

    .line 2349
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 2353
    .end local v5    # "i":I
    :cond_2e
    invoke-virtual {v9, v1, v3, v0, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    .line 2354
    move v4, v6

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    goto/16 :goto_22

    .line 2259
    .end local v0    # "defaultLabel":Lnet/bytebuddy/jar/asm/Label;
    .end local v1    # "low":I
    .end local v3    # "high":I
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .end local v45    # "charBuffer":[C
    .local v4, "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .restart local v14    # "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_15
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    .restart local v45    # "charBuffer":[C
    add-int/lit8 v0, v7, 0x1

    .line 2260
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v0

    add-int v3, v13, v0

    aget-object v0, v12, v3

    .line 2259
    invoke-virtual {v9, v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 2261
    add-int/lit8 v7, v7, 0x3

    .line 2262
    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    goto/16 :goto_22

    .line 2464
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .end local v45    # "charBuffer":[C
    .restart local v4    # "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .restart local v14    # "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_16
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    .restart local v45    # "charBuffer":[C
    add-int/lit8 v0, v7, 0x1

    aget-byte v0, v11, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v7, 0x2

    aget-byte v1, v11, v1

    invoke-virtual {v9, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    .line 2466
    add-int/lit8 v7, v7, 0x3

    .line 2467
    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    goto/16 :goto_22

    .line 2237
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .end local v45    # "charBuffer":[C
    .restart local v4    # "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .restart local v14    # "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_17
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    .restart local v45    # "charBuffer":[C
    add-int/lit8 v4, v6, -0x3b

    .line 2238
    .end local v6    # "opcode":I
    .restart local v4    # "opcode":I
    shr-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x36

    and-int/lit8 v1, v4, 0x3

    invoke-virtual {v9, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2239
    add-int/lit8 v7, v7, 0x1

    .line 2240
    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    goto/16 :goto_22

    .line 2213
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .end local v45    # "charBuffer":[C
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .restart local v14    # "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_18
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    .restart local v45    # "charBuffer":[C
    add-int/lit8 v4, v6, -0x1a

    .line 2214
    .end local v6    # "opcode":I
    .restart local v4    # "opcode":I
    shr-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v1, v4, 0x3

    invoke-virtual {v9, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2215
    add-int/lit8 v7, v7, 0x1

    .line 2216
    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    goto/16 :goto_22

    .line 2385
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .end local v45    # "charBuffer":[C
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .restart local v14    # "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_19
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    .restart local v45    # "charBuffer":[C
    add-int/lit8 v0, v7, 0x1

    aget-byte v0, v11, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v9, v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2386
    add-int/lit8 v7, v7, 0x2

    .line 2387
    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v14, v45

    goto/16 :goto_22

    .line 2403
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .end local v45    # "charBuffer":[C
    .restart local v4    # "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .restart local v14    # "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_1a
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v14    # "compressedFrames":Z
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    .restart local v45    # "charBuffer":[C
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move-object/from16 v14, v45

    .end local v45    # "charBuffer":[C
    .local v14, "charBuffer":[C
    invoke-virtual {v8, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 2404
    add-int/lit8 v7, v7, 0x3

    .line 2405
    move/from16 v0, v17

    move/from16 v1, v19

    goto/16 :goto_22

    .line 2398
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .restart local v4    # "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .local v14, "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_1b
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v14, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v14, "charBuffer":[C
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    add-int/lit8 v0, v7, 0x1

    aget-byte v0, v11, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v8, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 2399
    add-int/lit8 v7, v7, 0x2

    .line 2400
    move/from16 v0, v17

    move/from16 v1, v19

    goto :goto_22

    .line 2394
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .restart local v4    # "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .local v14, "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_1c
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v14, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v14, "charBuffer":[C
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v0

    invoke-virtual {v9, v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 2395
    add-int/lit8 v7, v7, 0x3

    .line 2396
    move/from16 v0, v17

    move/from16 v1, v19

    goto :goto_22

    .line 2390
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .restart local v4    # "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .local v14, "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_1d
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v14, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v14, "charBuffer":[C
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    add-int/lit8 v0, v7, 0x1

    aget-byte v0, v11, v0

    invoke-virtual {v9, v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 2391
    add-int/lit8 v7, v7, 0x2

    .line 2392
    move/from16 v0, v17

    move/from16 v1, v19

    goto :goto_22

    .line 2190
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .restart local v4    # "opcode":I
    .local v6, "expandFrames":Z
    .restart local v9    # "stackMapTableEndOffset":I
    .local v14, "compressedFrames":Z
    .restart local v15    # "stackMapFrameOffset":I
    .local v28, "charBuffer":[C
    :pswitch_1e
    move/from16 v39, v9

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v14, v28

    const/16 v2, 0x8

    move-object/from16 v9, p1

    move/from16 v28, v6

    move v6, v4

    .end local v4    # "opcode":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v15    # "stackMapFrameOffset":I
    .local v6, "opcode":I
    .local v14, "charBuffer":[C
    .local v28, "expandFrames":Z
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v43    # "compressedFrames":Z
    .restart local v44    # "stackMapFrameOffset":I
    invoke-virtual {v9, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 2191
    add-int/lit8 v7, v7, 0x1

    .line 2192
    move/from16 v0, v17

    move/from16 v1, v19

    .line 2478
    .end local v6    # "opcode":I
    .end local v17    # "currentVisibleTypeAnnotationIndex":I
    .end local v19    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .local v0, "currentVisibleTypeAnnotationIndex":I
    .local v1, "currentVisibleTypeAnnotationBytecodeOffset":I
    .restart local v4    # "opcode":I
    :goto_22
    if-eqz v41, :cond_31

    move-object/from16 v15, v41

    .end local v41    # "visibleTypeAnnotationOffsets":[I
    .local v15, "visibleTypeAnnotationOffsets":[I
    array-length v3, v15

    if-ge v0, v3, :cond_30

    if-gt v1, v13, :cond_30

    .line 2481
    if-ne v1, v13, :cond_2f

    .line 2483
    aget v3, v15, v0

    .line 2484
    invoke-direct {v8, v10, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v3

    .line 2487
    .local v3, "currentAnnotationOffset":I
    invoke-virtual {v8, v3, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 2488
    .local v5, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x2

    .line 2490
    iget v6, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 2491
    move/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .local v17, "currentVisibleTypeAnnotationBytecodeOffset":I
    invoke-virtual {v9, v6, v2, v5, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v2

    .line 2490
    invoke-direct {v8, v2, v3, v1, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    goto :goto_23

    .line 2481
    .end local v3    # "currentAnnotationOffset":I
    .end local v5    # "annotationDescriptor":Ljava/lang/String;
    .end local v17    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .restart local v1    # "currentVisibleTypeAnnotationBytecodeOffset":I
    :cond_2f
    move/from16 v17, v1

    .line 2500
    .end local v1    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .restart local v17    # "currentVisibleTypeAnnotationBytecodeOffset":I
    :goto_23
    add-int/lit8 v0, v0, 0x1

    .line 2501
    invoke-direct {v8, v15, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v1

    move-object/from16 v41, v15

    const/16 v2, 0x8

    .end local v17    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .restart local v1    # "currentVisibleTypeAnnotationBytecodeOffset":I
    goto :goto_22

    .line 2478
    :cond_30
    move/from16 v17, v1

    .end local v1    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .restart local v17    # "currentVisibleTypeAnnotationBytecodeOffset":I
    goto :goto_24

    .end local v15    # "visibleTypeAnnotationOffsets":[I
    .end local v17    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .restart local v1    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .restart local v41    # "visibleTypeAnnotationOffsets":[I
    :cond_31
    move/from16 v17, v1

    move-object/from16 v15, v41

    .line 2506
    .end local v1    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .end local v41    # "visibleTypeAnnotationOffsets":[I
    .restart local v15    # "visibleTypeAnnotationOffsets":[I
    .restart local v17    # "currentVisibleTypeAnnotationBytecodeOffset":I
    :goto_24
    move/from16 v1, v20

    move/from16 v2, v26

    .end local v20    # "currentInvisibleTypeAnnotationIndex":I
    .end local v26    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .local v1, "currentInvisibleTypeAnnotationIndex":I
    .local v2, "currentInvisibleTypeAnnotationBytecodeOffset":I
    :goto_25
    move-object/from16 v5, v42

    .end local v42    # "invisibleTypeAnnotationOffsets":[I
    .local v5, "invisibleTypeAnnotationOffsets":[I
    if-eqz v5, :cond_33

    array-length v3, v5

    if-ge v1, v3, :cond_33

    if-gt v2, v13, :cond_33

    .line 2509
    if-ne v2, v13, :cond_32

    .line 2511
    aget v3, v5, v1

    .line 2512
    invoke-direct {v8, v10, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v3

    .line 2515
    .restart local v3    # "currentAnnotationOffset":I
    invoke-virtual {v8, v3, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 2516
    .local v6, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x2

    .line 2518
    move/from16 v19, v0

    .end local v0    # "currentVisibleTypeAnnotationIndex":I
    .local v19, "currentVisibleTypeAnnotationIndex":I
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v20, v2

    .end local v2    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .local v20, "currentInvisibleTypeAnnotationBytecodeOffset":I
    iget-object v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 2519
    move/from16 v30, v7

    const/4 v7, 0x0

    .end local v7    # "currentOffset":I
    .local v30, "currentOffset":I
    invoke-virtual {v9, v0, v2, v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 2518
    const/4 v2, 0x1

    invoke-direct {v8, v0, v3, v2, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    goto :goto_26

    .line 2509
    .end local v3    # "currentAnnotationOffset":I
    .end local v6    # "annotationDescriptor":Ljava/lang/String;
    .end local v19    # "currentVisibleTypeAnnotationIndex":I
    .end local v20    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .end local v30    # "currentOffset":I
    .restart local v0    # "currentVisibleTypeAnnotationIndex":I
    .restart local v2    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .restart local v7    # "currentOffset":I
    :cond_32
    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v30, v7

    const/4 v7, 0x0

    .line 2528
    .end local v0    # "currentVisibleTypeAnnotationIndex":I
    .end local v2    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .end local v7    # "currentOffset":I
    .restart local v19    # "currentVisibleTypeAnnotationIndex":I
    .restart local v20    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .restart local v30    # "currentOffset":I
    :goto_26
    add-int/lit8 v1, v1, 0x1

    .line 2529
    invoke-direct {v8, v5, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v2

    move-object/from16 v42, v5

    move/from16 v0, v19

    move/from16 v7, v30

    .end local v20    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .restart local v2    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    goto :goto_25

    .line 2506
    .end local v19    # "currentVisibleTypeAnnotationIndex":I
    .end local v30    # "currentOffset":I
    .restart local v0    # "currentVisibleTypeAnnotationIndex":I
    .restart local v7    # "currentOffset":I
    :cond_33
    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v30, v7

    const/4 v7, 0x0

    .line 2532
    .end local v0    # "currentVisibleTypeAnnotationIndex":I
    .end local v2    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .end local v4    # "opcode":I
    .end local v7    # "currentOffset":I
    .end local v13    # "currentBytecodeOffset":I
    .end local v33    # "currentLabel":Lnet/bytebuddy/jar/asm/Label;
    .restart local v19    # "currentVisibleTypeAnnotationIndex":I
    .restart local v20    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .restart local v30    # "currentOffset":I
    move/from16 v26, v20

    move/from16 v6, v28

    move/from16 v7, v30

    move/from16 v13, v36

    move/from16 v9, v39

    move/from16 v33, v43

    move/from16 v30, v44

    move/from16 v20, v1

    move-object/from16 v28, v14

    move-object v1, v15

    move-object/from16 v15, v29

    move/from16 v29, v37

    move/from16 v14, v40

    move/from16 v49, v19

    move/from16 v19, v17

    move/from16 v17, v49

    goto/16 :goto_10

    .line 2533
    .end local v29    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v36    # "maxStack":I
    .end local v37    # "bytecodeEndOffset":I
    .end local v39    # "stackMapTableEndOffset":I
    .end local v40    # "maxLocals":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "stackMapFrameOffset":I
    .local v1, "visibleTypeAnnotationOffsets":[I
    .local v4, "bytecodeEndOffset":I
    .local v6, "expandFrames":Z
    .restart local v7    # "currentOffset":I
    .restart local v9    # "stackMapTableEndOffset":I
    .local v13, "maxStack":I
    .local v14, "maxLocals":I
    .local v15, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v17, "currentVisibleTypeAnnotationIndex":I
    .local v19, "currentVisibleTypeAnnotationBytecodeOffset":I
    .local v20, "currentInvisibleTypeAnnotationIndex":I
    .restart local v26    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .local v28, "charBuffer":[C
    .local v30, "stackMapFrameOffset":I
    .local v33, "compressedFrames":Z
    :cond_34
    move/from16 v37, v4

    move v0, v7

    move/from16 v39, v9

    move/from16 v36, v13

    move/from16 v40, v14

    move-object/from16 v29, v15

    move-object/from16 v14, v28

    move/from16 v43, v33

    const/4 v7, 0x0

    move-object/from16 v9, p1

    move-object v15, v1

    move/from16 v28, v6

    .end local v1    # "visibleTypeAnnotationOffsets":[I
    .end local v4    # "bytecodeEndOffset":I
    .end local v6    # "expandFrames":Z
    .end local v7    # "currentOffset":I
    .end local v9    # "stackMapTableEndOffset":I
    .end local v13    # "maxStack":I
    .end local v33    # "compressedFrames":Z
    .local v0, "currentOffset":I
    .local v14, "charBuffer":[C
    .local v15, "visibleTypeAnnotationOffsets":[I
    .local v28, "expandFrames":Z
    .restart local v29    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v36    # "maxStack":I
    .restart local v37    # "bytecodeEndOffset":I
    .restart local v39    # "stackMapTableEndOffset":I
    .restart local v40    # "maxLocals":I
    .restart local v43    # "compressedFrames":Z
    aget-object v1, v12, v25

    if-eqz v1, :cond_35

    .line 2534
    aget-object v1, v12, v25

    invoke-virtual {v9, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 2538
    :cond_35
    move/from16 v13, v32

    .end local v32    # "localVariableTableOffset":I
    .local v13, "localVariableTableOffset":I
    if-eqz v13, :cond_3b

    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3b

    .line 2540
    const/4 v1, 0x0

    .line 2541
    .local v1, "typeTable":[I
    move/from16 v6, v31

    .end local v31    # "localVariableTypeTableOffset":I
    .local v6, "localVariableTypeTableOffset":I
    if-eqz v6, :cond_37

    .line 2542
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    new-array v1, v2, [I

    .line 2543
    add-int/lit8 v0, v6, 0x2

    .line 2544
    array-length v2, v1

    .line 2545
    .local v2, "typeTableIndex":I
    :goto_27
    if-lez v2, :cond_36

    .line 2547
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v0, 0x6

    aput v3, v1, v2

    .line 2548
    const/4 v3, -0x1

    add-int/2addr v2, v3

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aput v4, v1, v2

    .line 2549
    add-int/2addr v2, v3

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aput v4, v1, v2

    .line 2550
    add-int/lit8 v0, v0, 0xa

    goto :goto_27

    .line 2545
    :cond_36
    move-object v4, v1

    goto :goto_28

    .line 2541
    .end local v2    # "typeTableIndex":I
    :cond_37
    move-object v4, v1

    .line 2553
    .end local v1    # "typeTable":[I
    .local v4, "typeTable":[I
    :goto_28
    invoke-virtual {v8, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 2554
    .local v1, "localVariableTableLength":I
    add-int/lit8 v2, v13, 0x2

    .line 2555
    .end local v0    # "currentOffset":I
    .local v2, "currentOffset":I
    :goto_29
    add-int/lit8 v21, v1, -0x1

    .end local v1    # "localVariableTableLength":I
    .local v21, "localVariableTableLength":I
    if-lez v1, :cond_3a

    .line 2556
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 2557
    .local v3, "startPc":I
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v23

    .line 2558
    .local v23, "length":I
    add-int/lit8 v0, v2, 0x4

    invoke-virtual {v8, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v31

    .line 2559
    .local v31, "name":Ljava/lang/String;
    add-int/lit8 v0, v2, 0x6

    invoke-virtual {v8, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v32

    .line 2560
    .local v32, "descriptor":Ljava/lang/String;
    add-int/lit8 v0, v2, 0x8

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 2561
    .local v1, "index":I
    add-int/lit8 v33, v2, 0xa

    .line 2562
    .end local v2    # "currentOffset":I
    .local v33, "currentOffset":I
    const/4 v0, 0x0

    .line 2563
    .local v0, "signature":Ljava/lang/String;
    if-eqz v4, :cond_39

    .line 2564
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    array-length v7, v4

    if-ge v2, v7, :cond_39

    .line 2565
    aget v7, v4, v2

    if-ne v7, v3, :cond_38

    add-int/lit8 v7, v2, 0x1

    aget v7, v4, v7

    if-ne v7, v1, :cond_38

    .line 2566
    add-int/lit8 v7, v2, 0x2

    aget v7, v4, v7

    invoke-virtual {v8, v7, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 2567
    move-object v7, v0

    goto :goto_2b

    .line 2564
    :cond_38
    add-int/lit8 v2, v2, 0x3

    const/4 v7, 0x0

    goto :goto_2a

    .line 2571
    .end local v2    # "i":I
    :cond_39
    move-object v7, v0

    .end local v0    # "signature":Ljava/lang/String;
    .local v7, "signature":Ljava/lang/String;
    :goto_2b
    aget-object v35, v12, v3

    add-int v0, v3, v23

    aget-object v41, v12, v0

    move-object/from16 v0, p1

    move/from16 v42, v1

    .end local v1    # "index":I
    .local v42, "index":I
    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v44, v3

    .end local v3    # "startPc":I
    .local v44, "startPc":I
    move-object v3, v7

    move-object/from16 v45, v4

    .end local v4    # "typeTable":[I
    .local v45, "typeTable":[I
    move-object/from16 v4, v35

    move-object/from16 v47, v5

    .end local v5    # "invisibleTypeAnnotationOffsets":[I
    .local v47, "invisibleTypeAnnotationOffsets":[I
    move-object/from16 v5, v41

    move/from16 v35, v6

    .end local v6    # "localVariableTypeTableOffset":I
    .local v35, "localVariableTypeTableOffset":I
    move/from16 v6, v42

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    .line 2573
    .end local v7    # "signature":Ljava/lang/String;
    .end local v23    # "length":I
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "descriptor":Ljava/lang/String;
    .end local v42    # "index":I
    .end local v44    # "startPc":I
    move/from16 v1, v21

    move/from16 v2, v33

    move/from16 v6, v35

    move-object/from16 v4, v45

    move-object/from16 v5, v47

    const/4 v7, 0x0

    goto :goto_29

    .line 2555
    .end local v33    # "currentOffset":I
    .end local v35    # "localVariableTypeTableOffset":I
    .end local v45    # "typeTable":[I
    .end local v47    # "invisibleTypeAnnotationOffsets":[I
    .local v2, "currentOffset":I
    .restart local v4    # "typeTable":[I
    .restart local v5    # "invisibleTypeAnnotationOffsets":[I
    .restart local v6    # "localVariableTypeTableOffset":I
    :cond_3a
    move-object/from16 v45, v4

    move-object/from16 v47, v5

    move/from16 v35, v6

    .end local v4    # "typeTable":[I
    .end local v5    # "invisibleTypeAnnotationOffsets":[I
    .end local v6    # "localVariableTypeTableOffset":I
    .restart local v35    # "localVariableTypeTableOffset":I
    .restart local v45    # "typeTable":[I
    .restart local v47    # "invisibleTypeAnnotationOffsets":[I
    move v7, v2

    goto :goto_2c

    .line 2538
    .end local v2    # "currentOffset":I
    .end local v21    # "localVariableTableLength":I
    .end local v35    # "localVariableTypeTableOffset":I
    .end local v45    # "typeTable":[I
    .end local v47    # "invisibleTypeAnnotationOffsets":[I
    .local v0, "currentOffset":I
    .restart local v5    # "invisibleTypeAnnotationOffsets":[I
    .local v31, "localVariableTypeTableOffset":I
    :cond_3b
    move-object/from16 v47, v5

    move/from16 v35, v31

    .line 2577
    .end local v5    # "invisibleTypeAnnotationOffsets":[I
    .end local v31    # "localVariableTypeTableOffset":I
    .restart local v35    # "localVariableTypeTableOffset":I
    .restart local v47    # "invisibleTypeAnnotationOffsets":[I
    move v7, v0

    .end local v0    # "currentOffset":I
    .local v7, "currentOffset":I
    :goto_2c
    const/16 v6, 0x41

    const/16 v5, 0x40

    if-eqz v15, :cond_3f

    .line 2578
    array-length v4, v15

    move v0, v7

    const/4 v7, 0x0

    .end local v7    # "currentOffset":I
    .restart local v0    # "currentOffset":I
    :goto_2d
    if-ge v7, v4, :cond_3e

    aget v3, v15, v7

    .line 2579
    .local v3, "typeAnnotationOffset":I
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v2

    .line 2580
    .local v2, "targetType":I
    if-eq v2, v5, :cond_3d

    if-ne v2, v6, :cond_3c

    goto :goto_2e

    :cond_3c
    move/from16 v32, v4

    move/from16 v34, v7

    move-object/from16 v44, v11

    move-object/from16 v23, v12

    const/16 v31, 0x0

    move v12, v5

    goto :goto_2f

    .line 2583
    :cond_3d
    :goto_2e
    invoke-direct {v8, v10, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 2585
    invoke-virtual {v8, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v21

    .line 2586
    .local v21, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 2588
    .end local v0    # "currentOffset":I
    .local v1, "currentOffset":I
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v6, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lnet/bytebuddy/jar/asm/Label;

    move/from16 v32, v4

    iget-object v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lnet/bytebuddy/jar/asm/Label;

    move/from16 v33, v7

    iget-object v7, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/16 v41, 0x1

    .line 2589
    move/from16 v42, v0

    move-object/from16 v0, p1

    move-object/from16 v44, v11

    move v11, v1

    .end local v1    # "currentOffset":I
    .local v11, "currentOffset":I
    .local v44, "classBuffer":[B
    move/from16 v1, v42

    move/from16 v42, v2

    .end local v2    # "targetType":I
    .local v42, "targetType":I
    move-object v2, v5

    move/from16 v45, v3

    .end local v3    # "typeAnnotationOffset":I
    .local v45, "typeAnnotationOffset":I
    move-object v3, v6

    const/16 v6, 0x40

    move-object v5, v7

    move-object/from16 v23, v12

    const/16 v7, 0x41

    move v12, v6

    .end local v12    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .local v23, "labels":[Lnet/bytebuddy/jar/asm/Label;
    move-object/from16 v6, v21

    move/from16 v34, v33

    const/16 v31, 0x0

    move/from16 v7, v41

    invoke-virtual/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 2588
    const/4 v1, 0x1

    invoke-direct {v8, v0, v11, v1, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move v0, v11

    .line 2578
    .end local v11    # "currentOffset":I
    .end local v21    # "annotationDescriptor":Ljava/lang/String;
    .end local v42    # "targetType":I
    .end local v45    # "typeAnnotationOffset":I
    .restart local v0    # "currentOffset":I
    :goto_2f
    add-int/lit8 v7, v34, 0x1

    move v5, v12

    move-object/from16 v12, v23

    move/from16 v4, v32

    move-object/from16 v11, v44

    const/16 v6, 0x41

    goto :goto_2d

    .end local v23    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .end local v44    # "classBuffer":[B
    .local v11, "classBuffer":[B
    .restart local v12    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :cond_3e
    move-object/from16 v44, v11

    move-object/from16 v23, v12

    const/16 v31, 0x0

    move v12, v5

    .end local v11    # "classBuffer":[B
    .end local v12    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v23    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v44    # "classBuffer":[B
    move v7, v0

    goto :goto_30

    .line 2577
    .end local v0    # "currentOffset":I
    .end local v23    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .end local v44    # "classBuffer":[B
    .restart local v7    # "currentOffset":I
    .restart local v11    # "classBuffer":[B
    .restart local v12    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    :cond_3f
    move-object/from16 v44, v11

    move-object/from16 v23, v12

    const/16 v31, 0x0

    move v12, v5

    .line 2605
    .end local v11    # "classBuffer":[B
    .end local v12    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v23    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .restart local v44    # "classBuffer":[B
    :goto_30
    move-object/from16 v11, v47

    .end local v47    # "invisibleTypeAnnotationOffsets":[I
    .local v11, "invisibleTypeAnnotationOffsets":[I
    if-eqz v11, :cond_43

    .line 2606
    array-length v6, v11

    move v0, v7

    move/from16 v7, v31

    .end local v7    # "currentOffset":I
    .restart local v0    # "currentOffset":I
    :goto_31
    if-ge v7, v6, :cond_42

    aget v5, v11, v7

    .line 2607
    .local v5, "typeAnnotationOffset":I
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v4

    .line 2608
    .local v4, "targetType":I
    if-eq v4, v12, :cond_41

    const/16 v3, 0x41

    if-ne v4, v3, :cond_40

    goto :goto_32

    :cond_40
    move/from16 v31, v3

    move/from16 v33, v6

    move/from16 v42, v7

    const/4 v2, 0x1

    goto :goto_33

    :cond_41
    const/16 v3, 0x41

    .line 2611
    :goto_32
    invoke-direct {v8, v10, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 2613
    invoke-virtual {v8, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v21

    .line 2614
    .restart local v21    # "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x2

    .line 2616
    .end local v0    # "currentOffset":I
    .local v2, "currentOffset":I
    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lnet/bytebuddy/jar/asm/Label;

    iget-object v12, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lnet/bytebuddy/jar/asm/Label;

    move/from16 v33, v5

    .end local v5    # "typeAnnotationOffset":I
    .local v33, "typeAnnotationOffset":I
    iget-object v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/16 v34, 0x0

    .line 2617
    move-object/from16 v41, v0

    move-object/from16 v0, p1

    move/from16 v48, v2

    .end local v2    # "currentOffset":I
    .local v48, "currentOffset":I
    move-object/from16 v2, v41

    const/16 v31, 0x41

    move/from16 v41, v4

    .end local v4    # "targetType":I
    .local v41, "targetType":I
    move-object v4, v12

    move/from16 v12, v33

    .end local v33    # "typeAnnotationOffset":I
    .local v12, "typeAnnotationOffset":I
    move/from16 v33, v6

    move-object/from16 v6, v21

    move/from16 v42, v7

    move/from16 v7, v34

    invoke-virtual/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 2616
    move/from16 v1, v48

    const/4 v2, 0x1

    .end local v48    # "currentOffset":I
    .restart local v1    # "currentOffset":I
    invoke-direct {v8, v0, v1, v2, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move v0, v1

    .line 2606
    .end local v1    # "currentOffset":I
    .end local v12    # "typeAnnotationOffset":I
    .end local v21    # "annotationDescriptor":Ljava/lang/String;
    .end local v41    # "targetType":I
    .restart local v0    # "currentOffset":I
    :goto_33
    add-int/lit8 v7, v42, 0x1

    move/from16 v6, v33

    const/16 v12, 0x40

    goto :goto_31

    :cond_42
    move v7, v0

    move-object/from16 v0, v29

    goto :goto_34

    .line 2605
    .end local v0    # "currentOffset":I
    .restart local v7    # "currentOffset":I
    :cond_43
    move-object/from16 v0, v29

    .line 2633
    .end local v29    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v0, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_34
    if-eqz v0, :cond_44

    .line 2635
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 2636
    .local v1, "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    const/4 v2, 0x0

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 2637
    invoke-virtual {v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 2638
    move-object v0, v1

    .line 2639
    .end local v1    # "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    goto :goto_34

    .line 2642
    :cond_44
    move/from16 v1, v36

    move/from16 v2, v40

    .end local v36    # "maxStack":I
    .end local v40    # "maxLocals":I
    .local v1, "maxStack":I
    .local v2, "maxLocals":I
    invoke-virtual {v9, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 2643
    return-void

    .line 1523
    .end local v1    # "maxStack":I
    .end local v2    # "maxLocals":I
    .end local v7    # "currentOffset":I
    .end local v16    # "bytecodeStartOffset":I
    .end local v17    # "currentVisibleTypeAnnotationIndex":I
    .end local v18    # "exceptionTableLength":I
    .end local v19    # "currentVisibleTypeAnnotationBytecodeOffset":I
    .end local v20    # "currentInvisibleTypeAnnotationIndex":I
    .end local v22    # "attributesCount":I
    .end local v23    # "labels":[Lnet/bytebuddy/jar/asm/Label;
    .end local v24    # "wideJumpOpcodeDelta":I
    .end local v25    # "codeLength":I
    .end local v26    # "currentInvisibleTypeAnnotationBytecodeOffset":I
    .end local v27    # "insertFrame":Z
    .end local v28    # "expandFrames":Z
    .end local v30    # "stackMapFrameOffset":I
    .end local v35    # "localVariableTypeTableOffset":I
    .end local v37    # "bytecodeEndOffset":I
    .end local v39    # "stackMapTableEndOffset":I
    .end local v43    # "compressedFrames":Z
    .end local v44    # "classBuffer":[B
    .local v0, "currentOffset":I
    .local v11, "classBuffer":[B
    .local v12, "charBuffer":[C
    .local v13, "maxStack":I
    .local v14, "maxLocals":I
    .local v15, "codeLength":I
    :cond_45
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3a -> :sswitch_1
        0x84 -> :sswitch_0
        0xa9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_16
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_19
        :pswitch_14
        :pswitch_13
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_1d
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_10
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_f
        :pswitch_e
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private readConstantDynamic(I[C)Lnet/bytebuddy/jar/asm/ConstantDynamic;
    .locals 10
    .param p1, "constantPoolEntryIndex"    # I
    .param p2, "charBuffer"    # [C

    .line 3762
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantDynamicValues:[Lnet/bytebuddy/jar/asm/ConstantDynamic;

    aget-object v0, v0, p1

    .line 3763
    .local v0, "constantDynamic":Lnet/bytebuddy/jar/asm/ConstantDynamic;
    if-eqz v0, :cond_0

    .line 3764
    return-object v0

    .line 3766
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    aget v2, v1, p1

    .line 3767
    .local v2, "cpInfoOffset":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v1, v1, v3

    .line 3768
    .local v1, "nameAndTypeCpInfoOffset":I
    invoke-virtual {p0, v1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 3769
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 3770
    .local v4, "descriptor":Ljava/lang/String;
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/ClassReader;->bootstrapMethodOffsets:[I

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v5, v5, v6

    .line 3771
    .local v5, "bootstrapMethodOffset":I
    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {p0, v6, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/jar/asm/Handle;

    .line 3772
    .local v6, "handle":Lnet/bytebuddy/jar/asm/Handle;
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    new-array v7, v7, [Ljava/lang/Object;

    .line 3773
    .local v7, "bootstrapMethodArguments":[Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x4

    .line 3774
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 3775
    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    invoke-virtual {p0, v9, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    .line 3776
    add-int/lit8 v5, v5, 0x2

    .line 3774
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3778
    .end local v8    # "i":I
    :cond_1
    iget-object v8, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantDynamicValues:[Lnet/bytebuddy/jar/asm/ConstantDynamic;

    new-instance v9, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-direct {v9, v3, v4, v6, v7}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    aput-object v9, v8, p1

    return-object v9
.end method

.method private readElementValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;ILjava/lang/String;[C)I
    .locals 8
    .param p1, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .param p2, "elementValueOffset"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "charBuffer"    # [C

    .line 3000
    move v0, p2

    .line 3001
    .local v0, "currentOffset":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 3002
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 3010
    add-int/lit8 v1, v0, 0x3

    return v1

    .line 3004
    :sswitch_0
    add-int/lit8 v1, v0, 0x5

    return v1

    .line 3008
    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v4, v2, v1, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    return v1

    .line 3006
    :sswitch_2
    add-int/lit8 v1, v0, 0x3

    invoke-direct {p0, v4, v1, v2, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    return v1

    .line 3013
    :cond_0
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "currentOffset":I
    .local v4, "currentOffset":I
    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_1

    .line 3159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3047
    :sswitch_3
    invoke-virtual {p0, v4, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3048
    add-int/lit8 v4, v4, 0x2

    .line 3049
    goto/16 :goto_a

    .line 3051
    :sswitch_4
    nop

    .line 3053
    invoke-virtual {p0, v4, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v4, 0x2

    .line 3054
    invoke-virtual {p0, v1, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 3051
    invoke-virtual {p1, p3, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    add-int/lit8 v4, v4, 0x4

    .line 3056
    goto/16 :goto_a

    .line 3058
    :sswitch_5
    invoke-virtual {p0, v4, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3059
    add-int/lit8 v4, v4, 0x2

    .line 3060
    goto/16 :goto_a

    .line 3070
    :sswitch_6
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 3071
    .local v0, "numValues":I
    add-int/lit8 v4, v4, 0x2

    .line 3072
    if-nez v0, :cond_1

    .line 3073
    nop

    .line 3074
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v3, v4, -0x2

    .line 3073
    invoke-direct {p0, v2, v3, v1, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    return v1

    .line 3079
    :cond_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    sparse-switch v3, :sswitch_data_2

    .line 3149
    nop

    .line 3151
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v3, v4, -0x2

    .line 3150
    invoke-direct {p0, v2, v3, v1, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    .line 3155
    goto/16 :goto_a

    .line 3089
    :sswitch_7
    new-array v3, v0, [Z

    .line 3090
    .local v3, "booleanValues":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 3091
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    aput-boolean v6, v3, v5

    .line 3092
    add-int/lit8 v4, v4, 0x3

    .line 3090
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3094
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {p1, p3, v3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3095
    goto/16 :goto_a

    .line 3097
    .end local v3    # "booleanValues":[Z
    :sswitch_8
    new-array v1, v0, [S

    .line 3098
    .local v1, "shortValues":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 3099
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 3100
    add-int/lit8 v4, v4, 0x3

    .line 3098
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3102
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3103
    goto/16 :goto_a

    .line 3121
    .end local v1    # "shortValues":[S
    :sswitch_9
    new-array v1, v0, [J

    .line 3122
    .local v1, "longValues":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 3123
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide v5

    aput-wide v5, v1, v2

    .line 3124
    add-int/lit8 v4, v4, 0x3

    .line 3122
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3126
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p1, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3127
    goto/16 :goto_a

    .line 3113
    .end local v1    # "longValues":[J
    :sswitch_a
    new-array v1, v0, [I

    .line 3114
    .local v1, "intValues":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_6

    .line 3115
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    aput v3, v1, v2

    .line 3116
    add-int/lit8 v4, v4, 0x3

    .line 3114
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3118
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p1, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3119
    goto/16 :goto_a

    .line 3129
    .end local v1    # "intValues":[I
    :sswitch_b
    new-array v1, v0, [F

    .line 3130
    .local v1, "floatValues":[F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_7

    .line 3131
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v4, 0x1

    .line 3133
    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    .line 3132
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 3134
    add-int/lit8 v4, v4, 0x3

    .line 3130
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3136
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p1, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3137
    goto/16 :goto_a

    .line 3139
    .end local v1    # "floatValues":[F
    :sswitch_c
    new-array v1, v0, [D

    .line 3140
    .local v1, "doubleValues":[D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v0, :cond_8

    .line 3141
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v4, 0x1

    .line 3143
    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide v5

    .line 3142
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    aput-wide v5, v1, v2

    .line 3144
    add-int/lit8 v4, v4, 0x3

    .line 3140
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3146
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {p1, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3147
    goto/16 :goto_a

    .line 3105
    .end local v1    # "doubleValues":[D
    :sswitch_d
    new-array v1, v0, [C

    .line 3106
    .local v1, "charValues":[C
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v0, :cond_9

    .line 3107
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 3108
    add-int/lit8 v4, v4, 0x3

    .line 3106
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3110
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {p1, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3111
    goto/16 :goto_a

    .line 3081
    .end local v1    # "charValues":[C
    :sswitch_e
    new-array v1, v0, [B

    .line 3082
    .local v1, "byteValues":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    if-ge v2, v0, :cond_a

    .line 3083
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3084
    add-int/lit8 v4, v4, 0x3

    .line 3082
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3086
    .end local v2    # "i":I
    :cond_a
    invoke-virtual {p1, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3087
    goto/16 :goto_a

    .line 3039
    .end local v0    # "numValues":I
    .end local v1    # "byteValues":[B
    :sswitch_f
    nop

    .line 3041
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    if-nez v0, :cond_b

    .line 3042
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    .line 3043
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3039
    :goto_9
    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3044
    add-int/lit8 v4, v4, 0x2

    .line 3045
    goto :goto_a

    .line 3033
    :sswitch_10
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3034
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 3033
    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3035
    add-int/lit8 v4, v4, 0x2

    .line 3036
    goto :goto_a

    .line 3028
    :sswitch_11
    nop

    .line 3029
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    .line 3028
    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3030
    add-int/lit8 v4, v4, 0x2

    .line 3031
    goto :goto_a

    .line 3020
    :sswitch_12
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3021
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 3020
    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3022
    add-int/lit8 v4, v4, 0x2

    .line 3023
    goto :goto_a

    .line 3015
    :sswitch_13
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3016
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 3015
    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3017
    add-int/lit8 v4, v4, 0x2

    .line 3018
    goto :goto_a

    .line 3062
    :sswitch_14
    nop

    .line 3064
    invoke-virtual {p0, v4, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    add-int/lit8 v1, v4, 0x2

    .line 3063
    invoke-direct {p0, v0, v1, v2, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    .line 3068
    nop

    .line 3161
    :goto_a
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x5b -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_14
        0x42 -> :sswitch_13
        0x43 -> :sswitch_12
        0x44 -> :sswitch_11
        0x46 -> :sswitch_11
        0x49 -> :sswitch_11
        0x4a -> :sswitch_11
        0x53 -> :sswitch_10
        0x5a -> :sswitch_f
        0x5b -> :sswitch_6
        0x63 -> :sswitch_5
        0x65 -> :sswitch_4
        0x73 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x42 -> :sswitch_e
        0x43 -> :sswitch_d
        0x44 -> :sswitch_c
        0x46 -> :sswitch_b
        0x49 -> :sswitch_a
        0x4a -> :sswitch_9
        0x53 -> :sswitch_8
        0x5a -> :sswitch_7
    .end sparse-switch
.end method

.method private readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I
    .locals 4
    .param p1, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .param p2, "annotationOffset"    # I
    .param p3, "named"    # Z
    .param p4, "charBuffer"    # [C

    .line 2961
    move v0, p2

    .line 2963
    .local v0, "currentOffset":I
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 2964
    .local v1, "numElementValuePairs":I
    add-int/lit8 v0, v0, 0x2

    .line 2965
    if-eqz p3, :cond_0

    .line 2967
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "numElementValuePairs":I
    .local v2, "numElementValuePairs":I
    if-lez v1, :cond_1

    .line 2968
    invoke-virtual {p0, v0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 2969
    .local v1, "elementName":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x2

    .line 2970
    invoke-direct {p0, p1, v3, v1, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result v0

    .line 2971
    .end local v1    # "elementName":Ljava/lang/String;
    move v1, v2

    goto :goto_0

    .line 2974
    .end local v2    # "numElementValuePairs":I
    .local v1, "numElementValuePairs":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "numElementValuePairs":I
    .restart local v2    # "numElementValuePairs":I
    if-lez v1, :cond_1

    .line 2975
    nop

    .line 2976
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result v0

    move v1, v2

    goto :goto_1

    .line 2979
    :cond_1
    if-eqz p1, :cond_2

    .line 2980
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    .line 2982
    :cond_2
    return v0
.end method

.method private readField(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I
    .locals 27
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p2, "context"    # Lnet/bytebuddy/jar/asm/Context;
    .param p3, "fieldInfoOffset"    # I

    .line 1043
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-object v10, v9, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 1046
    .local v10, "charBuffer":[C
    move/from16 v0, p3

    .line 1047
    .local v0, "currentOffset":I
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1048
    .local v1, "accessFlags":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    .line 1049
    .local v17, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    .line 1050
    .local v18, "descriptor":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x6

    .line 1055
    const/4 v2, 0x0

    .line 1057
    .local v2, "constantValue":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1059
    .local v3, "signature":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1061
    .local v4, "runtimeVisibleAnnotationsOffset":I
    const/4 v5, 0x0

    .line 1063
    .local v5, "runtimeInvisibleAnnotationsOffset":I
    const/4 v6, 0x0

    .line 1065
    .local v6, "runtimeVisibleTypeAnnotationsOffset":I
    const/4 v7, 0x0

    .line 1068
    .local v7, "runtimeInvisibleTypeAnnotationsOffset":I
    const/4 v11, 0x0

    .line 1070
    .local v11, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .line 1071
    .local v12, "attributesCount":I
    add-int/lit8 v0, v0, 0x2

    move v15, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move v14, v4

    move v13, v5

    move v1, v12

    move v12, v6

    move-object/from16 v26, v11

    move v11, v7

    move-object/from16 v7, v26

    .line 1072
    .end local v2    # "constantValue":Ljava/lang/Object;
    .end local v3    # "signature":Ljava/lang/String;
    .end local v4    # "runtimeVisibleAnnotationsOffset":I
    .end local v5    # "runtimeInvisibleAnnotationsOffset":I
    .end local v6    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v1, "attributesCount":I
    .local v7, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v11, "runtimeInvisibleTypeAnnotationsOffset":I
    .local v12, "runtimeVisibleTypeAnnotationsOffset":I
    .local v13, "runtimeInvisibleAnnotationsOffset":I
    .local v14, "runtimeVisibleAnnotationsOffset":I
    .local v15, "accessFlags":I
    .local v19, "constantValue":Ljava/lang/Object;
    .local v20, "signature":Ljava/lang/String;
    :goto_0
    add-int/lit8 v21, v1, -0x1

    .end local v1    # "attributesCount":I
    .local v21, "attributesCount":I
    if-lez v1, :cond_9

    .line 1074
    invoke-virtual {v8, v0, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1075
    .local v6, "attributeName":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v16

    .line 1076
    .local v16, "attributeLength":I
    add-int/lit8 v5, v0, 0x6

    .line 1079
    .end local v0    # "currentOffset":I
    .local v5, "currentOffset":I
    const-string v0, "ConstantValue"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1081
    .local v0, "constantvalueIndex":I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v0, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    move-object v0, v2

    .line 1082
    .end local v19    # "constantValue":Ljava/lang/Object;
    .local v0, "constantValue":Ljava/lang/Object;
    move-object/from16 v19, v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    goto/16 :goto_2

    .end local v0    # "constantValue":Ljava/lang/Object;
    .restart local v19    # "constantValue":Ljava/lang/Object;
    :cond_1
    const-string v0, "Signature"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    invoke-virtual {v8, v5, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v20    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_2

    .line 1084
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v20    # "signature":Ljava/lang/String;
    :cond_2
    const-string v0, "Deprecated"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1085
    const/high16 v0, 0x20000

    or-int/2addr v0, v15

    move v15, v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v15    # "accessFlags":I
    .local v0, "accessFlags":I
    goto/16 :goto_2

    .line 1086
    .end local v0    # "accessFlags":I
    .restart local v15    # "accessFlags":I
    :cond_3
    const-string v0, "Synthetic"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1087
    or-int/lit16 v0, v15, 0x1000

    move v15, v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v15    # "accessFlags":I
    .restart local v0    # "accessFlags":I
    goto/16 :goto_2

    .line 1088
    .end local v0    # "accessFlags":I
    .restart local v15    # "accessFlags":I
    :cond_4
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1089
    move v0, v5

    move v14, v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v14    # "runtimeVisibleAnnotationsOffset":I
    .local v0, "runtimeVisibleAnnotationsOffset":I
    goto :goto_2

    .line 1090
    .end local v0    # "runtimeVisibleAnnotationsOffset":I
    .restart local v14    # "runtimeVisibleAnnotationsOffset":I
    :cond_5
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1091
    move v0, v5

    move v12, v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v12    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v0, "runtimeVisibleTypeAnnotationsOffset":I
    goto :goto_2

    .line 1092
    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v12    # "runtimeVisibleTypeAnnotationsOffset":I
    :cond_6
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1093
    move v0, v5

    move v13, v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v13    # "runtimeInvisibleAnnotationsOffset":I
    .local v0, "runtimeInvisibleAnnotationsOffset":I
    goto :goto_2

    .line 1094
    .end local v0    # "runtimeInvisibleAnnotationsOffset":I
    .restart local v13    # "runtimeInvisibleAnnotationsOffset":I
    :cond_7
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1095
    move v0, v5

    move v11, v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v11    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v0, "runtimeInvisibleTypeAnnotationsOffset":I
    goto :goto_2

    .line 1097
    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v11    # "runtimeInvisibleTypeAnnotationsOffset":I
    :cond_8
    iget-object v1, v9, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    const/16 v22, -0x1

    const/16 v23, 0x0

    .line 1098
    move-object/from16 v0, p0

    move-object v2, v6

    move v3, v5

    move/from16 v4, v16

    move/from16 v24, v5

    .end local v5    # "currentOffset":I
    .local v24, "currentOffset":I
    move-object v5, v10

    move-object/from16 v25, v6

    .end local v6    # "attributeName":Ljava/lang/String;
    .local v25, "attributeName":Ljava/lang/String;
    move/from16 v6, v22

    move-object v9, v7

    .end local v7    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v9, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    move-object/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    .line 1106
    .local v0, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    iput-object v9, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1107
    move-object v1, v0

    move-object v7, v1

    .line 1109
    .end local v0    # "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v9    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v7    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_2
    add-int v0, v24, v16

    .line 1110
    .end local v16    # "attributeLength":I
    .end local v24    # "currentOffset":I
    .end local v25    # "attributeName":Ljava/lang/String;
    .local v0, "currentOffset":I
    move-object/from16 v9, p2

    move/from16 v1, v21

    goto/16 :goto_0

    .line 1113
    :cond_9
    move-object v9, v7

    .line 1114
    .end local v7    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v9    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    move v7, v11

    .end local v11    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v7, "runtimeInvisibleTypeAnnotationsOffset":I
    move-object/from16 v11, p1

    move v6, v12

    .end local v12    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v6, "runtimeVisibleTypeAnnotationsOffset":I
    move v12, v15

    move v5, v13

    .end local v13    # "runtimeInvisibleAnnotationsOffset":I
    .local v5, "runtimeInvisibleAnnotationsOffset":I
    move-object/from16 v13, v17

    move v4, v14

    .end local v14    # "runtimeVisibleAnnotationsOffset":I
    .restart local v4    # "runtimeVisibleAnnotationsOffset":I
    move-object/from16 v14, v18

    move v1, v15

    .end local v15    # "accessFlags":I
    .local v1, "accessFlags":I
    move-object/from16 v15, v20

    move-object/from16 v16, v19

    invoke-virtual/range {v11 .. v16}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v3

    .line 1115
    .local v3, "fieldVisitor":Lnet/bytebuddy/jar/asm/FieldVisitor;
    if-nez v3, :cond_a

    .line 1116
    return v0

    .line 1120
    :cond_a
    const/4 v11, 0x1

    if-eqz v4, :cond_b

    .line 1121
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .line 1122
    .local v12, "numAnnotations":I
    add-int/lit8 v14, v4, 0x2

    .line 1123
    .local v14, "currentAnnotationOffset":I
    :goto_3
    add-int/lit8 v13, v12, -0x1

    .end local v12    # "numAnnotations":I
    .local v13, "numAnnotations":I
    if-lez v12, :cond_b

    .line 1125
    invoke-virtual {v8, v14, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 1126
    .local v12, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x2

    .line 1128
    nop

    .line 1130
    invoke-virtual {v3, v12, v11}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v15

    .line 1129
    invoke-direct {v8, v15, v14, v11, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v14

    .line 1134
    .end local v12    # "annotationDescriptor":Ljava/lang/String;
    move v12, v13

    goto :goto_3

    .line 1138
    .end local v13    # "numAnnotations":I
    .end local v14    # "currentAnnotationOffset":I
    :cond_b
    const/4 v12, 0x0

    if-eqz v5, :cond_c

    .line 1139
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .line 1140
    .restart local v13    # "numAnnotations":I
    add-int/lit8 v14, v5, 0x2

    .line 1141
    .restart local v14    # "currentAnnotationOffset":I
    :goto_4
    add-int/lit8 v15, v13, -0x1

    .end local v13    # "numAnnotations":I
    .local v15, "numAnnotations":I
    if-lez v13, :cond_c

    .line 1143
    invoke-virtual {v8, v14, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 1144
    .local v13, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x2

    .line 1146
    nop

    .line 1148
    invoke-virtual {v3, v13, v12}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v2

    .line 1147
    invoke-direct {v8, v2, v14, v11, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v14

    .line 1152
    .end local v13    # "annotationDescriptor":Ljava/lang/String;
    move v13, v15

    goto :goto_4

    .line 1156
    .end local v14    # "currentAnnotationOffset":I
    .end local v15    # "numAnnotations":I
    :cond_c
    if-eqz v6, :cond_e

    .line 1157
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1158
    .local v2, "numAnnotations":I
    add-int/lit8 v13, v6, 0x2

    .line 1159
    .local v13, "currentAnnotationOffset":I
    :goto_5
    add-int/lit8 v14, v2, -0x1

    .end local v2    # "numAnnotations":I
    .local v14, "numAnnotations":I
    if-lez v2, :cond_d

    .line 1161
    move-object/from16 v2, p2

    invoke-direct {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v13

    .line 1163
    invoke-virtual {v8, v13, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 1164
    .local v15, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x2

    .line 1166
    iget v12, v2, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v23, v1

    .end local v1    # "accessFlags":I
    .local v23, "accessFlags":I
    iget-object v1, v2, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 1168
    invoke-virtual {v3, v12, v1, v15, v11}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 1167
    invoke-direct {v8, v1, v13, v11, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v13

    .line 1176
    .end local v15    # "annotationDescriptor":Ljava/lang/String;
    move v2, v14

    move/from16 v1, v23

    const/4 v12, 0x0

    goto :goto_5

    .line 1159
    .end local v23    # "accessFlags":I
    .restart local v1    # "accessFlags":I
    :cond_d
    move-object/from16 v2, p2

    move/from16 v23, v1

    .end local v1    # "accessFlags":I
    .restart local v23    # "accessFlags":I
    goto :goto_6

    .line 1156
    .end local v13    # "currentAnnotationOffset":I
    .end local v14    # "numAnnotations":I
    .end local v23    # "accessFlags":I
    .restart local v1    # "accessFlags":I
    :cond_e
    move-object/from16 v2, p2

    move/from16 v23, v1

    .line 1180
    .end local v1    # "accessFlags":I
    .restart local v23    # "accessFlags":I
    :goto_6
    if-eqz v7, :cond_f

    .line 1181
    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1182
    .local v1, "numAnnotations":I
    add-int/lit8 v12, v7, 0x2

    .line 1183
    .local v12, "currentAnnotationOffset":I
    :goto_7
    add-int/lit8 v13, v1, -0x1

    .end local v1    # "numAnnotations":I
    .local v13, "numAnnotations":I
    if-lez v1, :cond_f

    .line 1185
    invoke-direct {v8, v2, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v1

    .line 1187
    .end local v12    # "currentAnnotationOffset":I
    .local v1, "currentAnnotationOffset":I
    invoke-virtual {v8, v1, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 1188
    .local v12, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    .line 1190
    iget v14, v2, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v15, v2, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 1192
    const/4 v11, 0x0

    invoke-virtual {v3, v14, v15, v12, v11}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v14

    .line 1191
    const/4 v15, 0x1

    invoke-direct {v8, v14, v1, v15, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v12

    .line 1200
    .end local v1    # "currentAnnotationOffset":I
    .local v12, "currentAnnotationOffset":I
    move v1, v13

    move v11, v15

    goto :goto_7

    .line 1204
    .end local v12    # "currentAnnotationOffset":I
    .end local v13    # "numAnnotations":I
    :cond_f
    :goto_8
    if-eqz v9, :cond_10

    .line 1206
    iget-object v1, v9, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1207
    .local v1, "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    const/4 v11, 0x0

    iput-object v11, v9, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1208
    invoke-virtual {v3, v9}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 1209
    move-object v9, v1

    .line 1210
    .end local v1    # "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    goto :goto_8

    .line 1213
    :cond_10
    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    .line 1214
    return v0
.end method

.method private readMethod(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I
    .locals 36
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p2, "context"    # Lnet/bytebuddy/jar/asm/Context;
    .param p3, "methodInfoOffset"    # I

    .line 1227
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    iget-object v11, v9, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 1230
    .local v11, "charBuffer":[C
    move/from16 v0, p3

    .line 1231
    .local v0, "currentOffset":I
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    iput v1, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    .line 1232
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodName:Ljava/lang/String;

    .line 1233
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v8, v1, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 1234
    add-int/lit8 v0, v0, 0x6

    .line 1239
    const/4 v1, 0x0

    .line 1241
    .local v1, "codeOffset":I
    const/4 v2, 0x0

    .line 1243
    .local v2, "exceptionsOffset":I
    const/4 v3, 0x0

    .line 1245
    .local v3, "exceptions":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1247
    .local v4, "synthetic":Z
    const/4 v5, 0x0

    .line 1249
    .local v5, "signatureIndex":I
    const/4 v6, 0x0

    .line 1251
    .local v6, "runtimeVisibleAnnotationsOffset":I
    const/4 v7, 0x0

    .line 1253
    .local v7, "runtimeInvisibleAnnotationsOffset":I
    const/4 v12, 0x0

    .line 1255
    .local v12, "runtimeVisibleParameterAnnotationsOffset":I
    const/4 v13, 0x0

    .line 1257
    .local v13, "runtimeInvisibleParameterAnnotationsOffset":I
    const/4 v14, 0x0

    .line 1259
    .local v14, "runtimeVisibleTypeAnnotationsOffset":I
    const/4 v15, 0x0

    .line 1261
    .local v15, "runtimeInvisibleTypeAnnotationsOffset":I
    const/16 v16, 0x0

    .line 1263
    .local v16, "annotationDefaultOffset":I
    const/16 v17, 0x0

    .line 1266
    .local v17, "methodParametersOffset":I
    const/16 v18, 0x0

    .line 1268
    .local v18, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v19

    .line 1269
    .local v19, "attributesCount":I
    add-int/lit8 v0, v0, 0x2

    move/from16 v20, v16

    move/from16 v21, v17

    move-object/from16 v22, v18

    move/from16 v32, v7

    move v7, v0

    move v0, v15

    move v15, v4

    move/from16 v4, v32

    move/from16 v33, v12

    move v12, v1

    move v1, v14

    move-object v14, v3

    move/from16 v3, v33

    move/from16 v34, v13

    move v13, v2

    move/from16 v2, v34

    move/from16 v35, v6

    move v6, v5

    move/from16 v5, v35

    .line 1270
    .end local v16    # "annotationDefaultOffset":I
    .end local v17    # "methodParametersOffset":I
    .end local v18    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v0, "runtimeInvisibleTypeAnnotationsOffset":I
    .local v1, "runtimeVisibleTypeAnnotationsOffset":I
    .local v2, "runtimeInvisibleParameterAnnotationsOffset":I
    .local v3, "runtimeVisibleParameterAnnotationsOffset":I
    .local v4, "runtimeInvisibleAnnotationsOffset":I
    .local v5, "runtimeVisibleAnnotationsOffset":I
    .local v6, "signatureIndex":I
    .local v7, "currentOffset":I
    .local v12, "codeOffset":I
    .local v13, "exceptionsOffset":I
    .local v14, "exceptions":[Ljava/lang/String;
    .local v15, "synthetic":Z
    .local v20, "annotationDefaultOffset":I
    .local v21, "methodParametersOffset":I
    .local v22, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_0
    add-int/lit8 v16, v19, -0x1

    .end local v19    # "attributesCount":I
    .local v16, "attributesCount":I
    const/high16 v17, 0x20000

    move/from16 v18, v12

    .end local v12    # "codeOffset":I
    .local v18, "codeOffset":I
    if-lez v19, :cond_f

    .line 1272
    move/from16 v19, v6

    .end local v6    # "signatureIndex":I
    .local v19, "signatureIndex":I
    invoke-virtual {v8, v7, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1273
    .local v6, "attributeName":Ljava/lang/String;
    add-int/lit8 v12, v7, 0x2

    invoke-virtual {v8, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v12

    .line 1274
    .local v12, "attributeLength":I
    add-int/lit8 v7, v7, 0x6

    .line 1277
    move/from16 v24, v0

    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v24, "runtimeInvisibleTypeAnnotationsOffset":I
    const-string v0, "Code"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    iget v0, v9, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    const/16 v17, 0x1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1279
    move v0, v7

    move/from16 v18, v0

    move/from16 v17, v7

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v18    # "codeOffset":I
    .local v0, "codeOffset":I
    goto/16 :goto_3

    .line 1278
    .end local v0    # "codeOffset":I
    .restart local v18    # "codeOffset":I
    :cond_0
    move/from16 v23, v1

    goto/16 :goto_2

    .line 1281
    :cond_1
    const-string v0, "Exceptions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1282
    move v0, v7

    .line 1283
    .end local v13    # "exceptionsOffset":I
    .local v0, "exceptionsOffset":I
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    .line 1284
    .end local v14    # "exceptions":[Ljava/lang/String;
    .local v13, "exceptions":[Ljava/lang/String;
    add-int/lit8 v14, v0, 0x2

    .line 1285
    .local v14, "currentExceptionOffset":I
    const/16 v17, 0x0

    move/from16 v32, v17

    move/from16 v17, v0

    move/from16 v0, v32

    .local v0, "i":I
    .local v17, "exceptionsOffset":I
    :goto_1
    move/from16 v23, v1

    .end local v1    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v23, "runtimeVisibleTypeAnnotationsOffset":I
    array-length v1, v13

    if-ge v0, v1, :cond_2

    .line 1286
    invoke-virtual {v8, v14, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1287
    add-int/lit8 v14, v14, 0x2

    .line 1285
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v23

    goto :goto_1

    .line 1289
    .end local v0    # "i":I
    .end local v14    # "currentExceptionOffset":I
    :cond_2
    move-object v14, v13

    move/from16 v13, v17

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v17, v7

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    goto/16 :goto_3

    .end local v17    # "exceptionsOffset":I
    .end local v23    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v1    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v13, "exceptionsOffset":I
    .local v14, "exceptions":[Ljava/lang/String;
    :cond_3
    move/from16 v23, v1

    .end local v1    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v23    # "runtimeVisibleTypeAnnotationsOffset":I
    const-string v0, "Signature"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1290
    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move-object/from16 v19, v6

    move/from16 v17, v7

    move/from16 v1, v23

    move v6, v0

    move/from16 v0, v24

    .end local v19    # "signatureIndex":I
    .local v0, "signatureIndex":I
    goto/16 :goto_3

    .line 1291
    .end local v0    # "signatureIndex":I
    .restart local v19    # "signatureIndex":I
    :cond_4
    const-string v0, "Deprecated"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1292
    iget v0, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    or-int v0, v0, v17

    iput v0, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    .line 1325
    .end local v23    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v1    # "runtimeVisibleTypeAnnotationsOffset":I
    :goto_2
    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v1    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v23    # "runtimeVisibleTypeAnnotationsOffset":I
    goto/16 :goto_3

    .line 1293
    :cond_5
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1294
    move v0, v7

    move v5, v0

    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v5    # "runtimeVisibleAnnotationsOffset":I
    .local v0, "runtimeVisibleAnnotationsOffset":I
    goto/16 :goto_3

    .line 1295
    .end local v0    # "runtimeVisibleAnnotationsOffset":I
    .restart local v5    # "runtimeVisibleAnnotationsOffset":I
    :cond_6
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1296
    move v0, v7

    move v1, v0

    move/from16 v17, v7

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v23    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v0, "runtimeVisibleTypeAnnotationsOffset":I
    goto/16 :goto_3

    .line 1297
    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v23    # "runtimeVisibleTypeAnnotationsOffset":I
    :cond_7
    const-string v0, "AnnotationDefault"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1298
    move v0, v7

    move/from16 v20, v0

    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v20    # "annotationDefaultOffset":I
    .local v0, "annotationDefaultOffset":I
    goto/16 :goto_3

    .line 1299
    .end local v0    # "annotationDefaultOffset":I
    .restart local v20    # "annotationDefaultOffset":I
    :cond_8
    const-string v0, "Synthetic"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1300
    const/4 v0, 0x1

    .line 1301
    .end local v15    # "synthetic":Z
    .local v0, "synthetic":Z
    iget v1, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    move v15, v0

    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    goto/16 :goto_3

    .line 1302
    .end local v0    # "synthetic":Z
    .restart local v15    # "synthetic":Z
    :cond_9
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1303
    move v0, v7

    move v4, v0

    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v4    # "runtimeInvisibleAnnotationsOffset":I
    .local v0, "runtimeInvisibleAnnotationsOffset":I
    goto/16 :goto_3

    .line 1304
    .end local v0    # "runtimeInvisibleAnnotationsOffset":I
    .restart local v4    # "runtimeInvisibleAnnotationsOffset":I
    :cond_a
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1305
    move v0, v7

    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v24    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v0, "runtimeInvisibleTypeAnnotationsOffset":I
    goto/16 :goto_3

    .line 1306
    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v24    # "runtimeInvisibleTypeAnnotationsOffset":I
    :cond_b
    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1307
    move v0, v7

    move v3, v0

    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v3    # "runtimeVisibleParameterAnnotationsOffset":I
    .local v0, "runtimeVisibleParameterAnnotationsOffset":I
    goto/16 :goto_3

    .line 1308
    .end local v0    # "runtimeVisibleParameterAnnotationsOffset":I
    .restart local v3    # "runtimeVisibleParameterAnnotationsOffset":I
    :cond_c
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1309
    move v0, v7

    move v2, v0

    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v2    # "runtimeInvisibleParameterAnnotationsOffset":I
    .local v0, "runtimeInvisibleParameterAnnotationsOffset":I
    goto/16 :goto_3

    .line 1310
    .end local v0    # "runtimeInvisibleParameterAnnotationsOffset":I
    .restart local v2    # "runtimeInvisibleParameterAnnotationsOffset":I
    :cond_d
    const-string v0, "MethodParameters"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1311
    move v0, v7

    move/from16 v21, v0

    move/from16 v17, v7

    move/from16 v1, v23

    move/from16 v0, v24

    move/from16 v32, v19

    move-object/from16 v19, v6

    move/from16 v6, v32

    .end local v21    # "methodParametersOffset":I
    .local v0, "methodParametersOffset":I
    goto :goto_3

    .line 1313
    .end local v0    # "methodParametersOffset":I
    .restart local v21    # "methodParametersOffset":I
    :cond_e
    iget-object v1, v9, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    const/16 v17, -0x1

    const/16 v25, 0x0

    .line 1314
    move/from16 v26, v24

    .end local v24    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v26, "runtimeInvisibleTypeAnnotationsOffset":I
    move-object/from16 v0, p0

    move/from16 v27, v23

    .end local v23    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v27, "runtimeVisibleTypeAnnotationsOffset":I
    move/from16 v28, v2

    .end local v2    # "runtimeInvisibleParameterAnnotationsOffset":I
    .local v28, "runtimeInvisibleParameterAnnotationsOffset":I
    move-object v2, v6

    move/from16 v29, v3

    .end local v3    # "runtimeVisibleParameterAnnotationsOffset":I
    .local v29, "runtimeVisibleParameterAnnotationsOffset":I
    move v3, v7

    move/from16 v30, v4

    .end local v4    # "runtimeInvisibleAnnotationsOffset":I
    .local v30, "runtimeInvisibleAnnotationsOffset":I
    move v4, v12

    move/from16 v31, v5

    .end local v5    # "runtimeVisibleAnnotationsOffset":I
    .local v31, "runtimeVisibleAnnotationsOffset":I
    move-object v5, v11

    move/from16 v24, v13

    move/from16 v13, v19

    move-object/from16 v19, v6

    .end local v6    # "attributeName":Ljava/lang/String;
    .local v13, "signatureIndex":I
    .local v19, "attributeName":Ljava/lang/String;
    .local v24, "exceptionsOffset":I
    move/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "currentOffset":I
    .local v17, "currentOffset":I
    move-object/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    .line 1322
    .local v0, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    move-object/from16 v6, v22

    .end local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v6, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    iput-object v6, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1323
    move-object v1, v0

    move-object/from16 v22, v1

    move v6, v13

    move/from16 v13, v24

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    move/from16 v5, v31

    .line 1325
    .end local v24    # "exceptionsOffset":I
    .end local v26    # "runtimeInvisibleTypeAnnotationsOffset":I
    .end local v27    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v28    # "runtimeInvisibleParameterAnnotationsOffset":I
    .end local v29    # "runtimeVisibleParameterAnnotationsOffset":I
    .end local v30    # "runtimeInvisibleAnnotationsOffset":I
    .end local v31    # "runtimeVisibleAnnotationsOffset":I
    .local v0, "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v1    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v2    # "runtimeInvisibleParameterAnnotationsOffset":I
    .restart local v3    # "runtimeVisibleParameterAnnotationsOffset":I
    .restart local v4    # "runtimeInvisibleAnnotationsOffset":I
    .restart local v5    # "runtimeVisibleAnnotationsOffset":I
    .local v6, "signatureIndex":I
    .local v13, "exceptionsOffset":I
    .restart local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_3
    add-int v7, v17, v12

    .line 1326
    .end local v12    # "attributeLength":I
    .end local v17    # "currentOffset":I
    .end local v19    # "attributeName":Ljava/lang/String;
    .restart local v7    # "currentOffset":I
    move/from16 v19, v16

    move/from16 v12, v18

    goto/16 :goto_0

    .line 1329
    :cond_f
    move/from16 v26, v0

    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v24, v13

    move v13, v6

    move-object/from16 v6, v22

    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .end local v1    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v2    # "runtimeInvisibleParameterAnnotationsOffset":I
    .end local v3    # "runtimeVisibleParameterAnnotationsOffset":I
    .end local v4    # "runtimeInvisibleAnnotationsOffset":I
    .end local v5    # "runtimeVisibleAnnotationsOffset":I
    .end local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v6, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v13, "signatureIndex":I
    .restart local v24    # "exceptionsOffset":I
    .restart local v26    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v27    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v28    # "runtimeInvisibleParameterAnnotationsOffset":I
    .restart local v29    # "runtimeVisibleParameterAnnotationsOffset":I
    .restart local v30    # "runtimeInvisibleAnnotationsOffset":I
    .restart local v31    # "runtimeVisibleAnnotationsOffset":I
    iget v1, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    iget-object v2, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodName:Ljava/lang/String;

    iget-object v3, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 1334
    if-nez v13, :cond_10

    const/4 v4, 0x0

    goto :goto_4

    :cond_10
    invoke-virtual {v8, v13, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1330
    :goto_4
    move-object/from16 v0, p1

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v5

    .line 1336
    .local v5, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    if-nez v5, :cond_11

    .line 1337
    return v7

    .line 1344
    :cond_11
    instance-of v0, v5, Lnet/bytebuddy/jar/asm/MethodWriter;

    const/4 v4, 0x0

    if-eqz v0, :cond_13

    .line 1345
    move-object v3, v5

    check-cast v3, Lnet/bytebuddy/jar/asm/MethodWriter;

    .line 1346
    .local v3, "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    iget v0, v9, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    and-int v0, v0, v17

    if-eqz v0, :cond_12

    const/16 v17, 0x1

    goto :goto_5

    :cond_12
    move/from16 v17, v4

    :goto_5
    add-int/lit8 v0, v10, 0x4

    .line 1350
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v19

    .line 1346
    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v15

    move-object v12, v3

    .end local v3    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .local v12, "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    move/from16 v3, v17

    move-object/from16 v17, v14

    move v14, v4

    .end local v14    # "exceptions":[Ljava/lang/String;
    .local v17, "exceptions":[Ljava/lang/String;
    move/from16 v4, v19

    move-object v14, v5

    .end local v5    # "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    .local v14, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    move v5, v13

    move-object/from16 v25, v6

    .end local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v25, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    move/from16 v6, v24

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/MethodWriter;->canCopyMethodAttributes(Lnet/bytebuddy/jar/asm/ClassReader;ZZIII)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1353
    sub-int v0, v7, v10

    invoke-virtual {v12, v10, v0}, Lnet/bytebuddy/jar/asm/MethodWriter;->setMethodAttributesSource(II)V

    .line 1354
    return v7

    .line 1344
    .end local v12    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .end local v17    # "exceptions":[Ljava/lang/String;
    .end local v25    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v5    # "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    .restart local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v14, "exceptions":[Ljava/lang/String;
    :cond_13
    move-object/from16 v25, v6

    move-object/from16 v17, v14

    move-object v14, v5

    .line 1359
    .end local v5    # "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    .end local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v14, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    .restart local v17    # "exceptions":[Ljava/lang/String;
    .restart local v25    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :cond_14
    move/from16 v0, v21

    .end local v21    # "methodParametersOffset":I
    .local v0, "methodParametersOffset":I
    if-eqz v0, :cond_15

    iget v1, v9, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_15

    .line 1360
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v1

    .line 1361
    .local v1, "parametersCount":I
    add-int/lit8 v21, v0, 0x1

    move/from16 v2, v21

    .line 1362
    .local v2, "currentParameterOffset":I
    :goto_6
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "parametersCount":I
    .local v3, "parametersCount":I
    if-lez v1, :cond_15

    .line 1364
    nop

    .line 1365
    invoke-virtual {v8, v2, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v2, 0x2

    .line 1366
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1364
    invoke-virtual {v14, v1, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 1367
    add-int/lit8 v2, v2, 0x4

    move v1, v3

    goto :goto_6

    .line 1372
    .end local v2    # "currentParameterOffset":I
    .end local v3    # "parametersCount":I
    :cond_15
    move/from16 v1, v20

    .end local v20    # "annotationDefaultOffset":I
    .local v1, "annotationDefaultOffset":I
    if-eqz v1, :cond_16

    .line 1373
    invoke-virtual {v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v2

    .line 1374
    .local v2, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    const/4 v3, 0x0

    invoke-direct {v8, v2, v1, v3, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    .line 1375
    if-eqz v2, :cond_16

    .line 1376
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    .line 1381
    .end local v2    # "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    :cond_16
    move/from16 v5, v31

    .end local v31    # "runtimeVisibleAnnotationsOffset":I
    .local v5, "runtimeVisibleAnnotationsOffset":I
    if-eqz v5, :cond_17

    .line 1382
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1383
    .local v2, "numAnnotations":I
    add-int/lit8 v3, v5, 0x2

    .line 1384
    .local v3, "currentAnnotationOffset":I
    :goto_7
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "numAnnotations":I
    .local v4, "numAnnotations":I
    if-lez v2, :cond_17

    .line 1386
    invoke-virtual {v8, v3, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1387
    .local v2, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x2

    .line 1389
    nop

    .line 1391
    const/4 v6, 0x1

    invoke-virtual {v14, v2, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v12

    .line 1390
    invoke-direct {v8, v12, v3, v6, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    .line 1395
    .end local v2    # "annotationDescriptor":Ljava/lang/String;
    move v2, v4

    goto :goto_7

    .line 1399
    .end local v3    # "currentAnnotationOffset":I
    .end local v4    # "numAnnotations":I
    :cond_17
    move/from16 v4, v30

    .end local v30    # "runtimeInvisibleAnnotationsOffset":I
    .local v4, "runtimeInvisibleAnnotationsOffset":I
    if-eqz v4, :cond_19

    .line 1400
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1401
    .local v2, "numAnnotations":I
    add-int/lit8 v3, v4, 0x2

    .line 1402
    .restart local v3    # "currentAnnotationOffset":I
    :goto_8
    add-int/lit8 v6, v2, -0x1

    .end local v2    # "numAnnotations":I
    .local v6, "numAnnotations":I
    if-lez v2, :cond_18

    .line 1404
    invoke-virtual {v8, v3, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1405
    .local v2, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x2

    .line 1407
    nop

    .line 1409
    move/from16 v20, v0

    const/4 v12, 0x0

    .end local v0    # "methodParametersOffset":I
    .local v20, "methodParametersOffset":I
    invoke-virtual {v14, v2, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 1408
    const/4 v12, 0x1

    invoke-direct {v8, v0, v3, v12, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    .line 1413
    .end local v2    # "annotationDescriptor":Ljava/lang/String;
    move v2, v6

    move/from16 v0, v20

    goto :goto_8

    .line 1402
    .end local v20    # "methodParametersOffset":I
    .restart local v0    # "methodParametersOffset":I
    :cond_18
    move/from16 v20, v0

    .end local v0    # "methodParametersOffset":I
    .restart local v20    # "methodParametersOffset":I
    goto :goto_9

    .line 1399
    .end local v3    # "currentAnnotationOffset":I
    .end local v6    # "numAnnotations":I
    .end local v20    # "methodParametersOffset":I
    .restart local v0    # "methodParametersOffset":I
    :cond_19
    move/from16 v20, v0

    .line 1417
    .end local v0    # "methodParametersOffset":I
    .restart local v20    # "methodParametersOffset":I
    :goto_9
    move/from16 v0, v27

    .end local v27    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v0, "runtimeVisibleTypeAnnotationsOffset":I
    if-eqz v0, :cond_1b

    .line 1418
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1419
    .local v2, "numAnnotations":I
    add-int/lit8 v3, v0, 0x2

    .line 1420
    .restart local v3    # "currentAnnotationOffset":I
    :goto_a
    add-int/lit8 v6, v2, -0x1

    .end local v2    # "numAnnotations":I
    .restart local v6    # "numAnnotations":I
    if-lez v2, :cond_1a

    .line 1422
    invoke-direct {v8, v9, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v2

    .line 1424
    .end local v3    # "currentAnnotationOffset":I
    .local v2, "currentAnnotationOffset":I
    invoke-virtual {v8, v2, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1425
    .local v3, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x2

    .line 1427
    iget v12, v9, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v27, v0

    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v27    # "runtimeVisibleTypeAnnotationsOffset":I
    iget-object v0, v9, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 1429
    move/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "annotationDefaultOffset":I
    .local v21, "annotationDefaultOffset":I
    invoke-virtual {v14, v12, v0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 1428
    invoke-direct {v8, v0, v2, v1, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    .line 1437
    .end local v2    # "currentAnnotationOffset":I
    .local v3, "currentAnnotationOffset":I
    move v2, v6

    move/from16 v1, v21

    move/from16 v0, v27

    goto :goto_a

    .line 1420
    .end local v21    # "annotationDefaultOffset":I
    .end local v27    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v1    # "annotationDefaultOffset":I
    :cond_1a
    move/from16 v27, v0

    move/from16 v21, v1

    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v1    # "annotationDefaultOffset":I
    .restart local v21    # "annotationDefaultOffset":I
    .restart local v27    # "runtimeVisibleTypeAnnotationsOffset":I
    goto :goto_b

    .line 1417
    .end local v3    # "currentAnnotationOffset":I
    .end local v6    # "numAnnotations":I
    .end local v21    # "annotationDefaultOffset":I
    .end local v27    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v1    # "annotationDefaultOffset":I
    :cond_1b
    move/from16 v27, v0

    move/from16 v21, v1

    .line 1441
    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v1    # "annotationDefaultOffset":I
    .restart local v21    # "annotationDefaultOffset":I
    .restart local v27    # "runtimeVisibleTypeAnnotationsOffset":I
    :goto_b
    move/from16 v0, v26

    .end local v26    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v0, "runtimeInvisibleTypeAnnotationsOffset":I
    if-eqz v0, :cond_1d

    .line 1442
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1443
    .local v1, "numAnnotations":I
    add-int/lit8 v2, v0, 0x2

    .line 1444
    .restart local v2    # "currentAnnotationOffset":I
    :goto_c
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "numAnnotations":I
    .local v3, "numAnnotations":I
    if-lez v1, :cond_1c

    .line 1446
    invoke-direct {v8, v9, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v1

    .line 1448
    .end local v2    # "currentAnnotationOffset":I
    .local v1, "currentAnnotationOffset":I
    invoke-virtual {v8, v1, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1449
    .local v2, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    .line 1451
    iget v6, v9, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v12, v9, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 1453
    move/from16 v26, v0

    const/4 v0, 0x0

    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v26    # "runtimeInvisibleTypeAnnotationsOffset":I
    invoke-virtual {v14, v6, v12, v2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v6

    .line 1452
    const/4 v0, 0x1

    invoke-direct {v8, v6, v1, v0, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    .line 1461
    .end local v1    # "currentAnnotationOffset":I
    .local v2, "currentAnnotationOffset":I
    move v1, v3

    move/from16 v0, v26

    goto :goto_c

    .line 1444
    .end local v26    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    :cond_1c
    move/from16 v26, v0

    const/4 v0, 0x1

    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v26    # "runtimeInvisibleTypeAnnotationsOffset":I
    goto :goto_d

    .line 1441
    .end local v2    # "currentAnnotationOffset":I
    .end local v3    # "numAnnotations":I
    .end local v26    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    :cond_1d
    move/from16 v26, v0

    const/4 v0, 0x1

    .line 1465
    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v26    # "runtimeInvisibleTypeAnnotationsOffset":I
    :goto_d
    move/from16 v12, v29

    .end local v29    # "runtimeVisibleParameterAnnotationsOffset":I
    .local v12, "runtimeVisibleParameterAnnotationsOffset":I
    if-eqz v12, :cond_1e

    .line 1466
    invoke-direct {v8, v14, v9, v12, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readParameterAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)V

    .line 1471
    :cond_1e
    move/from16 v2, v28

    .end local v28    # "runtimeInvisibleParameterAnnotationsOffset":I
    .local v2, "runtimeInvisibleParameterAnnotationsOffset":I
    if-eqz v2, :cond_1f

    .line 1472
    const/4 v0, 0x0

    invoke-direct {v8, v14, v9, v2, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readParameterAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)V

    .line 1480
    :cond_1f
    move-object/from16 v0, v25

    .end local v25    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v0, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_e
    if-eqz v0, :cond_20

    .line 1482
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1483
    .local v1, "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    const/4 v3, 0x0

    iput-object v3, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1484
    invoke-virtual {v14, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 1485
    move-object v0, v1

    .line 1486
    .end local v1    # "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    goto :goto_e

    .line 1489
    :cond_20
    if-eqz v18, :cond_21

    .line 1490
    invoke-virtual {v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 1491
    move/from16 v1, v18

    .end local v18    # "codeOffset":I
    .local v1, "codeOffset":I
    invoke-direct {v8, v14, v9, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;I)V

    goto :goto_f

    .line 1489
    .end local v1    # "codeOffset":I
    .restart local v18    # "codeOffset":I
    :cond_21
    move/from16 v1, v18

    .line 1495
    .end local v18    # "codeOffset":I
    .restart local v1    # "codeOffset":I
    :goto_f
    invoke-virtual {v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 1496
    return v7
.end method

.method private readModuleAttributes(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;IILjava/lang/String;)V
    .locals 20
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p2, "context"    # Lnet/bytebuddy/jar/asm/Context;
    .param p3, "moduleOffset"    # I
    .param p4, "modulePackagesOffset"    # I
    .param p5, "moduleMainClass"    # Ljava/lang/String;

    .line 750
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    iget-object v4, v3, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 753
    .local v4, "buffer":[C
    move/from16 v5, p3

    .line 754
    .local v5, "currentOffset":I
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v6

    .line 755
    .local v6, "moduleName":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {v0, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 756
    .local v7, "moduleFlags":I
    add-int/lit8 v8, v5, 0x4

    invoke-virtual {v0, v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    .line 757
    .local v8, "moduleVersion":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x6

    .line 758
    move-object/from16 v9, p1

    invoke-virtual {v9, v6, v7, v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;

    move-result-object v10

    .line 759
    .local v10, "moduleVisitor":Lnet/bytebuddy/jar/asm/ModuleVisitor;
    if-nez v10, :cond_0

    .line 760
    return-void

    .line 764
    :cond_0
    if-eqz v2, :cond_1

    .line 765
    invoke-virtual {v10, v2}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    .line 769
    :cond_1
    if-eqz v1, :cond_2

    .line 770
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 771
    .local v11, "packageCount":I
    add-int/lit8 v12, v1, 0x2

    .line 772
    .local v12, "currentPackageOffset":I
    :goto_0
    add-int/lit8 v13, v11, -0x1

    .end local v11    # "packageCount":I
    .local v13, "packageCount":I
    if-lez v11, :cond_2

    .line 773
    invoke-virtual {v0, v12, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    .line 774
    add-int/lit8 v12, v12, 0x2

    move v11, v13

    goto :goto_0

    .line 779
    .end local v12    # "currentPackageOffset":I
    .end local v13    # "packageCount":I
    :cond_2
    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 780
    .local v11, "requiresCount":I
    add-int/lit8 v5, v5, 0x2

    .line 781
    :goto_1
    add-int/lit8 v12, v11, -0x1

    .end local v11    # "requiresCount":I
    .local v12, "requiresCount":I
    if-lez v11, :cond_3

    .line 783
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v11

    .line 784
    .local v11, "requires":Ljava/lang/String;
    add-int/lit8 v13, v5, 0x2

    invoke-virtual {v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .line 785
    .local v13, "requiresFlags":I
    add-int/lit8 v14, v5, 0x4

    invoke-virtual {v0, v14, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 786
    .local v14, "requiresVersion":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x6

    .line 787
    invoke-virtual {v10, v11, v13, v14}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    .line 788
    .end local v11    # "requires":Ljava/lang/String;
    .end local v13    # "requiresFlags":I
    .end local v14    # "requiresVersion":Ljava/lang/String;
    move v11, v12

    goto :goto_1

    .line 791
    :cond_3
    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 792
    .local v11, "exportsCount":I
    add-int/lit8 v5, v5, 0x2

    .line 793
    :goto_2
    add-int/lit8 v13, v11, -0x1

    .end local v11    # "exportsCount":I
    .local v13, "exportsCount":I
    if-lez v11, :cond_6

    .line 796
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v11

    .line 797
    .local v11, "exports":Ljava/lang/String;
    add-int/lit8 v14, v5, 0x2

    invoke-virtual {v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    .line 798
    .local v14, "exportsFlags":I
    add-int/lit8 v15, v5, 0x4

    invoke-virtual {v0, v15}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    .line 799
    .local v15, "exportsToCount":I
    add-int/lit8 v5, v5, 0x6

    .line 800
    const/16 v16, 0x0

    .line 801
    .local v16, "exportsTo":[Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 802
    new-array v1, v15, [Ljava/lang/String;

    .line 803
    .end local v16    # "exportsTo":[Ljava/lang/String;
    .local v1, "exportsTo":[Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "i":I
    :goto_3
    if-ge v2, v15, :cond_5

    .line 804
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v2

    .line 805
    add-int/lit8 v5, v5, 0x2

    .line 803
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 801
    .end local v1    # "exportsTo":[Ljava/lang/String;
    .end local v2    # "i":I
    .restart local v16    # "exportsTo":[Ljava/lang/String;
    :cond_4
    move-object/from16 v1, v16

    .line 808
    .end local v16    # "exportsTo":[Ljava/lang/String;
    .restart local v1    # "exportsTo":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v10, v11, v14, v1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 809
    .end local v1    # "exportsTo":[Ljava/lang/String;
    .end local v11    # "exports":Ljava/lang/String;
    .end local v14    # "exportsFlags":I
    .end local v15    # "exportsToCount":I
    move/from16 v1, p4

    move-object/from16 v2, p5

    move v11, v13

    goto :goto_2

    .line 812
    :cond_6
    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 813
    .local v1, "opensCount":I
    add-int/lit8 v5, v5, 0x2

    .line 814
    :goto_4
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "opensCount":I
    .local v2, "opensCount":I
    if-lez v1, :cond_9

    .line 816
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "opens":Ljava/lang/String;
    add-int/lit8 v11, v5, 0x2

    invoke-virtual {v0, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 818
    .local v11, "opensFlags":I
    add-int/lit8 v14, v5, 0x4

    invoke-virtual {v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    .line 819
    .local v14, "opensToCount":I
    add-int/lit8 v5, v5, 0x6

    .line 820
    const/4 v15, 0x0

    .line 821
    .local v15, "opensTo":[Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 822
    new-array v15, v14, [Ljava/lang/String;

    .line 823
    const/16 v16, 0x0

    move/from16 v19, v16

    move/from16 v16, v2

    move/from16 v2, v19

    .local v2, "i":I
    .local v16, "opensCount":I
    :goto_5
    if-ge v2, v14, :cond_8

    .line 824
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v2

    .line 825
    add-int/lit8 v5, v5, 0x2

    .line 823
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 821
    .end local v16    # "opensCount":I
    .local v2, "opensCount":I
    :cond_7
    move/from16 v16, v2

    .line 828
    .end local v2    # "opensCount":I
    .restart local v16    # "opensCount":I
    :cond_8
    invoke-virtual {v10, v1, v11, v15}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 829
    .end local v1    # "opens":Ljava/lang/String;
    .end local v11    # "opensFlags":I
    .end local v14    # "opensToCount":I
    .end local v15    # "opensTo":[Ljava/lang/String;
    move/from16 v1, v16

    goto :goto_4

    .line 832
    .end local v16    # "opensCount":I
    .restart local v2    # "opensCount":I
    :cond_9
    move/from16 v16, v2

    .end local v2    # "opensCount":I
    .restart local v16    # "opensCount":I
    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 833
    .local v1, "usesCount":I
    add-int/lit8 v5, v5, 0x2

    .line 834
    :goto_6
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "usesCount":I
    .local v2, "usesCount":I
    if-lez v1, :cond_a

    .line 835
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    .line 836
    add-int/lit8 v5, v5, 0x2

    move v1, v2

    goto :goto_6

    .line 840
    :cond_a
    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 841
    .local v1, "providesCount":I
    add-int/lit8 v5, v5, 0x2

    .line 842
    :goto_7
    add-int/lit8 v11, v1, -0x1

    .end local v1    # "providesCount":I
    .local v11, "providesCount":I
    if-lez v1, :cond_c

    .line 844
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "provides":Ljava/lang/String;
    add-int/lit8 v14, v5, 0x2

    invoke-virtual {v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    .line 846
    .local v14, "providesWithCount":I
    add-int/lit8 v5, v5, 0x4

    .line 847
    new-array v15, v14, [Ljava/lang/String;

    .line 848
    .local v15, "providesWith":[Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v19, v17

    move/from16 v17, v2

    move/from16 v2, v19

    .local v2, "i":I
    .local v17, "usesCount":I
    :goto_8
    if-ge v2, v14, :cond_b

    .line 849
    invoke-virtual {v0, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v2

    .line 850
    add-int/lit8 v5, v5, 0x2

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 852
    .end local v2    # "i":I
    :cond_b
    invoke-virtual {v10, v1, v15}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    .line 853
    .end local v1    # "provides":Ljava/lang/String;
    .end local v14    # "providesWithCount":I
    .end local v15    # "providesWith":[Ljava/lang/String;
    move v1, v11

    move/from16 v2, v17

    goto :goto_7

    .line 856
    .end local v17    # "usesCount":I
    .local v2, "usesCount":I
    :cond_c
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitEnd()V

    .line 857
    return-void
.end method

.method private readParameterAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)V
    .locals 8
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "context"    # Lnet/bytebuddy/jar/asm/Context;
    .param p3, "runtimeParameterAnnotationsOffset"    # I
    .param p4, "visible"    # Z

    .line 2920
    move v0, p3

    .line 2921
    .local v0, "currentOffset":I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentOffset":I
    .local v2, "currentOffset":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 2922
    .local v0, "numParameters":I
    invoke-virtual {p1, v0, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    .line 2923
    iget-object v1, p2, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 2924
    .local v1, "charBuffer":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2925
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 2926
    .local v4, "numAnnotations":I
    add-int/lit8 v2, v2, 0x2

    .line 2927
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "numAnnotations":I
    .local v5, "numAnnotations":I
    if-lez v4, :cond_0

    .line 2929
    invoke-virtual {p0, v2, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 2930
    .local v4, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x2

    .line 2932
    nop

    .line 2934
    invoke-virtual {p1, v3, v4, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v6

    .line 2933
    const/4 v7, 0x1

    invoke-direct {p0, v6, v2, v7, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    .line 2938
    .end local v4    # "annotationDescriptor":Ljava/lang/String;
    move v4, v5

    goto :goto_1

    .line 2924
    .end local v5    # "numAnnotations":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2940
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private readRecordComponent(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I
    .locals 25
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p2, "context"    # Lnet/bytebuddy/jar/asm/Context;
    .param p3, "recordComponentOffset"    # I

    .line 869
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-object v10, v9, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 871
    .local v10, "charBuffer":[C
    move/from16 v0, p3

    .line 872
    .local v0, "currentOffset":I
    invoke-virtual {v8, v0, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 873
    .local v11, "name":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 874
    .local v12, "descriptor":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x4

    .line 881
    const/4 v1, 0x0

    .line 883
    .local v1, "signature":Ljava/lang/String;
    const/4 v2, 0x0

    .line 885
    .local v2, "runtimeVisibleAnnotationsOffset":I
    const/4 v3, 0x0

    .line 887
    .local v3, "runtimeInvisibleAnnotationsOffset":I
    const/4 v4, 0x0

    .line 889
    .local v4, "runtimeVisibleTypeAnnotationsOffset":I
    const/4 v5, 0x0

    .line 892
    .local v5, "runtimeInvisibleTypeAnnotationsOffset":I
    const/4 v6, 0x0

    .line 894
    .local v6, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 895
    .local v7, "attributesCount":I
    add-int/lit8 v0, v0, 0x2

    move-object v13, v1

    move v14, v2

    move v15, v3

    move v1, v7

    move v7, v4

    move-object/from16 v24, v6

    move v6, v5

    move-object/from16 v5, v24

    .line 896
    .end local v2    # "runtimeVisibleAnnotationsOffset":I
    .end local v3    # "runtimeInvisibleAnnotationsOffset":I
    .end local v4    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v1, "attributesCount":I
    .local v5, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v6, "runtimeInvisibleTypeAnnotationsOffset":I
    .local v7, "runtimeVisibleTypeAnnotationsOffset":I
    .local v13, "signature":Ljava/lang/String;
    .local v14, "runtimeVisibleAnnotationsOffset":I
    .local v15, "runtimeInvisibleAnnotationsOffset":I
    :goto_0
    add-int/lit8 v16, v1, -0x1

    .end local v1    # "attributesCount":I
    .local v16, "attributesCount":I
    if-lez v1, :cond_5

    .line 898
    invoke-virtual {v8, v0, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 899
    .local v4, "attributeName":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v17

    .line 900
    .local v17, "attributeLength":I
    add-int/lit8 v3, v0, 0x6

    .line 903
    .end local v0    # "currentOffset":I
    .local v3, "currentOffset":I
    const-string v0, "Signature"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {v8, v3, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    .end local v13    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_1

    .line 905
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v13    # "signature":Ljava/lang/String;
    :cond_0
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    move v0, v3

    move v14, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    .end local v14    # "runtimeVisibleAnnotationsOffset":I
    .local v0, "runtimeVisibleAnnotationsOffset":I
    goto/16 :goto_1

    .line 907
    .end local v0    # "runtimeVisibleAnnotationsOffset":I
    .restart local v14    # "runtimeVisibleAnnotationsOffset":I
    :cond_1
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 908
    move v0, v3

    move v7, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    .end local v7    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v0, "runtimeVisibleTypeAnnotationsOffset":I
    goto :goto_1

    .line 909
    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v7    # "runtimeVisibleTypeAnnotationsOffset":I
    :cond_2
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    move v0, v3

    move v15, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    .end local v15    # "runtimeInvisibleAnnotationsOffset":I
    .local v0, "runtimeInvisibleAnnotationsOffset":I
    goto :goto_1

    .line 911
    .end local v0    # "runtimeInvisibleAnnotationsOffset":I
    .restart local v15    # "runtimeInvisibleAnnotationsOffset":I
    :cond_3
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 912
    move v0, v3

    move v6, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    .end local v6    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v0, "runtimeInvisibleTypeAnnotationsOffset":I
    goto :goto_1

    .line 914
    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v6    # "runtimeInvisibleTypeAnnotationsOffset":I
    :cond_4
    iget-object v1, v9, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    const/16 v18, -0x1

    const/16 v19, 0x0

    .line 915
    move-object/from16 v0, p0

    move-object v2, v4

    move/from16 v20, v3

    .end local v3    # "currentOffset":I
    .local v20, "currentOffset":I
    move-object/from16 v21, v4

    .end local v4    # "attributeName":Ljava/lang/String;
    .local v21, "attributeName":Ljava/lang/String;
    move/from16 v4, v17

    move-object/from16 v22, v5

    .end local v5    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v22, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    move-object v5, v10

    move/from16 v23, v6

    .end local v6    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v23, "runtimeInvisibleTypeAnnotationsOffset":I
    move/from16 v6, v18

    move v9, v7

    .end local v7    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v9, "runtimeVisibleTypeAnnotationsOffset":I
    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    .line 923
    .local v0, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    move-object/from16 v6, v22

    .end local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v6, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    iput-object v6, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 924
    move-object v1, v0

    move-object v5, v1

    move v7, v9

    move/from16 v6, v23

    .line 926
    .end local v0    # "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v9    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v5    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v6, "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v7    # "runtimeVisibleTypeAnnotationsOffset":I
    :goto_1
    add-int v0, v20, v17

    .line 927
    .end local v17    # "attributeLength":I
    .end local v20    # "currentOffset":I
    .end local v21    # "attributeName":Ljava/lang/String;
    .local v0, "currentOffset":I
    move-object/from16 v9, p2

    move/from16 v1, v16

    goto/16 :goto_0

    .line 929
    :cond_5
    move/from16 v23, v6

    move v9, v7

    move-object v6, v5

    .line 930
    .end local v5    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v7    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v6, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v9    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    move-object/from16 v1, p1

    invoke-virtual {v1, v11, v12, v13}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object v2

    .line 931
    .local v2, "recordComponentVisitor":Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    if-nez v2, :cond_6

    .line 932
    return v0

    .line 936
    :cond_6
    const/4 v3, 0x1

    if-eqz v14, :cond_7

    .line 937
    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 938
    .local v4, "numAnnotations":I
    add-int/lit8 v5, v14, 0x2

    .line 939
    .local v5, "currentAnnotationOffset":I
    :goto_2
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "numAnnotations":I
    .local v7, "numAnnotations":I
    if-lez v4, :cond_7

    .line 941
    invoke-virtual {v8, v5, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 942
    .local v4, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x2

    .line 944
    nop

    .line 946
    invoke-virtual {v2, v4, v3}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 945
    invoke-direct {v8, v1, v5, v3, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v5

    .line 950
    .end local v4    # "annotationDescriptor":Ljava/lang/String;
    move-object/from16 v1, p1

    move v4, v7

    goto :goto_2

    .line 954
    .end local v5    # "currentAnnotationOffset":I
    .end local v7    # "numAnnotations":I
    :cond_7
    const/4 v1, 0x0

    if-eqz v15, :cond_9

    .line 955
    invoke-virtual {v8, v15}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 956
    .local v4, "numAnnotations":I
    add-int/lit8 v5, v15, 0x2

    .line 957
    .restart local v5    # "currentAnnotationOffset":I
    :goto_3
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "numAnnotations":I
    .restart local v7    # "numAnnotations":I
    if-lez v4, :cond_8

    .line 959
    invoke-virtual {v8, v5, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 960
    .local v4, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x2

    .line 962
    nop

    .line 964
    move-object/from16 v22, v6

    .end local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    invoke-virtual {v2, v4, v1}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v6

    .line 963
    invoke-direct {v8, v6, v5, v3, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v5

    .line 968
    .end local v4    # "annotationDescriptor":Ljava/lang/String;
    move v4, v7

    move-object/from16 v6, v22

    goto :goto_3

    .line 957
    .end local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :cond_8
    move-object/from16 v22, v6

    .end local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    goto :goto_4

    .line 954
    .end local v5    # "currentAnnotationOffset":I
    .end local v7    # "numAnnotations":I
    .end local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :cond_9
    move-object/from16 v22, v6

    .line 972
    .end local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_4
    if-eqz v9, :cond_b

    .line 973
    invoke-virtual {v8, v9}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 974
    .local v4, "numAnnotations":I
    add-int/lit8 v7, v9, 0x2

    .line 975
    .local v7, "currentAnnotationOffset":I
    :goto_5
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "numAnnotations":I
    .local v5, "numAnnotations":I
    if-lez v4, :cond_a

    .line 977
    move-object/from16 v4, p2

    move v6, v9

    .end local v9    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v6, "runtimeVisibleTypeAnnotationsOffset":I
    invoke-direct {v8, v4, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v7

    .line 979
    invoke-virtual {v8, v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    .line 980
    .local v9, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x2

    .line 982
    iget v1, v4, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v18, v5

    .end local v5    # "numAnnotations":I
    .local v18, "numAnnotations":I
    iget-object v5, v4, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 984
    invoke-virtual {v2, v1, v5, v9, v3}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 983
    invoke-direct {v8, v1, v7, v3, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v7

    .line 992
    .end local v9    # "annotationDescriptor":Ljava/lang/String;
    move v9, v6

    move/from16 v4, v18

    const/4 v1, 0x0

    goto :goto_5

    .line 975
    .end local v6    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v18    # "numAnnotations":I
    .restart local v5    # "numAnnotations":I
    .local v9, "runtimeVisibleTypeAnnotationsOffset":I
    :cond_a
    move-object/from16 v4, p2

    move/from16 v18, v5

    move v6, v9

    .end local v5    # "numAnnotations":I
    .end local v9    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v6    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v18    # "numAnnotations":I
    goto :goto_6

    .line 972
    .end local v6    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v7    # "currentAnnotationOffset":I
    .end local v18    # "numAnnotations":I
    .restart local v9    # "runtimeVisibleTypeAnnotationsOffset":I
    :cond_b
    move-object/from16 v4, p2

    move v6, v9

    .line 996
    .end local v9    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v6    # "runtimeVisibleTypeAnnotationsOffset":I
    :goto_6
    move/from16 v5, v23

    .end local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v5, "runtimeInvisibleTypeAnnotationsOffset":I
    if-eqz v5, :cond_d

    .line 997
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 998
    .local v1, "numAnnotations":I
    add-int/lit8 v7, v5, 0x2

    .line 999
    .restart local v7    # "currentAnnotationOffset":I
    :goto_7
    add-int/lit8 v9, v1, -0x1

    .end local v1    # "numAnnotations":I
    .local v9, "numAnnotations":I
    if-lez v1, :cond_c

    .line 1001
    invoke-direct {v8, v4, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v1

    .line 1003
    .end local v7    # "currentAnnotationOffset":I
    .local v1, "currentAnnotationOffset":I
    invoke-virtual {v8, v1, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 1004
    .local v7, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    .line 1006
    iget v3, v4, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v23, v5

    .end local v5    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    iget-object v5, v4, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 1008
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v7, v4}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v3

    .line 1007
    const/4 v5, 0x1

    invoke-direct {v8, v3, v1, v5, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v7

    .line 1016
    .end local v1    # "currentAnnotationOffset":I
    .local v7, "currentAnnotationOffset":I
    move-object/from16 v4, p2

    move v3, v5

    move v1, v9

    move/from16 v5, v23

    goto :goto_7

    .line 999
    .end local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v5    # "runtimeInvisibleTypeAnnotationsOffset":I
    :cond_c
    move/from16 v23, v5

    .end local v5    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    goto :goto_8

    .line 996
    .end local v7    # "currentAnnotationOffset":I
    .end local v9    # "numAnnotations":I
    .end local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v5    # "runtimeInvisibleTypeAnnotationsOffset":I
    :cond_d
    move/from16 v23, v5

    .line 1020
    .end local v5    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    :goto_8
    move-object/from16 v5, v22

    .end local v22    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v5, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_9
    if-eqz v5, :cond_e

    .line 1022
    iget-object v1, v5, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1023
    .local v1, "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    const/4 v3, 0x0

    iput-object v3, v5, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1024
    invoke-virtual {v2, v5}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 1025
    move-object v5, v1

    .line 1026
    .end local v1    # "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    goto :goto_9

    .line 1029
    :cond_e
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitEnd()V

    .line 1030
    return v0
.end method

.method private readStackMapFrame(IZZLnet/bytebuddy/jar/asm/Context;)I
    .locals 17
    .param p1, "stackMapFrameOffset"    # I
    .param p2, "compressed"    # Z
    .param p3, "expand"    # Z
    .param p4, "context"    # Lnet/bytebuddy/jar/asm/Context;

    .line 3255
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move/from16 v0, p1

    .line 3256
    .local v0, "currentOffset":I
    iget-object v8, v7, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 3257
    .local v8, "charBuffer":[C
    iget-object v9, v7, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    .line 3259
    .local v9, "labels":[Lnet/bytebuddy/jar/asm/Label;
    const/16 v1, 0xff

    if-eqz p2, :cond_0

    .line 3261
    iget-object v2, v6, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "currentOffset":I
    .local v3, "currentOffset":I
    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    move v10, v0

    move v11, v3

    .local v0, "frameType":I
    goto :goto_0

    .line 3263
    .end local v3    # "currentOffset":I
    .local v0, "currentOffset":I
    :cond_0
    const/16 v2, 0xff

    .line 3264
    .local v2, "frameType":I
    const/4 v3, -0x1

    iput v3, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    move v11, v0

    move v10, v2

    .line 3267
    .end local v0    # "currentOffset":I
    .end local v2    # "frameType":I
    .local v10, "frameType":I
    .local v11, "currentOffset":I
    :goto_0
    const/4 v12, 0x0

    iput v12, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 3268
    const/4 v0, 0x3

    const/16 v2, 0x40

    if-ge v10, v2, :cond_1

    .line 3269
    move v1, v10

    .line 3270
    .local v1, "offsetDelta":I
    iput v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3271
    iput v12, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    goto/16 :goto_6

    .line 3272
    .end local v1    # "offsetDelta":I
    :cond_1
    const/16 v2, 0x80

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-ge v10, v2, :cond_2

    .line 3273
    add-int/lit8 v12, v10, -0x40

    .line 3274
    .local v12, "offsetDelta":I
    iget-object v2, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3275
    move-object/from16 v0, p0

    move v1, v11

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v11

    .line 3277
    iput v13, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3278
    iput v14, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    move v1, v12

    goto/16 :goto_6

    .line 3279
    .end local v12    # "offsetDelta":I
    :cond_2
    const/16 v2, 0xf7

    if-lt v10, v2, :cond_b

    .line 3280
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    .line 3281
    .local v15, "offsetDelta":I
    add-int/lit8 v11, v11, 0x2

    .line 3282
    if-ne v10, v2, :cond_3

    .line 3283
    iget-object v2, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3284
    move-object/from16 v0, p0

    move v1, v11

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v11

    .line 3286
    iput v13, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3287
    iput v14, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    move v1, v15

    goto/16 :goto_6

    .line 3288
    :cond_3
    const/16 v2, 0xf8

    const/4 v13, 0x2

    const/16 v3, 0xfb

    if-lt v10, v2, :cond_4

    if-ge v10, v3, :cond_4

    .line 3289
    iput v13, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3290
    rsub-int v0, v10, 0xfb

    iput v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 3291
    iget v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    iget v1, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    sub-int/2addr v0, v1

    iput v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    .line 3292
    iput v12, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    goto :goto_1

    .line 3293
    :cond_4
    if-ne v10, v3, :cond_5

    .line 3294
    iput v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3295
    iput v12, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    .line 3330
    :goto_1
    move v1, v15

    goto/16 :goto_6

    .line 3296
    :cond_5
    if-ge v10, v1, :cond_8

    .line 3297
    if-eqz p3, :cond_6

    iget v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    goto :goto_2

    :cond_6
    move v0, v12

    .line 3298
    .local v0, "local":I
    :goto_2
    add-int/lit16 v1, v10, -0xfb

    move v3, v0

    move v13, v11

    move v11, v1

    .end local v0    # "local":I
    .local v3, "local":I
    .local v11, "k":I
    .local v13, "currentOffset":I
    :goto_3
    if-lez v11, :cond_7

    .line 3299
    iget-object v2, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    add-int/lit8 v16, v3, 0x1

    .line 3300
    .end local v3    # "local":I
    .local v16, "local":I
    move-object/from16 v0, p0

    move v1, v13

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v13

    .line 3298
    add-int/lit8 v11, v11, -0x1

    move/from16 v3, v16

    goto :goto_3

    .line 3303
    .end local v11    # "k":I
    .end local v16    # "local":I
    .restart local v3    # "local":I
    :cond_7
    iput v14, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3304
    add-int/lit16 v0, v10, -0xfb

    iput v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 3305
    iget v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    iget v1, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    add-int/2addr v0, v1

    iput v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    .line 3306
    iput v12, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    .line 3307
    .end local v3    # "local":I
    move v11, v13

    move v1, v15

    goto :goto_6

    .line 3308
    .end local v13    # "currentOffset":I
    .local v11, "currentOffset":I
    :cond_8
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    .line 3309
    .local v14, "numberOfLocals":I
    add-int/lit8 v11, v11, 0x2

    .line 3310
    iput v12, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3311
    iput v14, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 3312
    iput v14, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    .line 3313
    const/4 v0, 0x0

    move v12, v11

    move v11, v0

    .local v11, "local":I
    .local v12, "currentOffset":I
    :goto_4
    if-ge v11, v14, :cond_9

    .line 3314
    iget-object v2, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 3315
    move-object/from16 v0, p0

    move v1, v12

    move v3, v11

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v12

    .line 3313
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 3318
    .end local v11    # "local":I
    :cond_9
    invoke-virtual {v6, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 3319
    .local v11, "numberOfStackItems":I
    add-int/2addr v12, v13

    .line 3320
    iput v11, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    .line 3321
    const/4 v0, 0x0

    move v13, v12

    move v12, v0

    .local v12, "stack":I
    .restart local v13    # "currentOffset":I
    :goto_5
    if-ge v12, v11, :cond_a

    .line 3322
    iget-object v2, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    .line 3323
    move-object/from16 v0, p0

    move v1, v13

    move v3, v12

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v13

    .line 3321
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 3326
    .end local v11    # "numberOfStackItems":I
    .end local v12    # "stack":I
    .end local v14    # "numberOfLocals":I
    :cond_a
    move v11, v13

    move v1, v15

    .line 3330
    .end local v13    # "currentOffset":I
    .end local v15    # "offsetDelta":I
    .restart local v1    # "offsetDelta":I
    .local v11, "currentOffset":I
    :goto_6
    iget v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    iput v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    .line 3331
    iget v0, v7, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    invoke-direct {v6, v0, v9}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 3332
    return v11

    .line 3328
    .end local v1    # "offsetDelta":I
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static readStream(Ljava/io/InputStream;Z)[B
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    if-eqz p0, :cond_3

    .line 313
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 314
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 316
    .local v1, "data":[B
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v4, v2

    .local v4, "bytesRead":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 317
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 320
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 322
    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 320
    :cond_1
    return-object v2

    .line 313
    .end local v1    # "data":[B
    .end local v4    # "bytesRead":I
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "close":Z
    :goto_1
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 322
    .end local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "close":Z
    :catchall_2
    move-exception v0

    if-eqz p1, :cond_2

    .line 323
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 325
    :cond_2
    throw v0

    .line 311
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Class not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readStringish(I[C)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "charBuffer"    # [C

    .line 3703
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I
    .locals 10
    .param p1, "context"    # Lnet/bytebuddy/jar/asm/Context;
    .param p2, "typeAnnotationOffset"    # I

    .line 2833
    move v0, p2

    .line 2835
    .local v0, "currentOffset":I
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 2836
    .local v1, "targetType":I
    ushr-int/lit8 v2, v1, 0x18

    const/high16 v3, -0x1000000

    sparse-switch v2, :sswitch_data_0

    .line 2893
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 2874
    :sswitch_0
    const v2, -0xffff01

    and-int/2addr v1, v2

    .line 2875
    add-int/lit8 v0, v0, 0x4

    .line 2876
    goto :goto_1

    .line 2889
    :sswitch_1
    and-int/2addr v1, v3

    .line 2890
    add-int/lit8 v0, v0, 0x3

    .line 2891
    goto :goto_1

    .line 2851
    :sswitch_2
    and-int/2addr v1, v3

    .line 2852
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 2853
    .local v2, "tableLength":I
    add-int/lit8 v0, v0, 0x3

    .line 2854
    new-array v3, v2, [Lnet/bytebuddy/jar/asm/Label;

    iput-object v3, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lnet/bytebuddy/jar/asm/Label;

    .line 2855
    new-array v3, v2, [Lnet/bytebuddy/jar/asm/Label;

    iput-object v3, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lnet/bytebuddy/jar/asm/Label;

    .line 2856
    new-array v3, v2, [I

    iput-object v3, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    .line 2857
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2858
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 2859
    .local v4, "startPc":I
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 2860
    .local v5, "length":I
    add-int/lit8 v6, v0, 0x4

    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 2861
    .local v6, "index":I
    add-int/lit8 v0, v0, 0x6

    .line 2862
    iget-object v7, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lnet/bytebuddy/jar/asm/Label;

    iget-object v8, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    .line 2863
    invoke-direct {p0, v4, v8}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v8

    aput-object v8, v7, v3

    .line 2864
    iget-object v7, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lnet/bytebuddy/jar/asm/Label;

    add-int v8, v4, v5

    iget-object v9, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    .line 2865
    invoke-direct {p0, v8, v9}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v8

    aput-object v8, v7, v3

    .line 2866
    iget-object v7, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    aput v6, v7, v3

    .line 2857
    .end local v4    # "startPc":I
    .end local v5    # "length":I
    .end local v6    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2868
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 2846
    .end local v2    # "tableLength":I
    :sswitch_3
    and-int/2addr v1, v3

    .line 2847
    add-int/lit8 v0, v0, 0x1

    .line 2848
    goto :goto_1

    .line 2882
    :sswitch_4
    and-int/lit16 v1, v1, -0x100

    .line 2883
    add-int/lit8 v0, v0, 0x3

    .line 2884
    goto :goto_1

    .line 2840
    :sswitch_5
    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    .line 2841
    add-int/lit8 v0, v0, 0x2

    .line 2842
    nop

    .line 2895
    :goto_1
    iput v1, p1, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    .line 2897
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v2

    .line 2898
    .local v2, "pathLength":I
    nop

    .line 2899
    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    new-instance v3, Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    invoke-direct {v3, v4, v0}, Lnet/bytebuddy/jar/asm/TypePath;-><init>([BI)V

    :goto_2
    iput-object v3, p1, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 2901
    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    return v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x12 -> :sswitch_4
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_5
        0x17 -> :sswitch_4
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x42 -> :sswitch_4
        0x43 -> :sswitch_1
        0x44 -> :sswitch_1
        0x45 -> :sswitch_1
        0x46 -> :sswitch_1
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method private readTypeAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)[I
    .locals 10
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "context"    # Lnet/bytebuddy/jar/asm/Context;
    .param p3, "runtimeTypeAnnotationsOffset"    # I
    .param p4, "visible"    # Z

    .line 2714
    iget-object v0, p2, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 2715
    .local v0, "charBuffer":[C
    move v1, p3

    .line 2717
    .local v1, "currentOffset":I
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v2, v2, [I

    .line 2718
    .local v2, "typeAnnotationsOffsets":[I
    add-int/lit8 v1, v1, 0x2

    .line 2720
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 2721
    aput v1, v2, v3

    .line 2724
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v4

    .line 2725
    .local v4, "targetType":I
    ushr-int/lit8 v5, v4, 0x18

    sparse-switch v5, :sswitch_data_0

    .line 2767
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 2746
    :sswitch_0
    add-int/lit8 v1, v1, 0x4

    .line 2747
    goto :goto_2

    .line 2730
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 2731
    .local v5, "tableLength":I
    add-int/lit8 v1, v1, 0x3

    .line 2732
    :goto_1
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "tableLength":I
    .local v6, "tableLength":I
    if-lez v5, :cond_0

    .line 2733
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 2734
    .local v5, "startPc":I
    add-int/lit8 v7, v1, 0x2

    invoke-virtual {p0, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 2736
    .local v7, "length":I
    add-int/lit8 v1, v1, 0x6

    .line 2737
    iget-object v8, p2, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p0, v5, v8}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 2738
    add-int v8, v5, v7

    iget-object v9, p2, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p0, v8, v9}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    .line 2739
    .end local v5    # "startPc":I
    .end local v7    # "length":I
    move v5, v6

    goto :goto_1

    .line 2757
    .end local v6    # "tableLength":I
    :sswitch_2
    add-int/lit8 v1, v1, 0x3

    .line 2758
    nop

    .line 2771
    :cond_0
    :goto_2
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v5

    .line 2772
    .local v5, "pathLength":I
    ushr-int/lit8 v6, v4, 0x18

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_2

    .line 2774
    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    new-instance v8, Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    invoke-direct {v8, v6, v1}, Lnet/bytebuddy/jar/asm/TypePath;-><init>([BI)V

    :goto_3
    move-object v6, v8

    .line 2775
    .local v6, "path":Lnet/bytebuddy/jar/asm/TypePath;
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v9

    add-int/2addr v1, v7

    .line 2777
    invoke-virtual {p0, v1, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 2778
    .local v7, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    .line 2780
    and-int/lit16 v8, v4, -0x100

    .line 2782
    invoke-virtual {p1, v8, v6, v7, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v8

    .line 2781
    invoke-direct {p0, v8, v1, v9, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    .line 2787
    .end local v6    # "path":Lnet/bytebuddy/jar/asm/TypePath;
    .end local v7    # "annotationDescriptor":Ljava/lang/String;
    goto :goto_4

    .line 2791
    :cond_2
    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v1, v6

    .line 2794
    nop

    .line 2795
    invoke-direct {p0, v8, v1, v9, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    .line 2720
    .end local v4    # "targetType":I
    .end local v5    # "pathLength":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2799
    .end local v3    # "i":I
    :cond_3
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x17 -> :sswitch_2
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method private readUtf(II[C)Ljava/lang/String;
    .locals 8
    .param p1, "utfOffset"    # I
    .param p2, "utfLength"    # I
    .param p3, "charBuffer"    # [C

    .line 3665
    move v0, p1

    .line 3666
    .local v0, "currentOffset":I
    add-int v1, v0, p2

    .line 3667
    .local v1, "endOffset":I
    const/4 v2, 0x0

    .line 3668
    .local v2, "strLength":I
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    .line 3669
    .local v3, "classBuffer":[B
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3670
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "currentOffset":I
    .local v4, "currentOffset":I
    aget-byte v0, v3, v0

    .line 3671
    .local v0, "currentByte":I
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_0

    .line 3672
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "strLength":I
    .local v5, "strLength":I
    and-int/lit8 v6, v0, 0x7f

    int-to-char v6, v6

    aput-char v6, p3, v2

    move v0, v4

    move v2, v5

    goto :goto_1

    .line 3673
    .end local v5    # "strLength":I
    .restart local v2    # "strLength":I
    :cond_0
    and-int/lit16 v5, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_1

    .line 3674
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "strLength":I
    .restart local v5    # "strLength":I
    and-int/lit8 v6, v0, 0x1f

    shl-int/lit8 v6, v6, 0x6

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "currentOffset":I
    .local v7, "currentOffset":I
    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v6, v4

    int-to-char v4, v6

    aput-char v4, p3, v2

    move v2, v5

    move v0, v7

    goto :goto_1

    .line 3677
    .end local v5    # "strLength":I
    .end local v7    # "currentOffset":I
    .restart local v2    # "strLength":I
    .restart local v4    # "currentOffset":I
    :cond_1
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "strLength":I
    .restart local v5    # "strLength":I
    and-int/lit8 v6, v0, 0xf

    shl-int/lit8 v6, v6, 0xc

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "currentOffset":I
    .restart local v7    # "currentOffset":I
    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v6, v4

    add-int/lit8 v4, v7, 0x1

    .end local v7    # "currentOffset":I
    .restart local v4    # "currentOffset":I
    aget-byte v7, v3, v7

    and-int/lit8 v7, v7, 0x3f

    add-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, p3, v2

    move v0, v4

    move v2, v5

    .line 3683
    .end local v4    # "currentOffset":I
    .end local v5    # "strLength":I
    .local v0, "currentOffset":I
    .restart local v2    # "strLength":I
    :goto_1
    goto :goto_0

    .line 3684
    :cond_2
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, p3, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I
    .locals 3
    .param p1, "verificationTypeInfoOffset"    # I
    .param p2, "frame"    # [Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "charBuffer"    # [C
    .param p5, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 3355
    move v0, p1

    .line 3356
    .local v0, "currentOffset":I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "currentOffset":I
    .local v2, "currentOffset":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 3357
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 3388
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 3384
    :pswitch_0
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {p0, v1, p5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v1

    aput-object v1, p2, p3

    .line 3385
    add-int/lit8 v2, v2, 0x2

    .line 3386
    goto :goto_0

    .line 3380
    :pswitch_1
    invoke-virtual {p0, v2, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    .line 3381
    add-int/lit8 v2, v2, 0x2

    .line 3382
    goto :goto_0

    .line 3377
    :pswitch_2
    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v1, p2, p3

    .line 3378
    goto :goto_0

    .line 3374
    :pswitch_3
    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v1, p2, p3

    .line 3375
    goto :goto_0

    .line 3371
    :pswitch_4
    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v1, p2, p3

    .line 3372
    goto :goto_0

    .line 3368
    :pswitch_5
    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v1, p2, p3

    .line 3369
    goto :goto_0

    .line 3365
    :pswitch_6
    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v1, p2, p3

    .line 3366
    goto :goto_0

    .line 3362
    :pswitch_7
    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v1, p2, p3

    .line 3363
    goto :goto_0

    .line 3359
    :pswitch_8
    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v1, p2, p3

    .line 3360
    nop

    .line 3390
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public accept(Lnet/bytebuddy/jar/asm/ClassVisitor;I)V
    .locals 1
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p2, "parsingOptions"    # I

    .line 401
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;[Lnet/bytebuddy/jar/asm/Attribute;I)V

    .line 402
    return-void
.end method

.method public accept(Lnet/bytebuddy/jar/asm/ClassVisitor;[Lnet/bytebuddy/jar/asm/Attribute;I)V
    .locals 43
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p2, "attributePrototypes"    # [Lnet/bytebuddy/jar/asm/Attribute;
    .param p3, "parsingOptions"    # I

    .line 422
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    new-instance v0, Lnet/bytebuddy/jar/asm/Context;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Context;-><init>()V

    move-object v11, v0

    .line 423
    .local v11, "context":Lnet/bytebuddy/jar/asm/Context;
    move-object/from16 v12, p2

    iput-object v12, v11, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    .line 424
    iput v10, v11, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    .line 425
    iget v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    new-array v0, v0, [C

    iput-object v0, v11, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 428
    iget-object v13, v11, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 429
    .local v13, "charBuffer":[C
    iget v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    .line 430
    .local v0, "currentOffset":I
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 431
    .local v1, "accessFlags":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    .line 432
    .local v14, "thisClass":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    .line 433
    .local v15, "superClass":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    .line 434
    .local v7, "interfaces":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x8

    .line 435
    const/4 v2, 0x0

    move v6, v0

    .end local v0    # "currentOffset":I
    .local v2, "i":I
    .local v6, "currentOffset":I
    :goto_0
    array-length v0, v7

    if-ge v2, v0, :cond_0

    .line 436
    invoke-virtual {v8, v6, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    .line 437
    add-int/lit8 v6, v6, 0x2

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .line 445
    .local v0, "innerClassesOffset":I
    const/4 v2, 0x0

    .line 447
    .local v2, "enclosingMethodOffset":I
    const/4 v3, 0x0

    .line 449
    .local v3, "signature":Ljava/lang/String;
    const/4 v4, 0x0

    .line 451
    .local v4, "sourceFile":Ljava/lang/String;
    const/4 v5, 0x0

    .line 453
    .local v5, "sourceDebugExtension":Ljava/lang/String;
    const/16 v16, 0x0

    .line 455
    .local v16, "runtimeVisibleAnnotationsOffset":I
    const/16 v17, 0x0

    .line 457
    .local v17, "runtimeInvisibleAnnotationsOffset":I
    const/16 v18, 0x0

    .line 459
    .local v18, "runtimeVisibleTypeAnnotationsOffset":I
    const/16 v19, 0x0

    .line 461
    .local v19, "runtimeInvisibleTypeAnnotationsOffset":I
    const/16 v20, 0x0

    .line 463
    .local v20, "moduleOffset":I
    const/16 v21, 0x0

    .line 465
    .local v21, "modulePackagesOffset":I
    const/16 v22, 0x0

    .line 467
    .local v22, "moduleMainClass":Ljava/lang/String;
    const/16 v23, 0x0

    .line 469
    .local v23, "nestHostClass":Ljava/lang/String;
    const/16 v24, 0x0

    .line 471
    .local v24, "nestMembersOffset":I
    const/16 v25, 0x0

    .line 473
    .local v25, "permittedSubclassesOffset":I
    const/16 v26, 0x0

    .line 476
    .local v26, "recordOffset":I
    const/16 v27, 0x0

    .line 478
    .local v27, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v28

    .line 479
    .local v28, "currentAttributeOffset":I
    move/from16 v29, v0

    .end local v0    # "innerClassesOffset":I
    .local v29, "innerClassesOffset":I
    add-int/lit8 v0, v28, -0x2

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move/from16 v30, v17

    move/from16 v31, v18

    move/from16 v32, v19

    move-object/from16 v33, v23

    move/from16 v34, v24

    move/from16 v35, v25

    move/from16 v36, v26

    move-object/from16 v37, v27

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    move/from16 v7, v28

    move v3, v2

    move-object v2, v4

    move v4, v1

    move-object v1, v5

    move/from16 v5, v29

    move/from16 v42, v16

    move/from16 v16, v0

    move/from16 v0, v42

    .end local v19    # "runtimeInvisibleTypeAnnotationsOffset":I
    .end local v23    # "nestHostClass":Ljava/lang/String;
    .end local v24    # "nestMembersOffset":I
    .end local v25    # "permittedSubclassesOffset":I
    .end local v26    # "recordOffset":I
    .end local v27    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v28    # "currentAttributeOffset":I
    .end local v29    # "innerClassesOffset":I
    .local v0, "runtimeVisibleAnnotationsOffset":I
    .local v1, "sourceDebugExtension":Ljava/lang/String;
    .local v2, "sourceFile":Ljava/lang/String;
    .local v3, "enclosingMethodOffset":I
    .local v4, "accessFlags":I
    .local v5, "innerClassesOffset":I
    .local v7, "currentAttributeOffset":I
    .local v16, "i":I
    .local v17, "signature":Ljava/lang/String;
    .local v18, "interfaces":[Ljava/lang/String;
    .local v30, "runtimeInvisibleAnnotationsOffset":I
    .local v31, "runtimeVisibleTypeAnnotationsOffset":I
    .local v32, "runtimeInvisibleTypeAnnotationsOffset":I
    .local v33, "nestHostClass":Ljava/lang/String;
    .local v34, "nestMembersOffset":I
    .local v35, "permittedSubclassesOffset":I
    .local v36, "recordOffset":I
    .local v37, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_1
    if-lez v16, :cond_15

    .line 481
    move/from16 v19, v6

    .end local v6    # "currentOffset":I
    .local v19, "currentOffset":I
    invoke-virtual {v8, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "attributeName":Ljava/lang/String;
    move/from16 v23, v0

    .end local v0    # "runtimeVisibleAnnotationsOffset":I
    .local v23, "runtimeVisibleAnnotationsOffset":I
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    .line 483
    .local v0, "attributeLength":I
    add-int/lit8 v7, v7, 0x6

    .line 486
    move-object/from16 v24, v1

    .end local v1    # "sourceDebugExtension":Ljava/lang/String;
    .local v24, "sourceDebugExtension":Ljava/lang/String;
    const-string v1, "SourceFile"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    invoke-virtual {v8, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v2    # "sourceFile":Ljava/lang/String;
    .local v1, "sourceFile":Ljava/lang/String;
    goto/16 :goto_2

    .line 488
    .end local v1    # "sourceFile":Ljava/lang/String;
    .restart local v2    # "sourceFile":Ljava/lang/String;
    :cond_1
    const-string v1, "InnerClasses"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    move v1, v7

    move v5, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v5    # "innerClassesOffset":I
    .local v1, "innerClassesOffset":I
    goto/16 :goto_2

    .line 490
    .end local v1    # "innerClassesOffset":I
    .restart local v5    # "innerClassesOffset":I
    :cond_2
    const-string v1, "EnclosingMethod"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 491
    move v1, v7

    move v3, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v3    # "enclosingMethodOffset":I
    .local v1, "enclosingMethodOffset":I
    goto/16 :goto_2

    .line 492
    .end local v1    # "enclosingMethodOffset":I
    .restart local v3    # "enclosingMethodOffset":I
    :cond_3
    const-string v1, "NestHost"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 493
    invoke-virtual {v8, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v33    # "nestHostClass":Ljava/lang/String;
    .local v1, "nestHostClass":Ljava/lang/String;
    goto/16 :goto_2

    .line 494
    .end local v1    # "nestHostClass":Ljava/lang/String;
    .restart local v33    # "nestHostClass":Ljava/lang/String;
    :cond_4
    const-string v1, "NestMembers"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 495
    move v1, v7

    move/from16 v34, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v34    # "nestMembersOffset":I
    .local v1, "nestMembersOffset":I
    goto/16 :goto_2

    .line 496
    .end local v1    # "nestMembersOffset":I
    .restart local v34    # "nestMembersOffset":I
    :cond_5
    const-string v1, "PermittedSubclasses"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 497
    move v1, v7

    move/from16 v35, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v35    # "permittedSubclassesOffset":I
    .local v1, "permittedSubclassesOffset":I
    goto/16 :goto_2

    .line 498
    .end local v1    # "permittedSubclassesOffset":I
    .restart local v35    # "permittedSubclassesOffset":I
    :cond_6
    const-string v1, "Signature"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 499
    invoke-virtual {v8, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v17    # "signature":Ljava/lang/String;
    .local v1, "signature":Ljava/lang/String;
    goto/16 :goto_2

    .line 500
    .end local v1    # "signature":Ljava/lang/String;
    .restart local v17    # "signature":Ljava/lang/String;
    :cond_7
    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 501
    move v1, v7

    move/from16 v23, v0

    move v0, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    .end local v23    # "runtimeVisibleAnnotationsOffset":I
    .local v1, "runtimeVisibleAnnotationsOffset":I
    goto/16 :goto_2

    .line 502
    .end local v1    # "runtimeVisibleAnnotationsOffset":I
    .restart local v23    # "runtimeVisibleAnnotationsOffset":I
    :cond_8
    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 503
    move v1, v7

    move/from16 v31, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v31    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v1, "runtimeVisibleTypeAnnotationsOffset":I
    goto/16 :goto_2

    .line 504
    .end local v1    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v31    # "runtimeVisibleTypeAnnotationsOffset":I
    :cond_9
    const-string v1, "Deprecated"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 505
    const/high16 v1, 0x20000

    or-int/2addr v1, v4

    move v4, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v4    # "accessFlags":I
    .local v1, "accessFlags":I
    goto/16 :goto_2

    .line 506
    .end local v1    # "accessFlags":I
    .restart local v4    # "accessFlags":I
    :cond_a
    const-string v1, "Synthetic"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 507
    or-int/lit16 v1, v4, 0x1000

    move v4, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v4    # "accessFlags":I
    .restart local v1    # "accessFlags":I
    goto/16 :goto_2

    .line 508
    .end local v1    # "accessFlags":I
    .restart local v4    # "accessFlags":I
    :cond_b
    const-string v1, "SourceDebugExtension"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 509
    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    array-length v1, v1

    sub-int/2addr v1, v7

    if-gt v0, v1, :cond_c

    .line 512
    new-array v1, v0, [C

    .line 513
    invoke-direct {v8, v7, v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v25, v7

    move-object/from16 v24, v11

    move/from16 v41, v19

    move-object/from16 v19, v6

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v24    # "sourceDebugExtension":Ljava/lang/String;
    .local v1, "sourceDebugExtension":Ljava/lang/String;
    goto/16 :goto_2

    .line 510
    .end local v1    # "sourceDebugExtension":Ljava/lang/String;
    .restart local v24    # "sourceDebugExtension":Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 514
    :cond_d
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 515
    move v1, v7

    move/from16 v30, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v30    # "runtimeInvisibleAnnotationsOffset":I
    .local v1, "runtimeInvisibleAnnotationsOffset":I
    goto/16 :goto_2

    .line 516
    .end local v1    # "runtimeInvisibleAnnotationsOffset":I
    .restart local v30    # "runtimeInvisibleAnnotationsOffset":I
    :cond_e
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 517
    move v1, v7

    move/from16 v32, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v32    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v1, "runtimeInvisibleTypeAnnotationsOffset":I
    goto/16 :goto_2

    .line 518
    .end local v1    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v32    # "runtimeInvisibleTypeAnnotationsOffset":I
    :cond_f
    const-string v1, "Record"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 519
    move v1, v7

    .line 520
    .end local v36    # "recordOffset":I
    .local v1, "recordOffset":I
    const/high16 v25, 0x10000

    or-int v4, v4, v25

    move/from16 v36, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    goto/16 :goto_2

    .line 521
    .end local v1    # "recordOffset":I
    .restart local v36    # "recordOffset":I
    :cond_10
    const-string v1, "Module"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 522
    move v1, v7

    move/from16 v20, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v20    # "moduleOffset":I
    .local v1, "moduleOffset":I
    goto/16 :goto_2

    .line 523
    .end local v1    # "moduleOffset":I
    .restart local v20    # "moduleOffset":I
    :cond_11
    const-string v1, "ModuleMainClass"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 524
    invoke-virtual {v8, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v22    # "moduleMainClass":Ljava/lang/String;
    .local v1, "moduleMainClass":Ljava/lang/String;
    goto/16 :goto_2

    .line 525
    .end local v1    # "moduleMainClass":Ljava/lang/String;
    .restart local v22    # "moduleMainClass":Ljava/lang/String;
    :cond_12
    const-string v1, "ModulePackages"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 526
    move v1, v7

    move/from16 v21, v1

    move/from16 v25, v7

    move/from16 v41, v19

    move-object/from16 v1, v24

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move/from16 v42, v23

    move/from16 v23, v0

    move/from16 v0, v42

    .end local v21    # "modulePackagesOffset":I
    .local v1, "modulePackagesOffset":I
    goto/16 :goto_2

    .line 527
    .end local v1    # "modulePackagesOffset":I
    .restart local v21    # "modulePackagesOffset":I
    :cond_13
    const-string v1, "BootstrapMethods"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 529
    const/16 v25, -0x1

    const/16 v26, 0x0

    .line 530
    move/from16 v1, v23

    move/from16 v23, v0

    .end local v0    # "attributeLength":I
    .local v1, "runtimeVisibleAnnotationsOffset":I
    .local v23, "attributeLength":I
    move-object/from16 v0, p0

    move/from16 v38, v1

    move-object/from16 v12, v24

    .end local v1    # "runtimeVisibleAnnotationsOffset":I
    .end local v24    # "sourceDebugExtension":Ljava/lang/String;
    .local v12, "sourceDebugExtension":Ljava/lang/String;
    .local v38, "runtimeVisibleAnnotationsOffset":I
    move-object/from16 v1, p2

    move-object/from16 v24, v11

    move-object v11, v2

    .end local v2    # "sourceFile":Ljava/lang/String;
    .local v11, "sourceFile":Ljava/lang/String;
    .local v24, "context":Lnet/bytebuddy/jar/asm/Context;
    move-object v2, v6

    move/from16 v39, v3

    .end local v3    # "enclosingMethodOffset":I
    .local v39, "enclosingMethodOffset":I
    move v3, v7

    move/from16 v27, v4

    .end local v4    # "accessFlags":I
    .local v27, "accessFlags":I
    move/from16 v4, v23

    move/from16 v40, v5

    .end local v5    # "innerClassesOffset":I
    .local v40, "innerClassesOffset":I
    move-object v5, v13

    move/from16 v41, v19

    move-object/from16 v19, v6

    .end local v6    # "attributeName":Ljava/lang/String;
    .local v19, "attributeName":Ljava/lang/String;
    .local v41, "currentOffset":I
    move/from16 v6, v25

    move/from16 v25, v7

    .end local v7    # "currentAttributeOffset":I
    .local v25, "currentAttributeOffset":I
    move-object/from16 v7, v26

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    .line 538
    .local v0, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    move-object/from16 v6, v37

    .end local v37    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v6, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    iput-object v6, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 539
    move-object v1, v0

    move-object/from16 v37, v1

    move-object v2, v11

    move-object v1, v12

    move/from16 v4, v27

    move/from16 v0, v38

    move/from16 v3, v39

    move/from16 v5, v40

    .end local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v1, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    goto :goto_2

    .line 527
    .end local v1    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v12    # "sourceDebugExtension":Ljava/lang/String;
    .end local v25    # "currentAttributeOffset":I
    .end local v27    # "accessFlags":I
    .end local v38    # "runtimeVisibleAnnotationsOffset":I
    .end local v39    # "enclosingMethodOffset":I
    .end local v40    # "innerClassesOffset":I
    .end local v41    # "currentOffset":I
    .local v0, "attributeLength":I
    .restart local v2    # "sourceFile":Ljava/lang/String;
    .restart local v3    # "enclosingMethodOffset":I
    .restart local v4    # "accessFlags":I
    .restart local v5    # "innerClassesOffset":I
    .local v6, "attributeName":Ljava/lang/String;
    .restart local v7    # "currentAttributeOffset":I
    .local v11, "context":Lnet/bytebuddy/jar/asm/Context;
    .local v19, "currentOffset":I
    .local v23, "runtimeVisibleAnnotationsOffset":I
    .local v24, "sourceDebugExtension":Ljava/lang/String;
    .restart local v37    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :cond_14
    move/from16 v39, v3

    move/from16 v27, v4

    move/from16 v40, v5

    move/from16 v25, v7

    move/from16 v41, v19

    move/from16 v38, v23

    move-object/from16 v12, v24

    move/from16 v23, v0

    move-object/from16 v19, v6

    move-object/from16 v24, v11

    move-object/from16 v6, v37

    move-object v11, v2

    .end local v0    # "attributeLength":I
    .end local v2    # "sourceFile":Ljava/lang/String;
    .end local v3    # "enclosingMethodOffset":I
    .end local v4    # "accessFlags":I
    .end local v5    # "innerClassesOffset":I
    .end local v7    # "currentAttributeOffset":I
    .end local v37    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v6, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v11, "sourceFile":Ljava/lang/String;
    .restart local v12    # "sourceDebugExtension":Ljava/lang/String;
    .local v19, "attributeName":Ljava/lang/String;
    .local v23, "attributeLength":I
    .local v24, "context":Lnet/bytebuddy/jar/asm/Context;
    .restart local v25    # "currentAttributeOffset":I
    .restart local v27    # "accessFlags":I
    .restart local v38    # "runtimeVisibleAnnotationsOffset":I
    .restart local v39    # "enclosingMethodOffset":I
    .restart local v40    # "innerClassesOffset":I
    .restart local v41    # "currentOffset":I
    move-object v1, v12

    move/from16 v0, v38

    .line 541
    .end local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v11    # "sourceFile":Ljava/lang/String;
    .end local v12    # "sourceDebugExtension":Ljava/lang/String;
    .end local v27    # "accessFlags":I
    .end local v38    # "runtimeVisibleAnnotationsOffset":I
    .end local v39    # "enclosingMethodOffset":I
    .end local v40    # "innerClassesOffset":I
    .local v0, "runtimeVisibleAnnotationsOffset":I
    .local v1, "sourceDebugExtension":Ljava/lang/String;
    .restart local v2    # "sourceFile":Ljava/lang/String;
    .restart local v3    # "enclosingMethodOffset":I
    .restart local v4    # "accessFlags":I
    .restart local v5    # "innerClassesOffset":I
    .restart local v37    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_2
    add-int v7, v25, v23

    .line 479
    .end local v19    # "attributeName":Ljava/lang/String;
    .end local v23    # "attributeLength":I
    .end local v25    # "currentAttributeOffset":I
    .restart local v7    # "currentAttributeOffset":I
    add-int/lit8 v16, v16, -0x1

    move-object/from16 v12, p2

    move-object/from16 v11, v24

    move/from16 v6, v41

    goto/16 :goto_1

    .end local v24    # "context":Lnet/bytebuddy/jar/asm/Context;
    .end local v41    # "currentOffset":I
    .local v6, "currentOffset":I
    .local v11, "context":Lnet/bytebuddy/jar/asm/Context;
    :cond_15
    move/from16 v38, v0

    move-object v12, v1

    move/from16 v39, v3

    move/from16 v27, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move-object/from16 v24, v11

    move-object/from16 v6, v37

    move-object v11, v2

    .line 546
    .end local v0    # "runtimeVisibleAnnotationsOffset":I
    .end local v1    # "sourceDebugExtension":Ljava/lang/String;
    .end local v2    # "sourceFile":Ljava/lang/String;
    .end local v3    # "enclosingMethodOffset":I
    .end local v4    # "accessFlags":I
    .end local v5    # "innerClassesOffset":I
    .end local v16    # "i":I
    .end local v37    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v6, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v11, "sourceFile":Ljava/lang/String;
    .restart local v12    # "sourceDebugExtension":Ljava/lang/String;
    .restart local v24    # "context":Lnet/bytebuddy/jar/asm/Context;
    .restart local v27    # "accessFlags":I
    .restart local v38    # "runtimeVisibleAnnotationsOffset":I
    .restart local v39    # "enclosingMethodOffset":I
    .restart local v40    # "innerClassesOffset":I
    .restart local v41    # "currentOffset":I
    iget-object v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    const/4 v5, 0x1

    aget v0, v0, v5

    add-int/lit8 v0, v0, -0x7

    .line 547
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 546
    move-object/from16 v0, p1

    move/from16 v2, v27

    move-object v3, v14

    move-object/from16 v4, v17

    move/from16 v16, v7

    move v7, v5

    .end local v7    # "currentAttributeOffset":I
    .local v16, "currentAttributeOffset":I
    move-object v5, v15

    .end local v6    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v37    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 550
    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_17

    if-nez v11, :cond_16

    if-eqz v12, :cond_17

    .line 552
    :cond_16
    invoke-virtual {v9, v11, v12}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_17
    if-eqz v20, :cond_18

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readModuleAttributes(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;IILjava/lang/String;)V

    .line 562
    :cond_18
    move-object/from16 v0, v33

    .end local v33    # "nestHostClass":Ljava/lang/String;
    .local v0, "nestHostClass":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 563
    invoke-virtual {v9, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    .line 567
    :cond_19
    move/from16 v2, v39

    .end local v39    # "enclosingMethodOffset":I
    .local v2, "enclosingMethodOffset":I
    if-eqz v2, :cond_1c

    .line 568
    invoke-virtual {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "className":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 570
    .local v4, "methodIndex":I
    if-nez v4, :cond_1a

    const/4 v5, 0x0

    goto :goto_3

    :cond_1a
    iget-object v5, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    aget v5, v5, v4

    invoke-virtual {v8, v5, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 571
    .local v5, "name":Ljava/lang/String;
    :goto_3
    if-nez v4, :cond_1b

    const/4 v6, 0x0

    goto :goto_4

    :cond_1b
    iget-object v6, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    aget v6, v6, v4

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v8, v6, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, "type":Ljava/lang/String;
    :goto_4
    invoke-virtual {v9, v3, v5, v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "methodIndex":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_1c
    move/from16 v3, v38

    .end local v38    # "runtimeVisibleAnnotationsOffset":I
    .local v3, "runtimeVisibleAnnotationsOffset":I
    if-eqz v3, :cond_1d

    .line 577
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 578
    .local v4, "numAnnotations":I
    add-int/lit8 v5, v3, 0x2

    .line 579
    .local v5, "currentAnnotationOffset":I
    :goto_5
    add-int/lit8 v6, v4, -0x1

    .end local v4    # "numAnnotations":I
    .local v6, "numAnnotations":I
    if-lez v4, :cond_1d

    .line 581
    invoke-virtual {v8, v5, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x2

    .line 584
    nop

    .line 586
    invoke-virtual {v9, v4, v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 585
    invoke-direct {v8, v1, v5, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v5

    .line 590
    .end local v4    # "annotationDescriptor":Ljava/lang/String;
    move v4, v6

    goto :goto_5

    .line 594
    .end local v5    # "currentAnnotationOffset":I
    .end local v6    # "numAnnotations":I
    :cond_1d
    const/4 v1, 0x0

    move/from16 v4, v30

    .end local v30    # "runtimeInvisibleAnnotationsOffset":I
    .local v4, "runtimeInvisibleAnnotationsOffset":I
    if-eqz v4, :cond_1f

    .line 595
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 596
    .local v5, "numAnnotations":I
    add-int/lit8 v30, v4, 0x2

    move/from16 v6, v30

    .line 597
    .local v6, "currentAnnotationOffset":I
    :goto_6
    add-int/lit8 v23, v5, -0x1

    .end local v5    # "numAnnotations":I
    .local v23, "numAnnotations":I
    if-lez v5, :cond_1e

    .line 599
    invoke-virtual {v8, v6, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x2

    .line 602
    nop

    .line 604
    move-object/from16 v25, v0

    .end local v0    # "nestHostClass":Ljava/lang/String;
    .local v25, "nestHostClass":Ljava/lang/String;
    invoke-virtual {v9, v5, v1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 603
    invoke-direct {v8, v0, v6, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v6

    .line 608
    .end local v5    # "annotationDescriptor":Ljava/lang/String;
    move/from16 v5, v23

    move-object/from16 v0, v25

    goto :goto_6

    .line 597
    .end local v25    # "nestHostClass":Ljava/lang/String;
    .restart local v0    # "nestHostClass":Ljava/lang/String;
    :cond_1e
    move-object/from16 v25, v0

    .end local v0    # "nestHostClass":Ljava/lang/String;
    .restart local v25    # "nestHostClass":Ljava/lang/String;
    goto :goto_7

    .line 594
    .end local v6    # "currentAnnotationOffset":I
    .end local v23    # "numAnnotations":I
    .end local v25    # "nestHostClass":Ljava/lang/String;
    .restart local v0    # "nestHostClass":Ljava/lang/String;
    :cond_1f
    move-object/from16 v25, v0

    .line 612
    .end local v0    # "nestHostClass":Ljava/lang/String;
    .restart local v25    # "nestHostClass":Ljava/lang/String;
    :goto_7
    move/from16 v0, v31

    .end local v31    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v0, "runtimeVisibleTypeAnnotationsOffset":I
    if-eqz v0, :cond_21

    .line 613
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 614
    .local v5, "numAnnotations":I
    add-int/lit8 v31, v0, 0x2

    move/from16 v6, v31

    .line 615
    .restart local v6    # "currentAnnotationOffset":I
    :goto_8
    add-int/lit8 v23, v5, -0x1

    .end local v5    # "numAnnotations":I
    .restart local v23    # "numAnnotations":I
    if-lez v5, :cond_20

    .line 617
    move-object/from16 v5, v24

    .end local v24    # "context":Lnet/bytebuddy/jar/asm/Context;
    .local v5, "context":Lnet/bytebuddy/jar/asm/Context;
    invoke-direct {v8, v5, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v6

    .line 619
    invoke-virtual {v8, v6, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x2

    .line 622
    iget v7, v5, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v28, v0

    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .local v28, "runtimeVisibleTypeAnnotationsOffset":I
    iget-object v0, v5, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 624
    move/from16 v39, v2

    const/4 v2, 0x1

    .end local v2    # "enclosingMethodOffset":I
    .restart local v39    # "enclosingMethodOffset":I
    invoke-virtual {v9, v7, v0, v1, v2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 623
    invoke-direct {v8, v0, v6, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v6

    .line 632
    .end local v1    # "annotationDescriptor":Ljava/lang/String;
    move/from16 v5, v23

    move/from16 v0, v28

    move/from16 v2, v39

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_8

    .line 615
    .end local v5    # "context":Lnet/bytebuddy/jar/asm/Context;
    .end local v28    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v39    # "enclosingMethodOffset":I
    .restart local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v2    # "enclosingMethodOffset":I
    .restart local v24    # "context":Lnet/bytebuddy/jar/asm/Context;
    :cond_20
    move/from16 v28, v0

    move/from16 v39, v2

    move-object/from16 v5, v24

    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v2    # "enclosingMethodOffset":I
    .end local v24    # "context":Lnet/bytebuddy/jar/asm/Context;
    .restart local v5    # "context":Lnet/bytebuddy/jar/asm/Context;
    .restart local v28    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v39    # "enclosingMethodOffset":I
    goto :goto_9

    .line 612
    .end local v5    # "context":Lnet/bytebuddy/jar/asm/Context;
    .end local v6    # "currentAnnotationOffset":I
    .end local v23    # "numAnnotations":I
    .end local v28    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v39    # "enclosingMethodOffset":I
    .restart local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v2    # "enclosingMethodOffset":I
    .restart local v24    # "context":Lnet/bytebuddy/jar/asm/Context;
    :cond_21
    move/from16 v28, v0

    move/from16 v39, v2

    move-object/from16 v5, v24

    .line 636
    .end local v0    # "runtimeVisibleTypeAnnotationsOffset":I
    .end local v2    # "enclosingMethodOffset":I
    .end local v24    # "context":Lnet/bytebuddy/jar/asm/Context;
    .restart local v5    # "context":Lnet/bytebuddy/jar/asm/Context;
    .restart local v28    # "runtimeVisibleTypeAnnotationsOffset":I
    .restart local v39    # "enclosingMethodOffset":I
    :goto_9
    move/from16 v0, v32

    .end local v32    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v0, "runtimeInvisibleTypeAnnotationsOffset":I
    if-eqz v0, :cond_23

    .line 637
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 638
    .local v1, "numAnnotations":I
    add-int/lit8 v32, v0, 0x2

    move/from16 v2, v32

    .line 639
    .local v2, "currentAnnotationOffset":I
    :goto_a
    add-int/lit8 v6, v1, -0x1

    .end local v1    # "numAnnotations":I
    .local v6, "numAnnotations":I
    if-lez v1, :cond_22

    .line 641
    invoke-direct {v8, v5, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v1

    .line 643
    .end local v2    # "currentAnnotationOffset":I
    .local v1, "currentAnnotationOffset":I
    invoke-virtual {v8, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "annotationDescriptor":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    .line 646
    iget v7, v5, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v23, v0

    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .local v23, "runtimeInvisibleTypeAnnotationsOffset":I
    iget-object v0, v5, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 648
    move/from16 v38, v3

    const/4 v3, 0x0

    .end local v3    # "runtimeVisibleAnnotationsOffset":I
    .restart local v38    # "runtimeVisibleAnnotationsOffset":I
    invoke-virtual {v9, v7, v0, v2, v3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 647
    const/4 v7, 0x1

    invoke-direct {v8, v0, v1, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    .line 656
    .end local v1    # "currentAnnotationOffset":I
    .local v2, "currentAnnotationOffset":I
    move v1, v6

    move/from16 v0, v23

    move/from16 v3, v38

    goto :goto_a

    .line 639
    .end local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    .end local v38    # "runtimeVisibleAnnotationsOffset":I
    .restart local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v3    # "runtimeVisibleAnnotationsOffset":I
    :cond_22
    move/from16 v23, v0

    move/from16 v38, v3

    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .end local v3    # "runtimeVisibleAnnotationsOffset":I
    .restart local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v38    # "runtimeVisibleAnnotationsOffset":I
    goto :goto_b

    .line 636
    .end local v2    # "currentAnnotationOffset":I
    .end local v6    # "numAnnotations":I
    .end local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    .end local v38    # "runtimeVisibleAnnotationsOffset":I
    .restart local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v3    # "runtimeVisibleAnnotationsOffset":I
    :cond_23
    move/from16 v23, v0

    move/from16 v38, v3

    .line 660
    .end local v0    # "runtimeInvisibleTypeAnnotationsOffset":I
    .end local v3    # "runtimeVisibleAnnotationsOffset":I
    .restart local v23    # "runtimeInvisibleTypeAnnotationsOffset":I
    .restart local v38    # "runtimeVisibleAnnotationsOffset":I
    :goto_b
    move-object/from16 v0, v37

    .end local v37    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v0, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_c
    if-eqz v0, :cond_24

    .line 662
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 663
    .local v1, "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    const/4 v2, 0x0

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 664
    invoke-virtual {v9, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 665
    move-object v0, v1

    .line 666
    .end local v1    # "nextAttribute":Lnet/bytebuddy/jar/asm/Attribute;
    goto :goto_c

    .line 669
    :cond_24
    move/from16 v1, v34

    .end local v34    # "nestMembersOffset":I
    .local v1, "nestMembersOffset":I
    if-eqz v1, :cond_25

    .line 670
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 671
    .local v2, "numberOfNestMembers":I
    add-int/lit8 v34, v1, 0x2

    move/from16 v3, v34

    .line 672
    .local v3, "currentNestMemberOffset":I
    :goto_d
    add-int/lit8 v6, v2, -0x1

    .end local v2    # "numberOfNestMembers":I
    .local v6, "numberOfNestMembers":I
    if-lez v2, :cond_25

    .line 673
    invoke-virtual {v8, v3, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    .line 674
    add-int/lit8 v3, v3, 0x2

    move v2, v6

    goto :goto_d

    .line 679
    .end local v3    # "currentNestMemberOffset":I
    .end local v6    # "numberOfNestMembers":I
    :cond_25
    move/from16 v2, v35

    .end local v35    # "permittedSubclassesOffset":I
    .local v2, "permittedSubclassesOffset":I
    if-eqz v2, :cond_26

    .line 680
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 681
    .local v3, "numberOfPermittedSubclasses":I
    add-int/lit8 v35, v2, 0x2

    move/from16 v6, v35

    .line 682
    .local v6, "currentPermittedSubclassesOffset":I
    :goto_e
    add-int/lit8 v7, v3, -0x1

    .end local v3    # "numberOfPermittedSubclasses":I
    .local v7, "numberOfPermittedSubclasses":I
    if-lez v3, :cond_26

    .line 683
    nop

    .line 684
    invoke-virtual {v8, v6, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-virtual {v9, v3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    .line 685
    add-int/lit8 v6, v6, 0x2

    move v3, v7

    goto :goto_e

    .line 690
    .end local v6    # "currentPermittedSubclassesOffset":I
    .end local v7    # "numberOfPermittedSubclasses":I
    :cond_26
    move/from16 v3, v40

    .end local v40    # "innerClassesOffset":I
    .local v3, "innerClassesOffset":I
    if-eqz v3, :cond_28

    .line 691
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 692
    .local v6, "numberOfClasses":I
    add-int/lit8 v7, v3, 0x2

    .line 693
    .local v7, "currentClassesOffset":I
    :goto_f
    add-int/lit8 v19, v6, -0x1

    .end local v6    # "numberOfClasses":I
    .local v19, "numberOfClasses":I
    if-lez v6, :cond_27

    .line 694
    nop

    .line 695
    invoke-virtual {v8, v7, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v0

    .end local v0    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .local v24, "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    add-int/lit8 v0, v7, 0x2

    .line 696
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    move/from16 v26, v1

    .end local v1    # "nestMembersOffset":I
    .local v26, "nestMembersOffset":I
    add-int/lit8 v1, v7, 0x4

    .line 697
    invoke-virtual {v8, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v2

    .end local v2    # "permittedSubclassesOffset":I
    .local v29, "permittedSubclassesOffset":I
    add-int/lit8 v2, v7, 0x6

    .line 698
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 694
    invoke-virtual {v9, v6, v0, v1, v2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 699
    add-int/lit8 v7, v7, 0x8

    move/from16 v6, v19

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v29

    goto :goto_f

    .line 693
    .end local v24    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v26    # "nestMembersOffset":I
    .end local v29    # "permittedSubclassesOffset":I
    .restart local v0    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v1    # "nestMembersOffset":I
    .restart local v2    # "permittedSubclassesOffset":I
    :cond_27
    move-object/from16 v24, v0

    move/from16 v26, v1

    move/from16 v29, v2

    .end local v0    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v1    # "nestMembersOffset":I
    .end local v2    # "permittedSubclassesOffset":I
    .restart local v24    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v26    # "nestMembersOffset":I
    .restart local v29    # "permittedSubclassesOffset":I
    goto :goto_10

    .line 690
    .end local v7    # "currentClassesOffset":I
    .end local v19    # "numberOfClasses":I
    .end local v24    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v26    # "nestMembersOffset":I
    .end local v29    # "permittedSubclassesOffset":I
    .restart local v0    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v1    # "nestMembersOffset":I
    .restart local v2    # "permittedSubclassesOffset":I
    :cond_28
    move-object/from16 v24, v0

    move/from16 v26, v1

    move/from16 v29, v2

    .line 704
    .end local v0    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .end local v1    # "nestMembersOffset":I
    .end local v2    # "permittedSubclassesOffset":I
    .restart local v24    # "attributes":Lnet/bytebuddy/jar/asm/Attribute;
    .restart local v26    # "nestMembersOffset":I
    .restart local v29    # "permittedSubclassesOffset":I
    :goto_10
    move/from16 v0, v36

    .end local v36    # "recordOffset":I
    .local v0, "recordOffset":I
    if-eqz v0, :cond_2a

    .line 705
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 706
    .local v1, "recordComponentsCount":I
    add-int/lit8 v36, v0, 0x2

    move/from16 v0, v36

    .line 707
    :goto_11
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "recordComponentsCount":I
    .local v2, "recordComponentsCount":I
    if-lez v1, :cond_29

    .line 708
    invoke-direct {v8, v9, v5, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readRecordComponent(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    move v1, v2

    goto :goto_11

    .line 707
    :cond_29
    move/from16 v36, v0

    goto :goto_12

    .line 704
    .end local v2    # "recordComponentsCount":I
    :cond_2a
    move/from16 v36, v0

    .line 713
    .end local v0    # "recordOffset":I
    .restart local v36    # "recordOffset":I
    :goto_12
    move/from16 v0, v41

    .end local v41    # "currentOffset":I
    .local v0, "currentOffset":I
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 714
    .local v1, "fieldsCount":I
    add-int/lit8 v6, v0, 0x2

    .line 715
    .end local v0    # "currentOffset":I
    .local v6, "currentOffset":I
    :goto_13
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "fieldsCount":I
    .local v0, "fieldsCount":I
    if-lez v1, :cond_2b

    .line 716
    invoke-direct {v8, v9, v5, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readField(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v6

    move v1, v0

    goto :goto_13

    .line 718
    :cond_2b
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 719
    .local v1, "methodsCount":I
    add-int/lit8 v6, v6, 0x2

    .line 720
    :goto_14
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "methodsCount":I
    .local v2, "methodsCount":I
    if-lez v1, :cond_2c

    .line 721
    invoke-direct {v8, v9, v5, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readMethod(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v6

    move v1, v2

    goto :goto_14

    .line 725
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    .line 726
    return-void
.end method

.method public getAccess()I
    .locals 1

    .line 340
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 351
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getFirstAttributeOffset()I
    .locals 5

    .line 3407
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 3410
    .local v1, "currentOffset":I
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 3411
    .local v0, "fieldsCount":I
    add-int/lit8 v1, v1, 0x2

    .line 3413
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "fieldsCount":I
    .local v2, "fieldsCount":I
    if-lez v0, :cond_1

    .line 3417
    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 3418
    .local v0, "attributesCount":I
    add-int/lit8 v1, v1, 0x8

    .line 3420
    :goto_1
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "attributesCount":I
    .local v3, "attributesCount":I
    if-lez v0, :cond_0

    .line 3425
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    move v0, v3

    goto :goto_1

    .line 3427
    .end local v3    # "attributesCount":I
    :cond_0
    move v0, v2

    goto :goto_0

    .line 3430
    :cond_1
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 3431
    .local v0, "methodsCount":I
    add-int/lit8 v1, v1, 0x2

    .line 3432
    :goto_2
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "methodsCount":I
    .local v3, "methodsCount":I
    if-lez v0, :cond_3

    .line 3433
    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 3434
    .local v0, "attributesCount":I
    add-int/lit8 v1, v1, 0x8

    .line 3435
    :goto_3
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "attributesCount":I
    .local v4, "attributesCount":I
    if-lez v0, :cond_2

    .line 3436
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    move v0, v4

    goto :goto_3

    .line 3438
    .end local v4    # "attributesCount":I
    :cond_2
    move v0, v3

    goto :goto_2

    .line 3441
    :cond_3
    add-int/lit8 v0, v1, 0x2

    return v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    .line 375
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    .line 376
    .local v0, "currentOffset":I
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 377
    .local v1, "interfacesCount":I
    new-array v2, v1, [Ljava/lang/String;

    .line 378
    .local v2, "interfaces":[Ljava/lang/String;
    if-lez v1, :cond_0

    .line 379
    iget v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    new-array v3, v3, [C

    .line 380
    .local v3, "charBuffer":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 381
    add-int/lit8 v0, v0, 0x2

    .line 382
    invoke-virtual {p0, v0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    .end local v3    # "charBuffer":[C
    .end local v4    # "i":I
    :cond_0
    return-object v2
.end method

.method public getItem(I)I
    .locals 1
    .param p1, "constantPoolEntryIndex"    # I

    .line 3539
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    aget v0, v0, p1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 3525
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    .line 3550
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

    .line 363
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 3561
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "charBuffer"    # [C

    .line 3718
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 16
    .param p1, "constantPoolEntryIndex"    # I
    .param p2, "charBuffer"    # [C

    .line 3797
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    aget v2, v2, p1

    .line 3798
    .local v2, "cpInfoOffset":I
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3826
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 3824
    :pswitch_1
    invoke-direct/range {p0 .. p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConstantDynamic(I[C)Lnet/bytebuddy/jar/asm/ConstantDynamic;

    move-result-object v3

    return-object v3

    .line 3812
    :pswitch_2
    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    return-object v3

    .line 3814
    :pswitch_3
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v3

    .line 3815
    .local v3, "referenceKind":I
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v10, v4, v5

    .line 3816
    .local v10, "referenceCpInfoOffset":I
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, v10, 0x2

    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v11, v4, v5

    .line 3817
    .local v11, "nameAndTypeCpInfoOffset":I
    invoke-virtual {v0, v10, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v12

    .line 3818
    .local v12, "owner":Ljava/lang/String;
    invoke-virtual {v0, v11, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 3819
    .local v13, "name":Ljava/lang/String;
    add-int/lit8 v4, v11, 0x2

    invoke-virtual {v0, v4, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 3820
    .local v14, "descriptor":Ljava/lang/String;
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v5, v10, -0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v9, v4

    .line 3822
    .local v9, "isInterface":Z
    new-instance v15, Lnet/bytebuddy/jar/asm/Handle;

    move-object v4, v15

    move v5, v3

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v15

    .line 3810
    .end local v3    # "referenceKind":I
    .end local v9    # "isInterface":Z
    .end local v10    # "referenceCpInfoOffset":I
    .end local v11    # "nameAndTypeCpInfoOffset":I
    .end local v12    # "owner":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3808
    :pswitch_5
    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    return-object v3

    .line 3806
    :pswitch_6
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 3804
    :pswitch_7
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 3802
    :pswitch_8
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 3800
    :pswitch_9
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 3596
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    .line 3597
    .local v0, "classBuffer":[B
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

.method protected readLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;
    .locals 1
    .param p1, "bytecodeOffset"    # I
    .param p2, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 2656
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2657
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    aput-object v0, p2, p1

    .line 2659
    :cond_0
    aget-object v0, p2, p1

    return-object v0
.end method

.method public readLong(I)J
    .locals 6
    .param p1, "offset"    # I

    .line 3611
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 3612
    .local v0, "l1":J
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 3613
    .local v2, "l0":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method public readModule(I[C)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "charBuffer"    # [C

    .line 3733
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readPackage(I[C)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "charBuffer"    # [C

    .line 3748
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readShort(I)S
    .locals 3
    .param p1, "offset"    # I

    .line 3584
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    .line 3585
    .local v0, "classBuffer":[B
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
    .locals 2
    .param p1, "offset"    # I
    .param p2, "charBuffer"    # [C

    .line 3629
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 3630
    .local v0, "constantPoolEntryIndex":I
    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3633
    :cond_0
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3631
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readUnsignedShort(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 3572
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    .line 3573
    .local v0, "classBuffer":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method final readUtf(I[C)Ljava/lang/String;
    .locals 5
    .param p1, "constantPoolEntryIndex"    # I
    .param p2, "charBuffer"    # [C

    .line 3646
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    aget-object v1, v0, p1

    .line 3647
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3648
    return-object v1

    .line 3650
    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    aget v2, v2, p1

    .line 3651
    .local v2, "cpInfoOffset":I
    add-int/lit8 v3, v2, 0x2

    .line 3652
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    .line 3651
    return-object v3
.end method
