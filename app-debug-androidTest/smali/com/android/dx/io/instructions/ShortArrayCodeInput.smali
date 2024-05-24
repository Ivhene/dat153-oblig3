.class public final Lcom/android/dx/io/instructions/ShortArrayCodeInput;
.super Lcom/android/dx/io/instructions/BaseCodeCursor;
.source "ShortArrayCodeInput.java"

# interfaces
.implements Lcom/android/dx/io/instructions/CodeInput;


# instance fields
.field private final array:[S


# direct methods
.method public constructor <init>([S)V
    .locals 2
    .param p1, "array"    # [S

    .line 32
    invoke-direct {p0}, Lcom/android/dx/io/instructions/BaseCodeCursor;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->array:[S

    .line 38
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasMore()Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->array:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->array:[S

    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    move-result v1

    aget-short v0, v0, v1

    .line 51
    .local v0, "value":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->advance(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const v1, 0xffff

    and-int/2addr v1, v0

    return v1

    .line 53
    .end local v0    # "value":I
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    move-result v0

    .line 62
    .local v0, "short0":I
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    move-result v1

    .line 64
    .local v1, "short1":I
    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v2, v0

    return v2
.end method

.method public readLong()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    move-result v0

    int-to-long v0, v0

    .line 71
    .local v0, "short0":J
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    move-result v2

    int-to-long v2, v2

    .line 72
    .local v2, "short1":J
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    move-result v4

    int-to-long v4, v4

    .line 73
    .local v4, "short2":J
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeInput;->read()I

    move-result v6

    int-to-long v6, v6

    .line 75
    .local v6, "short3":J
    const/16 v8, 0x10

    shl-long v8, v2, v8

    or-long/2addr v8, v0

    const/16 v10, 0x20

    shl-long v10, v4, v10

    or-long/2addr v8, v10

    const/16 v10, 0x30

    shl-long v10, v6, v10

    or-long/2addr v8, v10

    return-wide v8
.end method
