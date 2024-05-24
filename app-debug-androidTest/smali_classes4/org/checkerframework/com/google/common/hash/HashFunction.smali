.class public interface abstract Lorg/checkerframework/com/google/common/hash/HashFunction;
.super Ljava/lang/Object;
.source "HashFunction.java"


# annotations
.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
.end annotation


# virtual methods
.method public abstract bits()I
.end method

.method public abstract hashBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/HashCode;
.end method

.method public abstract hashBytes([B)Lorg/checkerframework/com/google/common/hash/HashCode;
.end method

.method public abstract hashBytes([BII)Lorg/checkerframework/com/google/common/hash/HashCode;
.end method

.method public abstract hashInt(I)Lorg/checkerframework/com/google/common/hash/HashCode;
.end method

.method public abstract hashLong(J)Lorg/checkerframework/com/google/common/hash/HashCode;
.end method

.method public abstract hashObject(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/Funnel;)Lorg/checkerframework/com/google/common/hash/HashCode;
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
.end method

.method public abstract hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/HashCode;
.end method

.method public abstract hashUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/HashCode;
.end method

.method public abstract newHasher()Lorg/checkerframework/com/google/common/hash/Hasher;
.end method

.method public abstract newHasher(I)Lorg/checkerframework/com/google/common/hash/Hasher;
.end method
