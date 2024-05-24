.class public final Lcom/android/dx/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static dump([BIIIII)Ljava/lang/String;
    .locals 7
    .param p0, "arr"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "outOffset"    # I
    .param p4, "bpl"    # I
    .param p5, "addressLength"    # I

    .line 251
    add-int v0, p1, p2

    .line 254
    .local v0, "end":I
    or-int v1, p1, p2

    or-int/2addr v1, v0

    if-ltz v1, :cond_7

    array-length v1, p0

    if-gt v0, v1, :cond_7

    .line 260
    if-ltz p3, :cond_6

    .line 264
    if-nez p2, :cond_0

    .line 265
    const-string v1, ""

    return-object v1

    .line 268
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x4

    add-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 269
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 270
    .local v2, "bol":Z
    const/4 v3, 0x0

    .line 272
    .local v3, "col":I
    :goto_0
    const/16 v4, 0xa

    if-lez p2, :cond_4

    .line 273
    if-nez v3, :cond_1

    .line 275
    packed-switch p5, :pswitch_data_0

    .line 279
    :pswitch_0
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "astr":Ljava/lang/String;
    goto :goto_1

    .line 278
    .end local v5    # "astr":Ljava/lang/String;
    :pswitch_1
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u3(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "astr":Ljava/lang/String;
    goto :goto_1

    .line 277
    .end local v5    # "astr":Ljava/lang/String;
    :pswitch_2
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "astr":Ljava/lang/String;
    goto :goto_1

    .line 276
    .end local v5    # "astr":Ljava/lang/String;
    :pswitch_3
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v5

    .line 281
    .restart local v5    # "astr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5    # "astr":Ljava/lang/String;
    goto :goto_2

    .line 283
    :cond_1
    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_2

    .line 284
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 283
    :cond_2
    :goto_2
    nop

    .line 286
    :goto_3
    aget-byte v5, p0, p1

    invoke-static {v5}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 p3, p3, 0x1

    .line 288
    add-int/lit8 p1, p1, 0x1

    .line 289
    add-int/lit8 v3, v3, 0x1

    .line 290
    if-ne v3, p4, :cond_3

    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    const/4 v3, 0x0

    .line 294
    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 297
    :cond_4
    if-eqz v3, :cond_5

    .line 298
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 261
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "bol":Z
    .end local v3    # "col":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "outOffset < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arr.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static s1(I)Ljava/lang/String;
    .locals 5
    .param p0, "v"    # I

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 220
    .local v0, "result":[C
    const/4 v1, 0x0

    if-gez p0, :cond_0

    .line 221
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    .line 222
    neg-int p0, p0

    goto :goto_0

    .line 224
    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    .line 227
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 228
    rsub-int/lit8 v2, v1, 0x2

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    .line 229
    shr-int/lit8 p0, p0, 0x4

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static s2(I)Ljava/lang/String;
    .locals 5
    .param p0, "v"    # I

    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 196
    .local v0, "result":[C
    const/4 v1, 0x0

    if-gez p0, :cond_0

    .line 197
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    .line 198
    neg-int p0, p0

    goto :goto_0

    .line 200
    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    .line 203
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 204
    rsub-int/lit8 v2, v1, 0x4

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    .line 205
    shr-int/lit8 p0, p0, 0x4

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static s4(I)Ljava/lang/String;
    .locals 5
    .param p0, "v"    # I

    .line 170
    const/16 v0, 0x9

    new-array v0, v0, [C

    .line 172
    .local v0, "result":[C
    const/4 v1, 0x0

    if-gez p0, :cond_0

    .line 173
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    .line 174
    neg-int p0, p0

    goto :goto_0

    .line 176
    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    .line 179
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 180
    rsub-int/lit8 v2, v1, 0x8

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    .line 181
    shr-int/lit8 p0, p0, 0x4

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static s8(J)Ljava/lang/String;
    .locals 5
    .param p0, "v"    # J

    .line 146
    const/16 v0, 0x11

    new-array v0, v0, [C

    .line 148
    .local v0, "result":[C
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 149
    const/16 v1, 0x2d

    aput-char v1, v0, v2

    .line 150
    neg-long p0, p0

    goto :goto_0

    .line 152
    :cond_0
    const/16 v1, 0x2b

    aput-char v1, v0, v2

    .line 155
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 156
    rsub-int/lit8 v3, v1, 0x10

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v0, v3

    .line 157
    const/4 v2, 0x4

    shr-long/2addr p0, v2

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static u1(I)Ljava/lang/String;
    .locals 6
    .param p0, "v"    # I

    .line 117
    const/4 v0, 0x2

    new-array v1, v0, [C

    .line 118
    .local v1, "result":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 119
    rsub-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    .line 120
    shr-int/lit8 p0, p0, 0x4

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u2(I)Ljava/lang/String;
    .locals 6
    .param p0, "v"    # I

    .line 85
    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 86
    .local v1, "result":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 87
    rsub-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    .line 88
    shr-int/lit8 p0, p0, 0x4

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u2or4(I)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # I

    .line 103
    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u3(I)Ljava/lang/String;
    .locals 6
    .param p0, "v"    # I

    .line 69
    const/4 v0, 0x6

    new-array v1, v0, [C

    .line 70
    .local v1, "result":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 71
    rsub-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    .line 72
    shr-int/lit8 p0, p0, 0x4

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u4(I)Ljava/lang/String;
    .locals 6
    .param p0, "v"    # I

    .line 53
    const/16 v0, 0x8

    new-array v1, v0, [C

    .line 54
    .local v1, "result":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 55
    rsub-int/lit8 v3, v2, 0x7

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    .line 56
    shr-int/lit8 p0, p0, 0x4

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u8(J)Ljava/lang/String;
    .locals 5
    .param p0, "v"    # J

    .line 37
    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 38
    .local v1, "result":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 39
    rsub-int/lit8 v3, v2, 0xf

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    .line 40
    const/4 v3, 0x4

    shr-long/2addr p0, v3

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static uNibble(I)Ljava/lang/String;
    .locals 3
    .param p0, "v"    # I

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [C

    .line 135
    .local v0, "result":[C
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 136
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
