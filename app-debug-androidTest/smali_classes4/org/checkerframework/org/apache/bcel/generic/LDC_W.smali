.class public Lorg/checkerframework/org/apache/bcel/generic/LDC_W;
.super Lorg/checkerframework/org/apache/bcel/generic/LDC;
.source "LDC_W.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/LDC;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .line 42
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;-><init>(I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 1
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LDC_W;->setIndex(I)V

    .line 53
    const/16 v0, 0x13

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->setOpcode(S)V

    .line 54
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->setLength(I)V

    .line 55
    return-void
.end method
