.class Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;
.super Ljava/io/OutputStream;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SinkAsStream"
.end annotation


# instance fields
.field final sink:Lorg/checkerframework/com/google/common/hash/PrimitiveSink;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 1
    .param p1, "sink"    # Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 245
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 246
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;->sink:Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 247
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Funnels.asOutputStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;->sink:Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I

    .line 251
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;->sink:Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/hash/PrimitiveSink;->putByte(B)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 252
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 256
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;->sink:Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/hash/PrimitiveSink;->putBytes([B)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 257
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 261
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;->sink:Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/hash/PrimitiveSink;->putBytes([BII)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 262
    return-void
.end method