.class public Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;
.source "ASMifierAbstractVisitor.java"


# instance fields
.field labelNames:Ljava/util/HashMap;

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 8
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "cst"    # Ljava/lang/Object;

    .line 171
    if-nez p1, :cond_0

    .line 172
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 173
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 174
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 175
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/Type;

    const-string v1, "\")"

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "Type.getType(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 179
    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    const-string v2, ")"

    if-eqz v0, :cond_3

    .line 180
    const-string v0, "new Byte((byte)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 181
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 182
    const-string v0, "new Boolean("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 183
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 184
    const-string v0, "new Short((short)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 185
    :cond_5
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_6

    .line 186
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 187
    .local v0, "c":I
    const-string v1, "new Character((char)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    .end local v0    # "c":I
    goto/16 :goto_11

    :cond_6
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 189
    const-string v0, "new Integer("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 190
    :cond_7
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 191
    const-string v0, "new Float(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 192
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 193
    const-string v0, "new Long("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "L)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 194
    :cond_9
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 195
    const-string v0, "new Double(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 196
    :cond_a
    instance-of v0, p1, [B

    const-string v1, ""

    const-string v2, ","

    const-string v3, "}"

    if-eqz v0, :cond_d

    .line 197
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    .line 198
    .local v0, "v":[B
    const-string v4, "new byte[] {"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_c

    .line 200
    if-nez v4, :cond_b

    move-object v5, v1

    goto :goto_1

    :cond_b
    move-object v5, v2

    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-byte v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v4    # "i":I
    :cond_c
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    .end local v0    # "v":[B
    goto/16 :goto_11

    :cond_d
    instance-of v0, p1, [Z

    if-eqz v0, :cond_10

    .line 204
    move-object v0, p1

    check-cast v0, [Z

    check-cast v0, [Z

    .line 205
    .local v0, "v":[Z
    const-string v4, "new boolean[] {"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_f

    .line 207
    if-nez v4, :cond_e

    move-object v5, v1

    goto :goto_3

    :cond_e
    move-object v5, v2

    :goto_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-boolean v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 209
    .end local v4    # "i":I
    :cond_f
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    .end local v0    # "v":[Z
    goto/16 :goto_11

    :cond_10
    instance-of v0, p1, [S

    if-eqz v0, :cond_13

    .line 211
    move-object v0, p1

    check-cast v0, [S

    check-cast v0, [S

    .line 212
    .local v0, "v":[S
    const-string v4, "new short[] {"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v5, v0

    if-ge v4, v5, :cond_12

    .line 214
    if-nez v4, :cond_11

    move-object v5, v1

    goto :goto_5

    :cond_11
    move-object v5, v2

    :goto_5
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "(short)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-short v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 216
    .end local v4    # "i":I
    :cond_12
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    .end local v0    # "v":[S
    goto/16 :goto_11

    :cond_13
    instance-of v0, p1, [C

    if-eqz v0, :cond_16

    .line 218
    move-object v0, p1

    check-cast v0, [C

    check-cast v0, [C

    .line 219
    .local v0, "v":[C
    const-string v4, "new char[] {"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    array-length v5, v0

    if-ge v4, v5, :cond_15

    .line 221
    if-nez v4, :cond_14

    move-object v5, v1

    goto :goto_7

    :cond_14
    move-object v5, v2

    :goto_7
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 222
    const-string v6, "(char)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-char v6, v0, v4

    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 220
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 225
    .end local v4    # "i":I
    :cond_15
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    .end local v0    # "v":[C
    goto/16 :goto_11

    :cond_16
    instance-of v0, p1, [I

    if-eqz v0, :cond_19

    .line 227
    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    .line 228
    .local v0, "v":[I
    const-string v4, "new int[] {"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8
    array-length v5, v0

    if-ge v4, v5, :cond_18

    .line 230
    if-nez v4, :cond_17

    move-object v5, v1

    goto :goto_9

    :cond_17
    move-object v5, v2

    :goto_9
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 232
    .end local v4    # "i":I
    :cond_18
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    .end local v0    # "v":[I
    goto/16 :goto_11

    :cond_19
    instance-of v0, p1, [J

    if-eqz v0, :cond_1c

    .line 234
    move-object v0, p1

    check-cast v0, [J

    check-cast v0, [J

    .line 235
    .local v0, "v":[J
    const-string v4, "new long[] {"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_a
    array-length v5, v0

    if-ge v4, v5, :cond_1b

    .line 237
    if-nez v4, :cond_1a

    move-object v5, v1

    goto :goto_b

    :cond_1a
    move-object v5, v2

    :goto_b
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 239
    .end local v4    # "i":I
    :cond_1b
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    .end local v0    # "v":[J
    goto :goto_11

    :cond_1c
    instance-of v0, p1, [F

    if-eqz v0, :cond_1f

    .line 241
    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    .line 242
    .local v0, "v":[F
    const-string v4, "new float[] {"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_c
    array-length v5, v0

    if-ge v4, v5, :cond_1e

    .line 244
    if-nez v4, :cond_1d

    move-object v5, v1

    goto :goto_d

    :cond_1d
    move-object v5, v2

    :goto_d
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 246
    .end local v4    # "i":I
    :cond_1e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v0    # "v":[F
    goto :goto_10

    .line 247
    :cond_1f
    instance-of v0, p1, [D

    if-eqz v0, :cond_22

    .line 248
    move-object v0, p1

    check-cast v0, [D

    check-cast v0, [D

    .line 249
    .local v0, "v":[D
    const-string v4, "new double[] {"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_e
    array-length v5, v0

    if-ge v4, v5, :cond_21

    .line 251
    if-nez v4, :cond_20

    move-object v5, v1

    goto :goto_f

    :cond_20
    move-object v5, v2

    :goto_f
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 253
    .end local v4    # "i":I
    :cond_21
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 247
    .end local v0    # "v":[D
    :cond_22
    :goto_10
    nop

    .line 255
    :goto_11
    return-void
.end method


# virtual methods
.method appendConstant(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 79
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 80
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    const-string v2, "av0 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->name:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 83
    const-string v2, ".visitAnnotation("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ");\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;-><init>(I)V

    .line 88
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 4
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 129
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMifiable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "// ATTRIBUTE\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMifiable;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "attr"

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->labelNames:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMifiable;->asmify(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitAttribute(attr);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "// WARNING! skipped a non standard attribute of type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 147
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".visitEnd();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 106
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 107
    const-string v2, "xav0 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->name:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 109
    const-string v2, ".visitTypeAnnotation("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->appendConstant(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ");\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;-><init>(I)V

    .line 116
    .local v0, "xav":Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierTypeAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/ASMifierAbstractVisitor;->text:Ljava/util/List;

    const-string v2, "}\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object v0
.end method
