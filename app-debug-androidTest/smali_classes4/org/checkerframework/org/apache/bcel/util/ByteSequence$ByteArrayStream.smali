.class final Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;
.super Ljava/io/ByteArrayInputStream;
.source "ByteSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArrayStream"
.end annotation


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 53
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    return-void
.end method


# virtual methods
.method final getPosition()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;->pos:I

    return v0
.end method

.method final unreadByte()V
    .locals 1

    .line 62
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;->pos:I

    if-lez v0, :cond_0

    .line 63
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;->pos:I

    .line 65
    :cond_0
    return-void
.end method
