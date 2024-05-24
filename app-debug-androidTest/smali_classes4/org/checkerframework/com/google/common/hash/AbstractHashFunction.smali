.class abstract Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;
.super Ljava/lang/Object;
.source "AbstractHashFunction.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/hash/HashFunction;


# annotations
.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hashBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->newHasher(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/hash/Hasher;->hash()Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashBytes([B)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 2
    .param p1, "input"    # [B

    .line 59
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->hashBytes([BII)Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashBytes([BII)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 2
    .param p1, "input"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 64
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 65
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->newHasher(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBytes([BII)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/hash/Hasher;->hash()Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashInt(I)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 1
    .param p1, "input"    # I

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->newHasher(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putInt(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/hash/Hasher;->hash()Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashLong(J)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 1
    .param p1, "input"    # J

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->newHasher(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putLong(J)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/hash/Hasher;->hash()Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashObject(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/Funnel;)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lorg/checkerframework/com/google/common/hash/HashCode;"
        }
    .end annotation

    .line 33
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lorg/checkerframework/com/google/common/hash/Funnel;, "Lorg/checkerframework/com/google/common/hash/Funnel<-TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->newHasher()Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/Funnel;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/hash/Hasher;->hash()Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->newHasher()Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/hash/Hasher;->hash()Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 39
    .local v0, "len":I
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->newHasher(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/hash/Hasher;->hash()Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v1

    return-object v1
.end method

.method public newHasher(I)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 2
    .param p1, "expectedInputSize"    # I

    .line 75
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expectedInputSize must be >= 0 but was %s"

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 77
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;->newHasher()Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
