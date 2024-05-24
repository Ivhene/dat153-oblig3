.class public Lnet/bytebuddy/utility/StreamDrainer;
.super Ljava/lang/Object;
.source "StreamDrainer.java"


# annotations
.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

.field public static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final END_OF_STREAM:I = -0x1

.field private static final FROM_BEGINNING:I


# instance fields
.field private final bufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lnet/bytebuddy/utility/StreamDrainer;

    invoke-direct {v0}, Lnet/bytebuddy/utility/StreamDrainer;-><init>()V

    sput-object v0, Lnet/bytebuddy/utility/StreamDrainer;->DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lnet/bytebuddy/utility/StreamDrainer;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    .line 70
    return-void
.end method


# virtual methods
.method public drain(Ljava/io/InputStream;)[B
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "previousBytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    new-array v1, v1, [B

    .line 82
    .local v1, "currentArray":[B
    const/4 v2, 0x0

    .line 85
    .local v2, "currentIndex":I
    :cond_0
    iget v3, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 86
    .local v3, "currentRead":I
    const/4 v4, 0x0

    if-lez v3, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    add-int/2addr v2, v5

    .line 87
    iget v5, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    if-ne v2, v5, :cond_2

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget v5, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    new-array v1, v5, [B

    .line 90
    const/4 v2, 0x0

    .line 92
    :cond_2
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    new-array v5, v5, [B

    .line 94
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 95
    .local v6, "arrayIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 96
    .local v8, "previousByte":[B
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "arrayIndex":I
    .local v9, "arrayIndex":I
    iget v10, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int/2addr v6, v10

    invoke-static {v8, v4, v5, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    .end local v8    # "previousByte":[B
    move v6, v9

    goto :goto_1

    .line 98
    .end local v9    # "arrayIndex":I
    .restart local v6    # "arrayIndex":I
    :cond_3
    iget v7, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int/2addr v7, v6

    invoke-static {v1, v4, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    check-cast p1, Lnet/bytebuddy/utility/StreamDrainer;

    iget p1, p1, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/utility/StreamDrainer;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    add-int/2addr v0, v1

    return v0
.end method
