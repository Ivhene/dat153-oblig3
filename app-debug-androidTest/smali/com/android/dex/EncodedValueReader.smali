.class public final Lcom/android/dex/EncodedValueReader;
.super Ljava/lang/Object;
.source "EncodedValueReader.java"


# static fields
.field public static final ENCODED_ANNOTATION:I = 0x1d

.field public static final ENCODED_ARRAY:I = 0x1c

.field public static final ENCODED_BOOLEAN:I = 0x1f

.field public static final ENCODED_BYTE:I = 0x0

.field public static final ENCODED_CHAR:I = 0x3

.field public static final ENCODED_DOUBLE:I = 0x11

.field public static final ENCODED_ENUM:I = 0x1b

.field public static final ENCODED_FIELD:I = 0x19

.field public static final ENCODED_FLOAT:I = 0x10

.field public static final ENCODED_INT:I = 0x4

.field public static final ENCODED_LONG:I = 0x6

.field public static final ENCODED_METHOD:I = 0x1a

.field public static final ENCODED_METHOD_HANDLE:I = 0x16

.field public static final ENCODED_METHOD_TYPE:I = 0x15

.field public static final ENCODED_NULL:I = 0x1e

.field public static final ENCODED_SHORT:I = 0x2

.field public static final ENCODED_STRING:I = 0x17

.field public static final ENCODED_TYPE:I = 0x18

.field private static final MUST_READ:I = -0x1


# instance fields
.field private annotationType:I

.field private arg:I

.field protected final in:Lcom/android/dex/util/ByteInput;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/dex/EncodedValue;)V
    .locals 1
    .param p1, "in"    # Lcom/android/dex/EncodedValue;

    .line 57
    invoke-virtual {p1}, Lcom/android/dex/EncodedValue;->asByteInput()Lcom/android/dex/util/ByteInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/dex/EncodedValue;I)V
    .locals 1
    .param p1, "in"    # Lcom/android/dex/EncodedValue;
    .param p2, "knownType"    # I

    .line 72
    invoke-virtual {p1}, Lcom/android/dex/EncodedValue;->asByteInput()Lcom/android/dex/util/ByteInput;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/dex/util/ByteInput;)V
    .locals 1
    .param p1, "in"    # Lcom/android/dex/util/ByteInput;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 53
    iput-object p1, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/dex/util/ByteInput;I)V
    .locals 1
    .param p1, "in"    # Lcom/android/dex/util/ByteInput;
    .param p2, "knownType"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 67
    iput-object p1, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    .line 68
    iput p2, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 69
    return-void
.end method

.method private checkType(I)V
    .locals 3
    .param p1, "expected"    # I

    .line 302
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 306
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected %x but was %x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAnnotationType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/dex/EncodedValueReader;->annotationType:I

    return v0
.end method

.method public peek()I
    .locals 2

    .line 79
    iget v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-interface {v0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 81
    .local v0, "argAndType":I
    and-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 82
    and-int/lit16 v1, v0, 0xe0

    shr-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    .line 84
    .end local v0    # "argAndType":I
    :cond_0
    iget v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    return v0
.end method

.method public readAnnotation()I
    .locals 1

    .line 117
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 119
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->annotationType:I

    .line 120
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readAnnotationName()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readArray()I
    .locals 1

    .line 98
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 100
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readBoolean()Z
    .locals 1

    .line 226
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 228
    iget v0, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 2

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 139
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 3

    .line 149
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 151
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 3

    .line 173
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 175
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedLong(Lcom/android/dex/util/ByteInput;IZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 3

    .line 209
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 211
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readField()I
    .locals 3

    .line 203
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 205
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readFloat()F
    .locals 3

    .line 167
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 169
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    .line 155
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 157
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 161
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 163
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedLong(Lcom/android/dex/util/ByteInput;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readMethod()I
    .locals 3

    .line 215
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 217
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readMethodHandle()I
    .locals 3

    .line 185
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 187
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readMethodType()I
    .locals 3

    .line 179
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 181
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readNull()V
    .locals 1

    .line 221
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 223
    return-void
.end method

.method public readShort()S
    .locals 2

    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 145
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/android/dex/EncodedValueCodec;->readSignedInt(Lcom/android/dex/util/ByteInput;I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readString()I
    .locals 3

    .line 191
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 193
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readType()I
    .locals 3

    .line 197
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/android/dex/EncodedValueReader;->checkType(I)V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dex/EncodedValueReader;->type:I

    .line 199
    iget-object v0, p0, Lcom/android/dex/EncodedValueReader;->in:Lcom/android/dex/util/ByteInput;

    iget v1, p0, Lcom/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public skipValue()V
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 297
    :pswitch_0
    new-instance v0, Lcom/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dex/EncodedValueReader;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readBoolean()Z

    .line 295
    goto/16 :goto_2

    .line 291
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readNull()V

    .line 292
    goto :goto_2

    .line 285
    :pswitch_3
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    .line 287
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    goto :goto_2

    .line 280
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readArray()I

    move-result v1

    .restart local v1    # "size":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    goto :goto_2

    .line 274
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readEnum()I

    .line 275
    goto :goto_2

    .line 277
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readMethod()I

    .line 278
    goto :goto_2

    .line 271
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readField()I

    .line 272
    goto :goto_2

    .line 268
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readType()I

    .line 269
    goto :goto_2

    .line 265
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readString()I

    .line 266
    goto :goto_2

    .line 262
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readMethodHandle()I

    .line 263
    goto :goto_2

    .line 259
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readMethodType()I

    .line 260
    goto :goto_2

    .line 256
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readDouble()D

    .line 257
    goto :goto_2

    .line 253
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readFloat()F

    .line 254
    goto :goto_2

    .line 250
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readLong()J

    .line 251
    goto :goto_2

    .line 247
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readInt()I

    .line 248
    goto :goto_2

    .line 244
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readChar()C

    .line 245
    goto :goto_2

    .line 241
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readShort()S

    .line 242
    goto :goto_2

    .line 238
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/dex/EncodedValueReader;->readByte()B

    .line 239
    nop

    .line 299
    :goto_2
    return-void

    nop

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
