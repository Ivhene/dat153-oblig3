.class interface abstract Lorg/checkerframework/com/google/common/hash/BloomFilter$Strategy;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/hash/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Strategy"
.end annotation


# virtual methods
.method public abstract mightContain(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/Funnel;ILorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract ordinal()I
.end method

.method public abstract put(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/Funnel;ILorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;",
            ")Z"
        }
    .end annotation
.end method
