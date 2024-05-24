.class public Lorg/checkerframework/org/objectweb/asmx/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field beginStackSize:I

.field line:I

.field maxStackSize:I

.field next:Lorg/checkerframework/org/objectweb/asmx/Label;

.field position:I

.field pushed:Z

.field private referenceCount:I

.field resized:Z

.field resolved:Z

.field private srcAndRefPositions:[I

.field successors:Lorg/checkerframework/org/objectweb/asmx/Edge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method private addReference(II)V
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "referencePosition"    # I

    .line 204
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->srcAndRefPositions:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 205
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->srcAndRefPositions:[I

    .line 207
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->referenceCount:I

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->srcAndRefPositions:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 208
    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 209
    .local v0, "a":[I
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->srcAndRefPositions:[I

    .line 216
    .end local v0    # "a":[I
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->srcAndRefPositions:[I

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->referenceCount:I

    aput p1, v0, v1

    .line 217
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->referenceCount:I

    aput p2, v0, v2

    .line 218
    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 2

    .line 144
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->resolved:Z

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    return v0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method put(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;IZ)V
    .locals 3
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .param p2, "out"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .param p3, "source"    # I
    .param p4, "wideOffset"    # Z

    .line 171
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->resolved:Z

    if-eqz v0, :cond_1

    .line 172
    if-eqz p4, :cond_0

    .line 173
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_0

    .line 175
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, -0x1

    if-eqz p4, :cond_2

    .line 179
    rsub-int/lit8 v1, p3, -0x1

    iget v2, p2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/Label;->addReference(II)V

    .line 180
    invoke-virtual {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_0

    .line 182
    :cond_2
    iget v1, p2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-direct {p0, p3, v1}, Lorg/checkerframework/org/objectweb/asmx/Label;->addReference(II)V

    .line 183
    invoke-virtual {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 186
    :goto_0
    return-void
.end method

.method resolve(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;I[B)Z
    .locals 9
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .param p2, "position"    # I
    .param p3, "data"    # [B

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "needUpdate":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->resolved:Z

    .line 246
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->referenceCount:I

    if-ge v2, v3, :cond_4

    .line 249
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Label;->srcAndRefPositions:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget v2, v3, v2

    .line 250
    .local v2, "source":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v3, v3, v4

    .line 252
    .local v3, "reference":I
    if-ltz v2, :cond_3

    .line 253
    sub-int v4, p2, v2

    .line 254
    .local v4, "offset":I
    const/16 v6, -0x8000

    if-lt v4, v6, :cond_0

    const/16 v6, 0x7fff

    if-le v4, v6, :cond_2

    .line 264
    :cond_0
    add-int/lit8 v6, v3, -0x1

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    .line 265
    .local v6, "opcode":I
    const/16 v7, 0xa8

    if-gt v6, v7, :cond_1

    .line 267
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v6, 0x31

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    goto :goto_1

    .line 270
    :cond_1
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v6, 0x14

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 272
    :goto_1
    const/4 v0, 0x1

    .line 274
    .end local v6    # "opcode":I
    :cond_2
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "reference":I
    .local v6, "reference":I
    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v3

    .line 275
    int-to-byte v3, v4

    aput-byte v3, p3, v6

    goto :goto_2

    .line 277
    .end local v4    # "offset":I
    .end local v6    # "reference":I
    .restart local v3    # "reference":I
    :cond_3
    add-int v4, p2, v2

    add-int/2addr v4, v1

    .line 278
    .restart local v4    # "offset":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "reference":I
    .restart local v6    # "reference":I
    ushr-int/lit8 v7, v4, 0x18

    int-to-byte v7, v7

    aput-byte v7, p3, v3

    .line 279
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "reference":I
    .restart local v3    # "reference":I
    ushr-int/lit8 v7, v4, 0x10

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 280
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "reference":I
    .restart local v6    # "reference":I
    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v3

    .line 281
    int-to-byte v3, v4

    aput-byte v3, p3, v6

    .line 283
    .end local v2    # "source":I
    .end local v4    # "offset":I
    .end local v6    # "reference":I
    :goto_2
    move v2, v5

    goto :goto_0

    .line 284
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
