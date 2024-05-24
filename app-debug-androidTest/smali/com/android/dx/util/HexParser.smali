.class public final Lcom/android/dx/util/HexParser;
.super Ljava/lang/Object;
.source "HexParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static parse(Ljava/lang/String;)[B
    .locals 17
    .param p0, "src"    # Ljava/lang/String;

    .line 45
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 46
    .local v1, "len":I
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 47
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 48
    .local v3, "at":I
    const/4 v4, 0x0

    .line 50
    .local v4, "outAt":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v1, :cond_f

    .line 51
    const/16 v6, 0xa

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 52
    .local v6, "nlAt":I
    if-gez v6, :cond_0

    .line 53
    move v6, v1

    .line 55
    :cond_0
    const/16 v7, 0x23

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 58
    .local v7, "poundAt":I
    if-ltz v7, :cond_1

    if-ge v7, v6, :cond_1

    .line 59
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    goto :goto_1

    .line 61
    .end local v8    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 63
    .restart local v8    # "line":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v6, 0x1

    .line 65
    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 68
    .local v9, "colonAt":I
    const/16 v10, 0x10

    const/16 v11, 0x22

    const/4 v12, -0x1

    if-eq v9, v12, :cond_4

    .line 69
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 70
    .local v13, "quoteAt":I
    if-eq v13, v12, :cond_2

    if-ge v13, v9, :cond_2

    .line 71
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "atStr":Ljava/lang/String;
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    invoke-static {v5, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .line 77
    .local v14, "alleged":I
    if-ne v14, v4, :cond_3

    goto :goto_2

    .line 78
    :cond_3
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bogus offset marker: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 83
    .end local v5    # "atStr":Ljava/lang/String;
    .end local v13    # "quoteAt":I
    .end local v14    # "alleged":I
    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 84
    .local v5, "lineLen":I
    const/4 v13, -0x1

    .line 85
    .local v13, "value":I
    const/4 v14, 0x0

    .line 87
    .local v14, "quoteMode":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    const-string v10, "spare digit around offset "

    if-ge v15, v5, :cond_c

    .line 88
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 90
    .local v12, "c":C
    if-eqz v14, :cond_6

    .line 91
    if-ne v12, v11, :cond_5

    .line 92
    const/4 v10, 0x0

    move v14, v10

    const/16 v0, 0x10

    .end local v14    # "quoteMode":Z
    .local v10, "quoteMode":Z
    goto :goto_4

    .line 94
    .end local v10    # "quoteMode":Z
    .restart local v14    # "quoteMode":Z
    :cond_5
    int-to-byte v10, v12

    aput-byte v10, v2, v4

    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 97
    const/16 v0, 0x10

    goto :goto_4

    .line 100
    :cond_6
    const/16 v11, 0x20

    if-gt v12, v11, :cond_7

    .line 101
    const/16 v0, 0x10

    goto :goto_4

    .line 103
    :cond_7
    const/16 v11, 0x22

    if-ne v12, v11, :cond_9

    .line 104
    const/4 v11, -0x1

    if-ne v13, v11, :cond_8

    .line 108
    const/4 v10, 0x1

    .line 109
    .end local v14    # "quoteMode":Z
    .restart local v10    # "quoteMode":Z
    move v14, v10

    const/16 v0, 0x10

    goto :goto_4

    .line 105
    .end local v10    # "quoteMode":Z
    .restart local v14    # "quoteMode":Z
    :cond_8
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 112
    :cond_9
    const/16 v0, 0x10

    invoke-static {v12, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    .line 113
    .local v10, "digVal":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 117
    if-ne v13, v11, :cond_a

    .line 118
    move v11, v10

    move v13, v11

    .end local v13    # "value":I
    .local v11, "value":I
    goto :goto_4

    .line 120
    .end local v11    # "value":I
    .restart local v13    # "value":I
    :cond_a
    shl-int/lit8 v11, v13, 0x4

    or-int/2addr v11, v10

    int-to-byte v11, v11

    aput-byte v11, v2, v4

    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 122
    const/4 v11, -0x1

    move v13, v11

    .line 87
    .end local v10    # "digVal":I
    .end local v12    # "c":C
    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x22

    const/4 v12, -0x1

    move v10, v0

    move-object/from16 v0, p0

    goto :goto_3

    .line 114
    .restart local v10    # "digVal":I
    .restart local v12    # "c":C
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    .end local v1    # "len":I
    .local v16, "len":I
    const-string v1, "bogus digit character: \""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "\""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    .end local v10    # "digVal":I
    .end local v12    # "c":C
    .end local v16    # "len":I
    .restart local v1    # "len":I
    :cond_c
    move/from16 v16, v1

    .line 126
    .end local v1    # "len":I
    .end local v15    # "i":I
    .restart local v16    # "len":I
    const/4 v0, -0x1

    if-ne v13, v0, :cond_e

    .line 131
    if-nez v14, :cond_d

    .line 135
    .end local v5    # "lineLen":I
    .end local v6    # "nlAt":I
    .end local v7    # "poundAt":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "colonAt":I
    .end local v13    # "value":I
    .end local v14    # "quoteMode":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    goto/16 :goto_0

    .line 132
    .restart local v5    # "lineLen":I
    .restart local v6    # "nlAt":I
    .restart local v7    # "poundAt":I
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v9    # "colonAt":I
    .restart local v13    # "value":I
    .restart local v14    # "quoteMode":Z
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unterminated quote around offset "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    .end local v5    # "lineLen":I
    .end local v6    # "nlAt":I
    .end local v7    # "poundAt":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "colonAt":I
    .end local v13    # "value":I
    .end local v14    # "quoteMode":Z
    .end local v16    # "len":I
    .restart local v1    # "len":I
    :cond_f
    move/from16 v16, v1

    .end local v1    # "len":I
    .restart local v16    # "len":I
    array-length v0, v2

    if-ge v4, v0, :cond_10

    .line 138
    new-array v0, v4, [B

    .line 139
    .local v0, "newr":[B
    invoke-static {v2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    move-object v2, v0

    .line 143
    .end local v0    # "newr":[B
    :cond_10
    return-object v2
.end method
