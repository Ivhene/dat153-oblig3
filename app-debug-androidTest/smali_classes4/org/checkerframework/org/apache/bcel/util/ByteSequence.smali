.class public final Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
.super Ljava/io/DataInputStream;
.source "ByteSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;
    }
.end annotation


# instance fields
.field private final byteStream:Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 36
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;-><init>([B)V

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->in:Ljava/io/InputStream;

    check-cast v0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->byteStream:Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;

    .line 38
    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->byteStream:Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;->getPosition()I

    move-result v0

    return v0
.end method

.method final unreadByte()V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->byteStream:Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence$ByteArrayStream;->unreadByte()V

    .line 48
    return-void
.end method
