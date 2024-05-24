.class public final Lcom/android/dex/util/Unsigned;
.super Ljava/lang/Object;
.source "Unsigned.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 6
    .param p0, "uintA"    # I
    .param p1, "uintB"    # I

    .line 35
    if-ne p0, p1, :cond_0

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 39
    .local v0, "a":J
    int-to-long v4, p1

    and-long/2addr v2, v4

    .line 40
    .local v2, "b":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    return v4
.end method

.method public static compare(SS)I
    .locals 3
    .param p0, "ushortA"    # S
    .param p1, "ushortB"    # S

    .line 26
    if-ne p0, p1, :cond_0

    .line 27
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_0
    const v0, 0xffff

    and-int v1, p0, v0

    .line 30
    .local v1, "a":I
    and-int/2addr v0, p1

    .line 31
    .local v0, "b":I
    if-ge v1, v0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2
.end method
