.class final Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;
.super Ljava/lang/Object;
.source "IndexMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/merge/IndexMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EncodedValueTransformer"
.end annotation


# instance fields
.field private final out:Lcom/android/dex/util/ByteOutput;

.field final synthetic this$0:Lcom/android/dx/merge/IndexMap;


# direct methods
.method public constructor <init>(Lcom/android/dx/merge/IndexMap;Lcom/android/dex/util/ByteOutput;)V
    .locals 0
    .param p2, "out"    # Lcom/android/dex/util/ByteOutput;

    .line 285
    iput-object p1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/android/dex/EncodedValueReader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;
    .param p1, "x1"    # Lcom/android/dex/EncodedValueReader;

    .line 282
    invoke-direct {p0, p1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->transformArray(Lcom/android/dex/EncodedValueReader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/android/dex/EncodedValueReader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;
    .param p1, "x1"    # Lcom/android/dex/EncodedValueReader;

    .line 282
    invoke-direct {p0, p1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/android/dex/EncodedValueReader;)V

    return-void
.end method

.method private transformAnnotation(Lcom/android/dex/EncodedValueReader;)V
    .locals 5
    .param p1, "reader"    # Lcom/android/dex/EncodedValueReader;

    .line 368
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v0

    .line 369
    .local v0, "fieldCount":I
    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v2, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/dex/Leb128;->writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V

    .line 370
    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    invoke-static {v1, v0}, Lcom/android/dex/Leb128;->writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V

    .line 371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v3, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/dex/Leb128;->writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->transform(Lcom/android/dex/EncodedValueReader;)V

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private transformArray(Lcom/android/dex/EncodedValueReader;)V
    .locals 2
    .param p1, "reader"    # Lcom/android/dex/EncodedValueReader;

    .line 378
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readArray()I

    move-result v0

    .line 379
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    invoke-static {v1, v0}, Lcom/android/dex/Leb128;->writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->transform(Lcom/android/dex/EncodedValueReader;)V

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private writeTypeAndArg(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg"    # I

    .line 386
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    shl-int/lit8 v1, p2, 0x5

    or-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 387
    return-void
.end method


# virtual methods
.method public transform(Lcom/android/dex/EncodedValueReader;)V
    .locals 4
    .param p1, "reader"    # Lcom/android/dex/EncodedValueReader;

    .line 291
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 363
    :pswitch_0
    new-instance v0, Lcom/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readBoolean()Z

    move-result v0

    .line 360
    .local v0, "value":Z
    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 361
    goto/16 :goto_0

    .line 355
    .end local v0    # "value":Z
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readNull()V

    .line 356
    const/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 357
    goto/16 :goto_0

    .line 351
    :pswitch_3
    const/16 v0, 0x1d

    invoke-direct {p0, v0, v1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 352
    invoke-direct {p0, p1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/android/dex/EncodedValueReader;)V

    .line 353
    goto/16 :goto_0

    .line 347
    :pswitch_4
    const/16 v0, 0x1c

    invoke-direct {p0, v0, v1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    .line 348
    invoke-direct {p0, p1}, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->transformArray(Lcom/android/dex/EncodedValueReader;)V

    .line 349
    goto/16 :goto_0

    .line 339
    :pswitch_5
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    .line 340
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readEnum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v1

    int-to-long v1, v1

    .line 339
    const/16 v3, 0x1b

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 341
    goto/16 :goto_0

    .line 343
    :pswitch_6
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    .line 344
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v1

    int-to-long v1, v1

    .line 343
    const/16 v3, 0x1a

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 345
    goto/16 :goto_0

    .line 335
    :pswitch_7
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    .line 336
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readField()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v1

    int-to-long v1, v1

    .line 335
    const/16 v3, 0x19

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 337
    goto/16 :goto_0

    .line 331
    :pswitch_8
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    .line 332
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v1

    int-to-long v1, v1

    .line 331
    const/16 v3, 0x18

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 333
    goto/16 :goto_0

    .line 327
    :pswitch_9
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    .line 328
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readString()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v1

    int-to-long v1, v1

    .line 327
    const/16 v3, 0x17

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 329
    goto/16 :goto_0

    .line 321
    :pswitch_a
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    .line 324
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readMethodHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dx/merge/IndexMap;->adjustMethodHandle(I)I

    move-result v1

    int-to-long v1, v1

    .line 321
    const/16 v3, 0x16

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 325
    goto/16 :goto_0

    .line 317
    :pswitch_b
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    iget-object v1, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->this$0:Lcom/android/dx/merge/IndexMap;

    .line 318
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readMethodType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dx/merge/IndexMap;->adjustProto(I)I

    move-result v1

    int-to-long v1, v1

    .line 317
    const/16 v3, 0x15

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 319
    goto :goto_0

    .line 313
    :pswitch_c
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    .line 314
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 313
    const/16 v3, 0x11

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 315
    goto :goto_0

    .line 309
    :pswitch_d
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 310
    .local v0, "longBits":J
    iget-object v2, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    const/16 v3, 0x10

    invoke-static {v2, v3, v0, v1}, Lcom/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 311
    goto :goto_0

    .line 302
    .end local v0    # "longBits":J
    :pswitch_e
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readLong()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 303
    goto :goto_0

    .line 299
    :pswitch_f
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readInt()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 300
    goto :goto_0

    .line 305
    :pswitch_10
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readChar()C

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x3

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 306
    goto :goto_0

    .line 296
    :pswitch_11
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readShort()S

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 297
    goto :goto_0

    .line 293
    :pswitch_12
    iget-object v0, p0, Lcom/android/dx/merge/IndexMap$EncodedValueTransformer;->out:Lcom/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readByte()B

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V

    .line 294
    nop

    .line 365
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method
