.class public Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;
.super Ljava/lang/Object;
.source "StringsComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/String;

.field private final right:Ljava/lang/String;

.field private final vDown:[I

.field private final vUp:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "left"    # Ljava/lang/String;
    .param p2, "right"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 93
    .local v0, "size":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    .line 94
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    .line 95
    return-void
.end method

.method private buildScript(IIIILorg/checkerframework/org/apache/commons/text/diff/EditScript;)V
    .locals 9
    .param p1, "start1"    # I
    .param p2, "end1"    # I
    .param p3, "start2"    # I
    .param p4, "end2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p5, "script":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<Ljava/lang/Character;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->getMiddleSnake(IIII)Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object v0

    .line 130
    .local v0, "middle":Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;
    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v1

    sub-int v2, p2, p4

    if-eq v1, v2, :cond_3

    .line 132
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v1

    sub-int v2, p1, p3

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v5

    .line 155
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v2

    sub-int v7, v1, v2

    .line 154
    move-object v3, p0

    move v4, p1

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/checkerframework/org/apache/commons/text/diff/EditScript;)V

    .line 157
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 158
    new-instance v2, Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->append(Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result v3

    .line 161
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v2

    sub-int v5, v1, v2

    .line 160
    move-object v2, p0

    move v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/checkerframework/org/apache/commons/text/diff/EditScript;)V

    goto :goto_3

    .line 134
    :cond_3
    :goto_1
    move v1, p1

    .line 135
    .restart local v1    # "i":I
    move v2, p3

    .line 136
    .local v2, "j":I
    :goto_2
    if-lt v1, p2, :cond_5

    if-ge v2, p4, :cond_4

    goto :goto_4

    .line 152
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4
    nop

    .line 164
    :goto_3
    return-void

    .line 137
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_5
    :goto_4
    if-ge v1, p2, :cond_6

    if-ge v2, p4, :cond_6

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_6

    .line 138
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v3}, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->append(Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 142
    :cond_6
    sub-int v3, p2, p1

    sub-int v4, p4, p3

    if-le v3, v4, :cond_7

    .line 143
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v3}, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->append(Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    :cond_7
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/diff/InsertCommand;

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/text/diff/InsertCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v3}, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->append(Lorg/checkerframework/org/apache/commons/text/diff/InsertCommand;)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private buildSnake(IIII)Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;
    .locals 4
    .param p1, "start"    # I
    .param p2, "diag"    # I
    .param p3, "end1"    # I
    .param p4, "end2"    # I

    .line 266
    move v0, p1

    .line 267
    .local v0, "end":I
    :goto_0
    sub-int v1, v0, p2

    if-ge v1, p4, :cond_0

    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    sub-int v3, v0, p2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;

    invoke-direct {v1, p1, v0, p2}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;-><init>(III)V

    return-object v1
.end method

