.class public Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;
.source "TraceAnnotationVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;


# instance fields
.field protected av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

.field private valueNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAbstractVisitor;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    .line 58
    return-void
.end method

.method private appendComa(I)V
    .locals 2
    .param p1, "i"    # I

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_0
    return-void
.end method

.method private visitBoolean(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 184
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 185
    return-void
.end method

.method private visitByte(B)V
    .locals 2
    .param p1, "value"    # B

    .line 180
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "(byte)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 181
    return-void
.end method

.method private visitChar(C)V
    .locals 2
    .param p1, "value"    # C

    .line 172
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "(char)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 173
    return-void
.end method

.method private visitDouble(D)V
    .locals 2
    .param p1, "value"    # D

    .line 168
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    return-void
.end method

.method private visitFloat(F)V
    .locals 2
    .param p1, "value"    # F

    .line 164
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    return-void
.end method

.method private visitInt(I)V
    .locals 1
    .param p1, "value"    # I

    .line 156
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 157
    return-void
.end method

.method private visitLong(J)V
    .locals 2
    .param p1, "value"    # J

    .line 160
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    return-void
.end method

.method private visitShort(S)V
    .locals 2
    .param p1, "value"    # S

    .line 176
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "(short)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    return-void
.end method

.method private visitString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private visitType(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 2
    .param p1, "value"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 192
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    return-void
.end method


# virtual methods
.method protected createTraceAnnotationVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
    .locals 1

    .line 264
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;-><init>()V

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 66
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 74
    :cond_1
    instance-of v0, p2, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_2

    .line 75
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitType(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    goto/16 :goto_a

    .line 76
    :cond_2
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 77
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitByte(B)V

    goto/16 :goto_a

    .line 78
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 79
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitBoolean(Z)V

    goto/16 :goto_a

    .line 80
    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 81
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitShort(S)V

    goto/16 :goto_a

    .line 82
    :cond_5
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_6

    .line 83
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitChar(C)V

    goto/16 :goto_a

    .line 84
    :cond_6
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 85
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitInt(I)V

    goto/16 :goto_a

    .line 86
    :cond_7
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 87
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitFloat(F)V

    goto/16 :goto_a

    .line 88
    :cond_8
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 89
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitLong(J)V

    goto/16 :goto_a

    .line 90
    :cond_9
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 91
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitDouble(D)V

    goto/16 :goto_a

    .line 92
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    instance-of v0, p2, [B

    if-eqz v0, :cond_c

    .line 95
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    .line 96
    .local v0, "v":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 97
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 98
    aget-byte v2, v0, v1

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitByte(B)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "v":[B
    .end local v1    # "i":I
    :cond_b
    goto/16 :goto_9

    :cond_c
    instance-of v0, p2, [Z

    if-eqz v0, :cond_e

    .line 101
    move-object v0, p2

    check-cast v0, [Z

    check-cast v0, [Z

    .line 102
    .local v0, "v":[Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 103
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 104
    aget-boolean v2, v0, v1

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitBoolean(Z)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "v":[Z
    .end local v1    # "i":I
    :cond_d
    goto/16 :goto_9

    :cond_e
    instance-of v0, p2, [S

    if-eqz v0, :cond_10

    .line 107
    move-object v0, p2

    check-cast v0, [S

    check-cast v0, [S

    .line 108
    .local v0, "v":[S
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_f

    .line 109
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 110
    aget-short v2, v0, v1

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitShort(S)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 112
    .end local v0    # "v":[S
    .end local v1    # "i":I
    :cond_f
    goto/16 :goto_9

    :cond_10
    instance-of v0, p2, [C

    if-eqz v0, :cond_12

    .line 113
    move-object v0, p2

    check-cast v0, [C

    check-cast v0, [C

    .line 114
    .local v0, "v":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 115
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 116
    aget-char v2, v0, v1

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitChar(C)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 118
    .end local v0    # "v":[C
    .end local v1    # "i":I
    :cond_11
    goto :goto_9

    :cond_12
    instance-of v0, p2, [I

    if-eqz v0, :cond_14

    .line 119
    move-object v0, p2

    check-cast v0, [I

    check-cast v0, [I

    .line 120
    .local v0, "v":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 121
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 122
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitInt(I)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 124
    .end local v0    # "v":[I
    .end local v1    # "i":I
    :cond_13
    goto :goto_9

    :cond_14
    instance-of v0, p2, [J

    if-eqz v0, :cond_16

    .line 125
    move-object v0, p2

    check-cast v0, [J

    check-cast v0, [J

    .line 126
    .local v0, "v":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 127
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 128
    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitLong(J)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 130
    .end local v0    # "v":[J
    .end local v1    # "i":I
    :cond_15
    goto :goto_9

    :cond_16
    instance-of v0, p2, [F

    if-eqz v0, :cond_18

    .line 131
    move-object v0, p2

    check-cast v0, [F

    check-cast v0, [F

    .line 132
    .local v0, "v":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 133
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 134
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitFloat(F)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v0    # "v":[F
    .end local v1    # "i":I
    :cond_17
    goto :goto_8

    .line 136
    :cond_18
    instance-of v0, p2, [D

    if-eqz v0, :cond_19

    .line 137
    move-object v0, p2

    check-cast v0, [D

    check-cast v0, [D

    .line 138
    .local v0, "v":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 139
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 140
    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitDouble(D)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 136
    .end local v0    # "v":[D
    .end local v1    # "i":I
    :cond_19
    :goto_8
    nop

    .line 143
    :cond_1a
    :goto_9
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 145
    :cond_1b
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    :goto_a
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    if-eqz v0, :cond_1c

    .line 151
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :cond_1c
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 219
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 226
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->createTraceAnnotationVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    move-result-object v0

    .line 228
    .local v0, "tav":Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->text:Ljava/util/List;

    const-string v2, ")"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 233
    :cond_1
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 238
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->createTraceAnnotationVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;

    move-result-object v0

    .line 245
    .local v0, "tav":Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->text:Ljava/util/List;

    const-string v2, "}"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    if-eqz v1, :cond_1

    .line 248
    invoke-interface {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 250
    :cond_1
    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 257
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 201
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->valueNumber:I

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendComa(I)V

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->appendDescriptor(ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_1
    return-void
.end method
