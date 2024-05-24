.class public final Lcom/android/dx/dex/code/SwitchData;
.super Lcom/android/dx/dex/code/VariableSizeInsn;
.source "SwitchData.java"


# instance fields
.field private final cases:Lcom/android/dx/util/IntList;

.field private final packed:Z

.field private final targets:[Lcom/android/dx/dex/code/CodeAddress;

.field private final user:Lcom/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V
    .locals 3
    .param p1, "position"    # Lcom/android/dx/rop/code/SourcePosition;
    .param p2, "user"    # Lcom/android/dx/dex/code/CodeAddress;
    .param p3, "cases"    # Lcom/android/dx/util/IntList;
    .param p4, "targets"    # [Lcom/android/dx/dex/code/CodeAddress;

    .line 63
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 65
    if-eqz p2, :cond_4

    .line 69
    if-eqz p3, :cond_3

    .line 73
    if-eqz p4, :cond_2

    .line 77
    invoke-virtual {p3}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 79
    .local v0, "sz":I
    array-length v1, p4

    if-ne v0, v1, :cond_1

    .line 83
    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 87
    iput-object p2, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    .line 88
    iput-object p3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    .line 89
    iput-object p4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    .line 90
    invoke-static {p3}, Lcom/android/dx/dex/code/SwitchData;->shouldPack(Lcom/android/dx/util/IntList;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    .line 91
    return-void

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "too many cases"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cases / targets mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v0    # "sz":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targets == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static packedCodeSize(Lcom/android/dx/util/IntList;)J
    .locals 9
    .param p0, "cases"    # Lcom/android/dx/util/IntList;

    .line 211
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 212
    .local v0, "sz":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v1

    int-to-long v1, v1

    .line 213
    .local v1, "low":J
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    int-to-long v3, v3

    .line 214
    .local v3, "high":J
    sub-long v5, v3, v1

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    .line 216
    .local v5, "result":J
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    move-wide v7, v5

    goto :goto_0

    :cond_0
    const-wide/16 v7, -0x1

    :goto_0
    return-wide v7
.end method

.method private static shouldPack(Lcom/android/dx/util/IntList;)Z
    .locals 11
    .param p0, "cases"    # Lcom/android/dx/util/IntList;

    .line 240
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 242
    .local v0, "sz":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 243
    return v2

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/android/dx/util/IntList;)J

    move-result-wide v3

    .line 247
    .local v3, "packedSize":J
    invoke-static {p0}, Lcom/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/android/dx/util/IntList;)J

    move-result-wide v5

    .line 256
    .local v5, "sparseSize":J
    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-ltz v1, :cond_1

    const-wide/16 v7, 0x5

    mul-long/2addr v7, v5

    const-wide/16 v9, 0x4

    div-long/2addr v7, v9

    cmp-long v1, v3, v7

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static sparseCodeSize(Lcom/android/dx/util/IntList;)J
    .locals 5
    .param p0, "cases"    # Lcom/android/dx/util/IntList;

    .line 227
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 229
    .local v0, "sz":I
    int-to-long v1, v0

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v1, v1

    .line 167
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 168
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v3, v2}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public codeSize()I
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-static {v0}, Lcom/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/android/dx/util/IntList;)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    .line 97
    invoke-static {v0}, Lcom/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/android/dx/util/IntList;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 96
    :goto_0
    return v0
.end method

.method public isPacked()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 7
    .param p1, "noteIndices"    # Z

    .line 180
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 181
    .local v0, "baseAddress":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v2, v2

    .line 184
    .local v2, "sz":I
    iget-boolean v3, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v3, :cond_0

    const-string v3, "packed"

    goto :goto_0

    :cond_0
    const-string v3, "sparse"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v3, "-switch-payload // for switch @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v4

    .line 190
    .local v4, "absTarget":I
    sub-int v5, v4, v0

    .line 191
    .local v5, "relTarget":I
    const-string v6, "\n  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v6, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v6, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v6, " // "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {v5}, Lcom/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .end local v4    # "absTarget":I
    .end local v5    # "relTarget":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 5
    .param p1, "registers"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 149
    new-instance v0, Lcom/android/dx/dex/code/SwitchData;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/SwitchData;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/code/SwitchData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V

    return-object v0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 11
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 103
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 104
    .local v0, "baseAddress":I
    sget-object v1, Lcom/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/code/InsnFormat;->codeSize()I

    move-result v1

    .line 105
    .local v1, "defaultTarget":I
    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v2, v2

    .line 107
    .local v2, "sz":I
    iget-boolean v3, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v3, :cond_4

    .line 108
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v4, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    .line 109
    .local v4, "firstCase":I
    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 110
    .local v3, "lastCase":I
    :goto_1
    sub-int v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    .line 112
    .local v5, "outSz":I
    const/16 v6, 0x100

    invoke-interface {p1, v6}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 113
    invoke-interface {p1, v5}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 114
    invoke-interface {p1, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, "caseAt":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v5, :cond_3

    .line 118
    add-int v8, v4, v7

    .line 119
    .local v8, "outCase":I
    iget-object v9, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v9, v6}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v9

    .line 122
    .local v9, "oneCase":I
    if-le v9, v8, :cond_2

    .line 123
    move v10, v1

    .local v10, "relTarget":I
    goto :goto_3

    .line 125
    .end local v10    # "relTarget":I
    :cond_2
    iget-object v10, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v10

    sub-int/2addr v10, v0

    .line 126
    .restart local v10    # "relTarget":I
    add-int/lit8 v6, v6, 0x1

    .line 129
    :goto_3
    invoke-interface {p1, v10}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 117
    .end local v8    # "outCase":I
    .end local v9    # "oneCase":I
    .end local v10    # "relTarget":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 131
    .end local v3    # "lastCase":I
    .end local v4    # "firstCase":I
    .end local v5    # "outSz":I
    .end local v6    # "caseAt":I
    .end local v7    # "i":I
    :cond_3
    goto :goto_6

    .line 132
    :cond_4
    const/16 v3, 0x200

    invoke-interface {p1, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 133
    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 135
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_5

    .line 136
    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v4, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 139
    .end local v3    # "i":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v2, :cond_6

    .line 140
    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v4

    sub-int/2addr v4, v0

    .line 141
    .local v4, "relTarget":I
    invoke-interface {p1, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 139
    .end local v4    # "relTarget":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 144
    .end local v3    # "i":I
    :cond_6
    :goto_6
    return-void
.end method
