.class public final Lorg/checkerframework/com/google/common/hash/Funnels;
.super Ljava/lang/Object;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;,
        Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;,
        Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;,
        Lorg/checkerframework/com/google/common/hash/Funnels$IntegerFunnel;,
        Lorg/checkerframework/com/google/common/hash/Funnels$StringCharsetFunnel;,
        Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;,
        Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asOutputStream(Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "sink"    # Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 239
    new-instance v0, Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/hash/Funnels$SinkAsStream;-><init>(Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V

    return-object v0
.end method

.method public static byteArrayFunnel()Lorg/checkerframework/com/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "[B>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;->INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    return-object v0
.end method

.method public static integerFunnel()Lorg/checkerframework/com/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$IntegerFunnel;->INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method

.method public static longFunnel()Lorg/checkerframework/com/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 211
    sget-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;->INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method

.method public static sequentialFunnel(Lorg/checkerframework/com/google/common/hash/Funnel;)Lorg/checkerframework/com/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    .line 168
    .local p0, "elementFunnel":Lorg/checkerframework/com/google/common/hash/Funnel;, "Lorg/checkerframework/com/google/common/hash/Funnel<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/hash/Funnels$SequentialFunnel;-><init>(Lorg/checkerframework/com/google/common/hash/Funnel;)V

    return-object v0
.end method

.method public static stringFunnel(Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/Funnel;
    .locals 1
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/checkerframework/com/google/common/hash/Funnels$StringCharsetFunnel;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/hash/Funnels$StringCharsetFunnel;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static unencodedCharsFunnel()Lorg/checkerframework/com/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;->INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object v0
.end method