.method private getMiddleSnake(IIII)Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;
    .locals 18
    .param p1, "start1"    # I
    .param p2, "end1"    # I
    .param p3, "start2"    # I
    .param p4, "end2"    # I

    .line 186
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sub-int v5, v2, v1

    .line 187
    .local v5, "m":I
    sub-int v6, v4, v3

    .line 188
    .local v6, "n":I
    if-eqz v5, :cond_f

    if-nez v6, :cond_0

    move/from16 v16, v5

    move/from16 v17, v6

    goto/16 :goto_a

    .line 192
    :cond_0
    sub-int v7, v5, v6

    .line 193
    .local v7, "delta":I
    add-int v8, v6, v5

    .line 194
    .local v8, "sum":I
    rem-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v8, 0x1

    :goto_0
    div-int/lit8 v9, v9, 0x2

    .line 195
    .local v9, "offset":I
    iget-object v10, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v11, v9, 0x1

    aput v1, v10, v11

    .line 196
    iget-object v10, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v2, 0x1

    aput v12, v10, v11

    .line 198
    const/4 v10, 0x0

    .local v10, "d":I
    :goto_1
    if-gt v10, v9, :cond_e

    .line 200
    neg-int v11, v10

    .local v11, "k":I
    :goto_2
    if-gt v11, v10, :cond_8

    .line 203
    add-int v12, v11, v9

    .line 204
    .local v12, "i":I
    neg-int v13, v10

    if-eq v11, v13, :cond_3

    if-eq v11, v10, :cond_2

    iget-object v13, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v14, v12, -0x1

    aget v14, v13, v14

    add-int/lit8 v15, v12, 0x1

    aget v13, v13, v15

    if-ge v14, v13, :cond_2

    goto :goto_3

    .line 207
    :cond_2
    iget-object v13, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v14, v12, -0x1

    aget v14, v13, v14

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v12

    goto :goto_4

    .line 205
    :cond_3
    :goto_3
    iget-object v13, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v14, v12, 0x1

    aget v14, v13, v14

    aput v14, v13, v12

    .line 210
    :goto_4
    iget-object v13, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    aget v13, v13, v12

    .line 211
    .local v13, "x":I
    sub-int v14, v13, v1

    add-int/2addr v14, v3

    sub-int/2addr v14, v11

    .line 213
    .local v14, "y":I
    :goto_5
    if-ge v13, v2, :cond_4

    if-ge v14, v4, :cond_4

    iget-object v15, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v16, v5

    .end local v5    # "m":I
    .local v16, "m":I
    iget-object v5, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v15, v5, :cond_5

    .line 214
    iget-object v5, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v13, v13, 0x1

    aput v13, v5, v12

    .line 215
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    goto :goto_5

    .line 213
    .end local v16    # "m":I
    .restart local v5    # "m":I
    :cond_4
    move/from16 v16, v5

    .line 218
    .end local v5    # "m":I
    .restart local v16    # "m":I
    :cond_5
    rem-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_6

    sub-int v5, v7, v10

    if-gt v5, v11, :cond_6

    add-int v5, v7, v10

    if-gt v11, v5, :cond_6

    .line 219
    iget-object v5, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    sub-int v15, v12, v7

    aget v15, v5, v15

    move/from16 v17, v6

    .end local v6    # "n":I
    .local v17, "n":I
    iget-object v6, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    aget v6, v6, v12

    if-gt v15, v6, :cond_7

    .line 220
    sub-int v6, v12, v7

    aget v5, v5, v6

    add-int v6, v11, v1

    sub-int/2addr v6, v3

    invoke-direct {v0, v5, v6, v2, v4}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->buildSnake(IIII)Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object v5

    return-object v5

    .line 218
    .end local v17    # "n":I
    .restart local v6    # "n":I
    :cond_6
    move/from16 v17, v6

    .line 200
    .end local v6    # "n":I
    .end local v12    # "i":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    .restart local v17    # "n":I
    :cond_7
    add-int/lit8 v11, v11, 0x2

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_2

    .end local v16    # "m":I
    .end local v17    # "n":I
    .restart local v5    # "m":I
    .restart local v6    # "n":I
    :cond_8
    move/from16 v16, v5

    move/from16 v17, v6

    .line 226
    .end local v5    # "m":I
    .end local v6    # "n":I
    .end local v11    # "k":I
    .restart local v16    # "m":I
    .restart local v17    # "n":I
    sub-int v5, v7, v10

    .local v5, "k":I
    :goto_6
    add-int v6, v7, v10

    if-gt v5, v6, :cond_d

    .line 228
    add-int v6, v5, v9

    sub-int/2addr v6, v7

    .line 229
    .local v6, "i":I
    sub-int v11, v7, v10

    if-eq v5, v11, :cond_a

    add-int v11, v7, v10

    if-eq v5, v11, :cond_9

    iget-object v11, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v12, v6, 0x1

    aget v12, v11, v12

    add-int/lit8 v13, v6, -0x1

    aget v11, v11, v13

    if-gt v12, v11, :cond_9

    goto :goto_7

    .line 233
    :cond_9
    iget-object v11, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v12, v6, -0x1

    aget v12, v11, v12

    aput v12, v11, v6

    goto :goto_8

    .line 231
    :cond_a
    :goto_7
    iget-object v11, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v12, v6, 0x1

    aget v12, v11, v12

    add-int/lit8 v12, v12, -0x1

    aput v12, v11, v6

    .line 236
    :goto_8
    iget-object v11, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    aget v11, v11, v6

    add-int/lit8 v11, v11, -0x1

    .line 237
    .local v11, "x":I
    sub-int v12, v11, v1

    add-int/2addr v12, v3

    sub-int/2addr v12, v5

    .line 238
    .local v12, "y":I
    :goto_9
    if-lt v11, v1, :cond_b

    if-lt v12, v3, :cond_b

    iget-object v13, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    .line 239
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    iget-object v14, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v13, v14, :cond_b

    .line 240
    iget-object v13, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v14, v11, -0x1

    .end local v11    # "x":I
    .local v14, "x":I
    aput v11, v13, v6

    .line 241
    add-int/lit8 v12, v12, -0x1

    move v11, v14

    goto :goto_9

    .line 244
    .end local v14    # "x":I
    .restart local v11    # "x":I
    :cond_b
    rem-int/lit8 v13, v7, 0x2

    if-nez v13, :cond_c

    neg-int v13, v10

    if-gt v13, v5, :cond_c

    if-gt v5, v10, :cond_c

    .line 245
    iget-object v13, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vUp:[I

    aget v13, v13, v6

    iget-object v14, v0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int v15, v6, v7

    aget v14, v14, v15

    if-gt v13, v14, :cond_c

    .line 246
    add-int v14, v5, v1

    sub-int/2addr v14, v3

    invoke-direct {v0, v13, v14, v2, v4}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->buildSnake(IIII)Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object v13

    return-object v13

    .line 226
    .end local v6    # "i":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_c
    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 198
    .end local v5    # "k":I
    :cond_d
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_1

    .end local v16    # "m":I
    .end local v17    # "n":I
    .local v5, "m":I
    .local v6, "n":I
    :cond_e
    move/from16 v16, v5

    move/from16 v17, v6

    .line 253
    .end local v5    # "m":I
    .end local v6    # "n":I
    .end local v10    # "d":I
    .restart local v16    # "m":I
    .restart local v17    # "n":I
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Internal Error"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    .end local v7    # "delta":I
    .end local v8    # "sum":I
    .end local v9    # "offset":I
    .end local v16    # "m":I
    .end local v17    # "n":I
    .restart local v5    # "m":I
    .restart local v6    # "n":I
    :cond_f
    move/from16 v16, v5

    move/from16 v17, v6

    .line 189
    .end local v5    # "m":I
    .end local v6    # "n":I
    .restart local v16    # "m":I
    .restart local v17    # "n":I
    :goto_a
    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method public getScript()Lorg/checkerframework/org/apache/commons/text/diff/EditScript;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;-><init>()V

    .line 113
    .local v0, "script":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<Ljava/lang/Character;>;"
    const/4 v2, 0x0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/checkerframework/org/apache/commons/text/diff/EditScript;)V

    .line 114
    return-object v0
.end method
