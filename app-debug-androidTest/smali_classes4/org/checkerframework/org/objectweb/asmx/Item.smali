.class final Lorg/checkerframework/org/objectweb/asmx/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field doubleVal:D

.field floatVal:F

.field hashCode:I

.field index:I

.field intVal:I

.field longVal:J

.field next:Lorg/checkerframework/org/objectweb/asmx/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    .line 133
    return-void
.end method

.method constructor <init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "i"    # Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    .line 143
    iget v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    .line 144
    iget v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 145
    iget-wide v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    iput-wide v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    .line 146
    iget v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->floatVal:F

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->floatVal:F

    .line 147
    iget-wide v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->doubleVal:D

    iput-wide v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->doubleVal:D

    .line 148
    iget-object v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    .line 149
    iget-object v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    .line 150
    iget-object v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal3:Ljava/lang/String;

    .line 151
    iget v0, p2, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 152
    return-void
.end method


# virtual methods
.method isEqualTo(Lorg/checkerframework/org/objectweb/asmx/Item;)Z
    .locals 7
    .param p1, "i"    # Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 286
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 287
    const/4 v0, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 318
    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    .line 319
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal3:Ljava/lang/String;

    .line 320
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v2, v0

    goto/16 :goto_2

    .line 303
    :sswitch_0
    iget-wide v3, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    iget-wide v5, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    move v2, v0

    :cond_0
    return v2

    .line 305
    :sswitch_1
    iget v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    if-ne v1, v3, :cond_1

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v0

    :cond_1
    return v2

    .line 310
    :sswitch_2
    iget-wide v3, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    iget-wide v5, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    nop

    .line 310
    :goto_0
    return v2

    .line 307
    :sswitch_3
    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    nop

    .line 307
    :goto_1
    return v2

    .line 295
    :sswitch_4
    iget-wide v3, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->doubleVal:D

    iget-wide v5, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->doubleVal:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_4

    move v2, v0

    :cond_4
    return v2

    .line 291
    :sswitch_5
    iget-wide v3, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    iget-wide v5, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    move v2, v0

    :cond_5
    return v2

    .line 293
    :sswitch_6
    iget v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->floatVal:F

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->floatVal:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    move v2, v0

    :cond_6
    return v2

    .line 289
    :sswitch_7
    iget v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    if-ne v1, v3, :cond_7

    move v2, v0

    :cond_7
    return v2

    .line 301
    :sswitch_8
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 320
    :cond_8
    nop

    .line 318
    :goto_2
    return v2

    .line 323
    :cond_9
    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_8
        0x8 -> :sswitch_8
        0xc -> :sswitch_3
        0x10 -> :sswitch_8
        0x12 -> :sswitch_2
        0x1e -> :sswitch_8
        0x1f -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method set(D)V
    .locals 2
    .param p1, "doubleVal"    # D

    .line 193
    const/4 v0, 0x6

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    .line 194
    iput-wide p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->doubleVal:D

    .line 195
    double-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 196
    return-void
.end method

.method set(F)V
    .locals 2
    .param p1, "floatVal"    # F

    .line 182
    const/4 v0, 0x4

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    .line 183
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->floatVal:F

    .line 184
    float-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 185
    return-void
.end method

.method set(I)V
    .locals 2
    .param p1, "intVal"    # I

    .line 160
    const/4 v0, 0x3

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    .line 161
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 162
    const v1, 0x7fffffff

    add-int/2addr v0, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 163
    return-void
.end method

.method set(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "hashCode"    # I

    .line 271
    const/16 v0, 0x21

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    .line 272
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 273
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 274
    return-void
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "strVal1"    # Ljava/lang/String;
    .param p3, "strVal2"    # Ljava/lang/String;
    .param p4, "strVal3"    # Ljava/lang/String;

    .line 213
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    .line 214
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    .line 216
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal3:Ljava/lang/String;

    .line 217
    const v0, 0x7fffffff

    sparse-switch p1, :sswitch_data_0

    .line 236
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 237
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 239
    return-void

    .line 227
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 228
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 229
    return-void

    .line 219
    :sswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 224
    :sswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 225
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_0
        0x10 -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method set(J)V
    .locals 2
    .param p1, "longVal"    # J

    .line 171
    const/4 v0, 0x5

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    .line 172
    iput-wide p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    .line 173
    long-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 174
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsmIndex"    # I

    .line 252
    const/16 v0, 0x12

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    .line 253
    int-to-long v1, p3

    iput-wide v1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->longVal:J

    .line 254
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal1:Ljava/lang/String;

    .line 255
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    .line 256
    nop

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, p3

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    const v0, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    .line 258
    return-void
.end method
