.class Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# instance fields
.field doubleVal:D

.field floatVal:F

.field hashCode:I

.field intVal:I

.field longVal:J

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:C


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V
    .locals 2
    .param p1, "i"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-char v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    iput-char v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    .line 99
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->intVal:I

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->intVal:I

    .line 100
    iget-wide v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->longVal:J

    iput-wide v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->longVal:J

    .line 101
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->floatVal:F

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->floatVal:F

    .line 102
    iget-wide v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->doubleVal:D

    iput-wide v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->doubleVal:D

    .line 103
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    .line 106
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    .line 107
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 229
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    return v1

    .line 232
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 233
    .local v0, "c":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    iget-char v2, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    iget-char v3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    if-ne v2, v3, :cond_7

    .line 234
    const/4 v2, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 254
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_1

    .line 248
    :sswitch_0
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 248
    :goto_0
    return v1

    .line 238
    :sswitch_1
    iget-wide v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->longVal:J

    iget-wide v5, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->longVal:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 236
    :sswitch_2
    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->intVal:I

    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->intVal:I

    if-ne v3, v4, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 240
    :sswitch_3
    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->floatVal:F

    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->floatVal:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 242
    :sswitch_4
    iget-wide v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->doubleVal:D

    iget-wide v5, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->doubleVal:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 246
    :sswitch_5
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 256
    :cond_6
    nop

    .line 254
    :goto_1
    return v1

    .line 259
    :cond_7
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_2
        0x4a -> :sswitch_1
        0x53 -> :sswitch_5
        0x54 -> :sswitch_0
        0x73 -> :sswitch_5
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 1

    .line 263
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    return v0
.end method

.method set(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # C
    .param p2, "strVal1"    # Ljava/lang/String;
    .param p3, "strVal2"    # Ljava/lang/String;
    .param p4, "strVal3"    # Ljava/lang/String;

    .line 167
    iput-char p1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    .line 168
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    .line 171
    const v0, 0x7fffffff

    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 186
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    .line 188
    return-void

    .line 178
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 179
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    .line 180
    return-void

    .line 175
    :sswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    .line 176
    return-void

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_0
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method set(D)V
    .locals 2
    .param p1, "doubleVal"    # D

    .line 148
    const/16 v0, 0x44

    iput-char v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    .line 149
    iput-wide p1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->doubleVal:D

    .line 150
    double-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    .line 151
    return-void
.end method

.method set(F)V
    .locals 2
    .param p1, "floatVal"    # F

    .line 137
    const/16 v0, 0x46

    iput-char v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    .line 138
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->floatVal:F

    .line 139
    float-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    .line 140
    return-void
.end method

.method set(I)V
    .locals 2
    .param p1, "intVal"    # I

    .line 115
    const/16 v0, 0x49

    iput-char v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    .line 116
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->intVal:I

    .line 117
    const v1, 0x7fffffff

    add-int/2addr v0, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    .line 118
    return-void
.end method

.method set(J)V
    .locals 2
    .param p1, "longVal"    # J

    .line 126
    const/16 v0, 0x4a

    iput-char v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    .line 127
    iput-wide p1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->longVal:J

    .line 128
    long-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->hashCode:I

    .line 129
    return-void
.end method

.method write(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;)V
    .locals 4
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 191
    iget-char v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 208
    :sswitch_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 209
    goto :goto_0

    .line 214
    :sswitch_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    goto :goto_0

    .line 205
    :sswitch_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConst(Ljava/lang/Object;)I

    .line 206
    goto :goto_0

    .line 223
    :sswitch_3
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 220
    :sswitch_4
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 221
    goto :goto_0

    .line 196
    :sswitch_5
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->longVal:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConst(Ljava/lang/Object;)I

    .line 197
    goto :goto_0

    .line 193
    :sswitch_6
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->intVal:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConst(Ljava/lang/Object;)I

    .line 194
    goto :goto_0

    .line 217
    :sswitch_7
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    goto :goto_0

    .line 199
    :sswitch_8
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->floatVal:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConst(Ljava/lang/Object;)I

    .line 200
    goto :goto_0

    .line 202
    :sswitch_9
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->doubleVal:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConst(Ljava/lang/Object;)I

    .line 203
    goto :goto_0

    .line 211
    :sswitch_a
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    .line 212
    nop

    .line 226
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_a
        0x44 -> :sswitch_9
        0x46 -> :sswitch_8
        0x47 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x4d -> :sswitch_4
        0x4e -> :sswitch_3
        0x53 -> :sswitch_2
        0x54 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method
