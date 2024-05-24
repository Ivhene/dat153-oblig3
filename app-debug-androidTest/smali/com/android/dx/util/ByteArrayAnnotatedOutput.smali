.class public final Lcom/android/dx/util/ByteArrayAnnotatedOutput;
.super Ljava/lang/Object;
.source "ByteArrayAnnotatedOutput.java"

# interfaces
.implements Lcom/android/dx/util/AnnotatedOutput;
.implements Lcom/android/dex/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private annotationWidth:I

.field private annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private cursor:I

.field private data:[B

.field private hexCols:I

.field private final stretchy:Z

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>(I)V

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 97
    new-array v0, p1, [B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>([BZ)V

    .line 98
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>([BZ)V

    .line 80
    return-void
.end method

.method private constructor <init>([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "stretchy"    # Z

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-eqz p1, :cond_0

    .line 111
    iput-boolean p2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    .line 112
    iput-object p1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 114
    iput-boolean v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    .line 116
    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    .line 117
    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    .line 118
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "desiredSize"    # I

    .line 560
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 561
    mul-int/lit8 v1, p1, 0x2

    add-int/lit16 v1, v1, 0x3e8

    new-array v1, v1, [B

    .line 562
    .local v1, "newData":[B
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    iput-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    .line 565
    .end local v1    # "newData":[B
    :cond_0
    return-void
.end method

.method private static throwBounds()V
    .locals 2

    .line 550
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public alignTo(I)V
    .locals 5
    .param p1, "alignment"    # I

    .line 343
    add-int/lit8 v0, p1, -0x1

    .line 345
    .local v0, "mask":I
    if-ltz p1, :cond_2

    and-int v1, v0, p1

    if-nez v1, :cond_2

    .line 349
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/2addr v1, v0

    not-int v2, v0

    and-int/2addr v1, v2

    .line 351
    .local v1, "end":I
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_0

    .line 352
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 354
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    .line 355
    return-void

    .line 361
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    iget v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 363
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 364
    return-void

    .line 346
    .end local v1    # "end":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bogus alignment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public annotate(ILjava/lang/String;)V
    .locals 6
    .param p1, "amt"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    .line 398
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 399
    .local v0, "asz":I
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    move-result v1

    .line 402
    .local v1, "lastEnd":I
    :goto_0
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-gt v1, v2, :cond_2

    .line 403
    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .local v2, "startAt":I
    goto :goto_1

    .line 405
    .end local v2    # "startAt":I
    :cond_2
    move v2, v1

    .line 408
    .restart local v2    # "startAt":I
    :goto_1
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    add-int v5, v2, p1

    invoke-direct {v4, v2, v5, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public annotate(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    .line 386
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    invoke-direct {v1, v2, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method public annotates()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public assertCursor(I)V
    .locals 3
    .param p1, "expectedCursor"    # I

    .line 156
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-ne v0, p1, :cond_0

    .line 160
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/android/dex/util/ExceptionWithContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; actual value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableAnnotations(IZ)V
    .locals 3
    .param p1, "annotationWidth"    # I
    .param p2, "verbose"    # Z

    .line 442
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-nez v0, :cond_3

    .line 446
    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    .line 450
    add-int/lit8 v0, p1, -0x7

    div-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    .line 451
    .local v0, "hexCols":I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 452
    const/4 v0, 0x6

    goto :goto_0

    .line 453
    :cond_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 454
    const/16 v0, 0xa

    .line 457
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    .line 458
    iput p1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    .line 459
    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    .line 460
    iput-boolean p2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    .line 461
    return-void

    .line 447
    .end local v0    # "hexCols":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "annotationWidth < 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot enable annotations"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endAnnotation()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 420
    .local v0, "sz":I
    if-eqz v0, :cond_1

    .line 421
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->setEndIfUnset(I)V

    .line 423
    :cond_1
    return-void
.end method

.method public finishAnnotating()V
    .locals 4

    .line 470
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    .line 473
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 475
    .local v0, "asz":I
    :goto_0
    if-lez v0, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    .line 477
    .local v1, "last":Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getStart()I

    move-result v2

    iget v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-le v2, v3, :cond_0

    .line 478
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    add-int/lit8 v0, v0, -0x1

    .line 486
    .end local v1    # "last":Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    goto :goto_0

    .line 480
    .restart local v1    # "last":Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    move-result v2

    iget v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-le v2, v3, :cond_1

    .line 481
    invoke-virtual {v1, v3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->setEnd(I)V

    .line 482
    nop

    .line 488
    .end local v0    # "asz":I
    .end local v1    # "last":Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    :cond_1
    return-void
.end method

.method public getAnnotationWidth()I
    .locals 2

    .line 428
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x8

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 430
    .local v1, "leftWidth":I
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getArray()[B
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    return-object v0
.end method

.method public getCursor()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return v0
.end method

.method public isVerbose()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 142
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    new-array v1, v0, [B

    .line 143
    .local v1, "result":[B
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    return-object v1
.end method

.method public write(Lcom/android/dx/util/ByteArray;)V
    .locals 4
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;

    .line 270
    invoke-virtual {p1}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v0

    .line 271
    .local v0, "blen":I
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 272
    .local v1, "writeAt":I
    add-int v2, v1, v0

    .line 274
    .local v2, "end":I
    iget-boolean v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v3, :cond_0

    .line 275
    invoke-direct {p0, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 277
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    .line 278
    return-void

    .line 281
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    invoke-virtual {p1, v3, v1}, Lcom/android/dx/util/ByteArray;->getBytes([BI)V

    .line 282
    iput v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 283
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 313
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->write([BII)V

    .line 314
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 288
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 289
    .local v0, "writeAt":I
    add-int v1, v0, p3

    .line 290
    .local v1, "end":I
    add-int v2, p2, p3

    .line 293
    .local v2, "bytesEnd":I
    or-int v3, p2, p3

    or-int/2addr v3, v1

    if-ltz v3, :cond_2

    array-length v3, p1

    if-gt v2, v3, :cond_2

    .line 299
    iget-boolean v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v3, :cond_0

    .line 300
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 302
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    .line 303
    return-void

    .line 306
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 308
    return-void

    .line 294
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeAnnotationsTo(Ljava/io/Writer;)V
    .locals 21
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getAnnotationWidth()I

    move-result v1

    .line 497
    .local v1, "width2":I
    iget v2, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 499
    .local v2, "width1":I
    new-instance v3, Lcom/android/dx/util/TwoColumnOutput;

    const-string v4, "|"

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v2, v1, v4}, Lcom/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    .line 500
    .local v3, "twoc":Lcom/android/dx/util/TwoColumnOutput;
    invoke-virtual {v3}, Lcom/android/dx/util/TwoColumnOutput;->getLeft()Ljava/io/Writer;

    move-result-object v4

    .line 501
    .local v4, "left":Ljava/io/Writer;
    invoke-virtual {v3}, Lcom/android/dx/util/TwoColumnOutput;->getRight()Ljava/io/Writer;

    move-result-object v6

    .line 502
    .local v6, "right":Ljava/io/Writer;
    const/4 v7, 0x0

    .line 503
    .local v7, "leftAt":I
    const/4 v8, 0x0

    .line 504
    .local v8, "rightAt":I
    iget-object v9, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 506
    .local v9, "rightSz":I
    :goto_0
    iget v10, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-ge v7, v10, :cond_1

    if-ge v8, v9, :cond_1

    .line 507
    iget-object v10, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    .line 508
    .local v10, "a":Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    invoke-virtual {v10}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getStart()I

    move-result v11

    .line 512
    .local v11, "start":I
    if-ge v7, v11, :cond_0

    .line 514
    move v12, v11

    .line 515
    .local v12, "end":I
    move v11, v7

    .line 516
    const-string v13, ""

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v13

    .local v13, "text":Ljava/lang/String;
    goto :goto_1

    .line 519
    .end local v12    # "end":I
    .end local v13    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    move-result v12

    .line 520
    .restart local v12    # "end":I
    invoke-virtual {v10}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getText()Ljava/lang/String;

    move-result-object v13

    .line 521
    .restart local v13    # "text":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v13

    .line 524
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "text":Ljava/lang/String;
    .local v15, "text":Ljava/lang/String;
    .local v17, "start":I
    .local v18, "end":I
    :goto_1
    iget-object v11, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    sub-int v13, v18, v17

    iget v14, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    const/16 v16, 0x6

    move/from16 v12, v17

    move/from16 v19, v14

    move/from16 v14, v17

    move/from16 v20, v1

    move-object v1, v15

    .end local v15    # "text":Ljava/lang/String;
    .local v1, "text":Ljava/lang/String;
    .local v20, "width2":I
    move/from16 v15, v19

    invoke-static/range {v11 .. v16}, Lcom/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v3}, Lcom/android/dx/util/TwoColumnOutput;->flush()V

    .line 527
    move/from16 v7, v18

    .line 528
    .end local v1    # "text":Ljava/lang/String;
    .end local v10    # "a":Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    .end local v17    # "start":I
    .end local v18    # "end":I
    move/from16 v1, v20

    goto :goto_0

    .line 506
    .end local v20    # "width2":I
    .local v1, "width2":I
    :cond_1
    move/from16 v20, v1

    .line 530
    .end local v1    # "width2":I
    .restart local v20    # "width2":I
    if-ge v7, v10, :cond_2

    .line 532
    iget-object v1, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    sub-int v12, v10, v7

    iget v14, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    const/4 v15, 0x6

    move-object v10, v1

    move v11, v7

    move v13, v7

    invoke-static/range {v10 .. v15}, Lcom/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 536
    :cond_2
    :goto_2
    if-ge v8, v9, :cond_3

    .line 538
    iget-object v1, v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 539
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 542
    :cond_3
    invoke-virtual {v3}, Lcom/android/dx/util/TwoColumnOutput;->flush()V

    .line 543
    return-void
.end method

.method public writeByte(I)V
    .locals 4
    .param p1, "value"    # I

    .line 165
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 166
    .local v0, "writeAt":I
    add-int/lit8 v1, v0, 0x1

    .line 168
    .local v1, "end":I
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_0

    .line 169
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 171
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    .line 172
    return-void

    .line 175
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 176
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 177
    return-void
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "value"    # I

    .line 200
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 201
    .local v0, "writeAt":I
    add-int/lit8 v1, v0, 0x4

    .line 203
    .local v1, "end":I
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_0

    .line 204
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 206
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    .line 207
    return-void

    .line 210
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 211
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 212
    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 213
    add-int/lit8 v3, v0, 0x3

    shr-int/lit8 v4, p1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 214
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 215
    return-void
.end method

.method public writeLong(J)V
    .locals 6
    .param p1, "value"    # J

    .line 220
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 221
    .local v0, "writeAt":I
    add-int/lit8 v1, v0, 0x8

    .line 223
    .local v1, "end":I
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_0

    .line 224
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 226
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    .line 227
    return-void

    .line 230
    :cond_1
    :goto_0
    long-to-int v2, p1

    .line 231
    .local v2, "half":I
    iget-object v3, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 232
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 233
    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 234
    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v5, v2, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 236
    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v2, v4

    .line 237
    add-int/lit8 v4, v0, 0x4

    int-to-byte v5, v2

    aput-byte v5, v3, v4

    .line 238
    add-int/lit8 v4, v0, 0x5

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 239
    add-int/lit8 v4, v0, 0x6

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 240
    add-int/lit8 v4, v0, 0x7

    shr-int/lit8 v5, v2, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 242
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 243
    return-void
.end method

.method public writeShort(I)V
    .locals 5
    .param p1, "value"    # I

    .line 182
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 183
    .local v0, "writeAt":I
    add-int/lit8 v1, v0, 0x2

    .line 185
    .local v1, "end":I
    iget-boolean v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_0

    .line 186
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 188
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    .line 189
    return-void

    .line 192
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 193
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 194
    iput v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 195
    return-void
.end method

.method public writeSleb128(I)I
    .locals 2
    .param p1, "value"    # I

    .line 259
    iget-boolean v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v0, :cond_0

    .line 260
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    .line 262
    :cond_0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 263
    .local v0, "cursorBefore":I
    invoke-static {p0, p1}, Lcom/android/dex/Leb128;->writeSignedLeb128(Lcom/android/dex/util/ByteOutput;I)V

    .line 264
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public writeUleb128(I)I
    .locals 2
    .param p1, "value"    # I

    .line 248
    iget-boolean v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    .line 251
    :cond_0
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 252
    .local v0, "cursorBefore":I
    invoke-static {p0, p1}, Lcom/android/dex/Leb128;->writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V

    .line 253
    iget v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public writeZeroes(I)V
    .locals 4
    .param p1, "count"    # I

    .line 319
    if-ltz p1, :cond_2

    .line 323
    iget v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/2addr v0, p1

    .line 325
    .local v0, "end":I
    iget-boolean v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v1, :cond_0

    .line 326
    invoke-direct {p0, v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 328
    invoke-static {}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    .line 329
    return-void

    .line 335
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    iget v2, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 337
    iput v0, p0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 338
    return-void

    .line 320
    .end local v0    # "end":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
