.class public interface abstract Lorg/checkerframework/com/google/common/hash/Hasher;
.super Ljava/lang/Object;
.source "Hasher.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/hash/PrimitiveSink;


# virtual methods
.method public abstract hash()Lorg/checkerframework/com/google/common/hash/HashCode;
.end method

.method public abstract hashCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract putBoolean(Z)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putBoolean(Z)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBoolean(Z)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putByte(B)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putByte(B)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putByte(B)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public abstract putBytes([B)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public abstract putBytes([BII)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([B)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBytes([B)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBytes([BII)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putChar(C)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putChar(C)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putChar(C)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putDouble(D)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putDouble(D)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putDouble(D)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putFloat(F)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putFloat(F)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putFloat(F)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putInt(I)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putInt(I)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putInt(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putLong(J)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putLong(J)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putLong(J)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putObject(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/Funnel;)Lorg/checkerframework/com/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lorg/checkerframework/com/google/common/hash/Hasher;"
        }
    .end annotation
.end method

.method public abstract putShort(S)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putShort(S)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putShort(S)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
