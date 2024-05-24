.class public final Lcom/android/dx/dex/code/ArrayData;
.super Lcom/android/dx/dex/code/VariableSizeInsn;
.source "ArrayData.java"


# instance fields
.field private final arrayType:Lcom/android/dx/rop/cst/Constant;

.field private final elemWidth:I

.field private final initLength:I

.field private final user:Lcom/android/dx/dex/code/CodeAddress;

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V
    .locals 3
    .param p1, "position"    # Lcom/android/dx/rop/code/SourcePosition;
    .param p2, "user"    # Lcom/android/dx/dex/code/CodeAddress;
    .param p4, "arrayType"    # Lcom/android/dx/rop/cst/Constant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/rop/code/SourcePosition;",
            "Lcom/android/dx/dex/code/CodeAddress;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 64
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/Constant;>;"
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 66
    if-eqz p2, :cond_a

    .line 70
    if-eqz p3, :cond_9

    .line 74
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    .local v0, "sz":I
    if-lez v0, :cond_8

    .line 80
    iput-object p4, p0, Lcom/android/dx/dex/code/ArrayData;->arrayType:Lcom/android/dx/rop/cst/Constant;

    .line 82
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/android/dx/rop/cst/CstType;

    if-eq p4, v1, :cond_7

    sget-object v1, Lcom/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/android/dx/rop/cst/CstType;

    if-ne p4, v1, :cond_0

    goto :goto_3

    .line 85
    :cond_0
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    if-eq p4, v1, :cond_6

    sget-object v1, Lcom/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/android/dx/rop/cst/CstType;

    if-ne p4, v1, :cond_1

    goto :goto_2

    .line 88
    :cond_1
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    if-eq p4, v1, :cond_5

    sget-object v1, Lcom/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    if-ne p4, v1, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/android/dx/rop/cst/CstType;

    if-eq p4, v1, :cond_4

    sget-object v1, Lcom/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/android/dx/rop/cst/CstType;

    if-ne p4, v1, :cond_3

    goto :goto_0

    .line 95
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected constant type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_4
    :goto_0
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4

    .line 90
    :cond_5
    :goto_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4

    .line 87
    :cond_6
    :goto_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4

    .line 84
    :cond_7
    :goto_3
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    .line 97
    :goto_4
    iput-object p2, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    .line 98
    iput-object p3, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    .line 100
    return-void

    .line 77
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal number of init values"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "sz":I
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 172
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 173
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v3, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public codeSize()I
    .locals 2

    .line 105
    iget v0, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    .line 107
    .local v0, "sz":I
    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 5
    .param p1, "noteIndices"    # Z

    .line 185
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 186
    .local v0, "baseAddress":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 189
    .local v2, "sz":I
    const-string v3, "fill-array-data-payload // for fill-array-data @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 193
    const-string v4, "\n  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v4, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 5
    .param p1, "registers"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 163
    new-instance v0, Lcom/android/dx/dex/code/ArrayData;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/ArrayData;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    iget-object v3, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/dx/dex/code/ArrayData;->arrayType:Lcom/android/dx/rop/cst/Constant;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/code/ArrayData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V

    return-object v0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 5
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 113
    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 115
    .local v0, "sz":I
    const/16 v1, 0x300

    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 116
    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 117
    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 121
    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_4

    .line 144
    :sswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/Constant;

    .line 146
    .local v2, "cst":Lcom/android/dx/rop/cst/Constant;
    move-object v3, v2

    check-cast v3, Lcom/android/dx/rop/cst/CstLiteral64;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstLiteral64;->getLongBits()J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeLong(J)V

    .line 144
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    goto :goto_4

    .line 137
    :sswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/Constant;

    .line 139
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    move-object v3, v2

    check-cast v3, Lcom/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 137
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    .end local v1    # "i":I
    :cond_1
    goto :goto_4

    .line 130
    :sswitch_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 131
    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/Constant;

    .line 132
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    move-object v3, v2

    check-cast v3, Lcom/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v3

    int-to-short v3, v3

    invoke-interface {p1, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 130
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 134
    .end local v1    # "i":I
    :cond_2
    goto :goto_4

    .line 123
    :sswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_3

    .line 124
    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/Constant;

    .line 125
    .restart local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    move-object v3, v2

    check-cast v3, Lcom/android/dx/rop/cst/CstLiteral32;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result v3

    int-to-byte v3, v3

    invoke-interface {p1, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 123
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 127
    .end local v1    # "i":I
    :cond_3
    nop

    .line 155
    :goto_4
    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    .line 156
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 158
    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
