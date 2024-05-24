.class public abstract Lcom/android/dx/command/dump/BaseDumper;
.super Ljava/lang/Object;
.source "BaseDumper.java"

# interfaces
.implements Lcom/android/dx/cf/iface/ParseObserver;


# instance fields
.field protected args:Lcom/android/dx/command/dump/Args;

.field private final bytes:[B

.field protected final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private final filePath:Ljava/lang/String;

.field private final hexCols:I

.field private indent:I

.field private final out:Ljava/io/PrintStream;

.field private final rawBytes:Z

.field private readBytes:I

.field private separator:Ljava/lang/String;

.field private final strictParse:Z

.field private final width:I


# direct methods
.method public constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/android/dx/command/dump/Args;)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "args"    # Lcom/android/dx/command/dump/Args;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/dx/command/dump/BaseDumper;->bytes:[B

    .line 87
    iget-boolean v0, p4, Lcom/android/dx/command/dump/Args;->rawBytes:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    .line 88
    iput-object p2, p0, Lcom/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    .line 89
    iget v1, p4, Lcom/android/dx/command/dump/Args;->width:I

    if-gtz v1, :cond_0

    const/16 v1, 0x4f

    goto :goto_0

    :cond_0
    iget v1, p4, Lcom/android/dx/command/dump/Args;->width:I

    :goto_0
    iput v1, p0, Lcom/android/dx/command/dump/BaseDumper;->width:I

    .line 90
    iput-object p3, p0, Lcom/android/dx/command/dump/BaseDumper;->filePath:Ljava/lang/String;

    .line 91
    iget-boolean v2, p4, Lcom/android/dx/command/dump/Args;->strictParse:Z

    iput-boolean v2, p0, Lcom/android/dx/command/dump/BaseDumper;->strictParse:Z

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    .line 93
    if-eqz v0, :cond_1

    const-string v0, "|"

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    .line 94
    iput v2, p0, Lcom/android/dx/command/dump/BaseDumper;->readBytes:I

    .line 95
    iput-object p4, p0, Lcom/android/dx/command/dump/BaseDumper;->args:Lcom/android/dx/command/dump/Args;

    .line 97
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/DexOptions;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 99
    add-int/lit8 v1, v1, -0x5

    div-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v1, -0x2

    .line 100
    .local v0, "hexCols":I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 101
    const/4 v0, 0x6

    goto :goto_2

    .line 102
    :cond_2
    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 103
    const/16 v0, 0xa

    .line 105
    :cond_3
    :goto_2
    iput v0, p0, Lcom/android/dx/command/dump/BaseDumper;->hexCols:I

    .line 106
    return-void
.end method

.method static computeParamWidth(Lcom/android/dx/cf/code/ConcreteMethod;Z)I
    .locals 1
    .param p0, "meth"    # Lcom/android/dx/cf/code/ConcreteMethod;
    .param p1, "isStatic"    # Z

    .line 115
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v0

    .line 115
    return v0
.end method


# virtual methods
.method public changeIndent(I)V
    .locals 3
    .param p1, "indentDelta"    # I

    .line 122
    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    .line 124
    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_0

    const-string v0, "|"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    if-ge v0, v1, :cond_1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public endParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/android/dx/cf/iface/Member;)V
    .locals 0
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "member"    # Lcom/android/dx/cf/iface/Member;

    .line 154
    return-void
.end method

.method protected final getBytes()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->bytes:[B

    return-object v0
.end method

.method protected final getFilePath()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRawBytes()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    return v0
.end method

.method protected final getReadBytes()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->readBytes:I

    return v0
.end method

.method protected final getStrictParse()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->strictParse:Z

    return v0
.end method

.method protected final getWidth1()I
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_0

    .line 228
    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->hexCols:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    return v1

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final getWidth2()I
    .locals 3

    .line 240
    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getWidth1()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 241
    .local v0, "w1":I
    :goto_0
    iget v1, p0, Lcom/android/dx/command/dump/BaseDumper;->width:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method protected final hexDump(II)Ljava/lang/String;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 252
    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->bytes:[B

    iget v4, p0, Lcom/android/dx/command/dump/BaseDumper;->hexCols:I

    const/4 v5, 0x4

    move v1, p1

    move v2, p2

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V
    .locals 3
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "human"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p1, p2}, Lcom/android/dx/util/ByteArray;->underlyingOffset(I)I

    move-result p2

    .line 135
    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getRawBytes()Z

    move-result v0

    .line 137
    .local v0, "rawBytes":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/dx/command/dump/BaseDumper;->hexDump(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 138
    .local v1, "hex":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1, p4}, Lcom/android/dx/command/dump/BaseDumper;->twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dx/command/dump/BaseDumper;->print(Ljava/lang/String;)V

    .line 139
    iget v2, p0, Lcom/android/dx/command/dump/BaseDumper;->readBytes:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/android/dx/command/dump/BaseDumper;->readBytes:I

    .line 140
    return-void
.end method

.method protected final print(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method protected final println(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public startParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "offset"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 147
    return-void
.end method

.method protected final twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getWidth1()I

    move-result v0

    .line 265
    .local v0, "w1":I
    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getWidth2()I

    move-result v1

    .line 268
    .local v1, "w2":I
    if-nez v0, :cond_2

    .line 269
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 270
    .local v2, "len2":I
    new-instance v3, Ljava/io/StringWriter;

    mul-int/lit8 v4, v2, 0x2

    invoke-direct {v3, v4}, Ljava/io/StringWriter;-><init>(I)V

    .line 271
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v4, Lcom/android/dx/util/IndentingWriter;

    iget-object v5, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-direct {v4, v3, v1, v5}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    .line 273
    .local v4, "iw":Lcom/android/dx/util/IndentingWriter;
    invoke-virtual {v4, p2}, Lcom/android/dx/util/IndentingWriter;->write(Ljava/lang/String;)V

    .line 274
    const/16 v5, 0xa

    if-eqz v2, :cond_0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_1

    .line 275
    :cond_0
    invoke-virtual {v4, v5}, Lcom/android/dx/util/IndentingWriter;->write(I)V

    .line 277
    :cond_1
    invoke-virtual {v4}, Lcom/android/dx/util/IndentingWriter;->flush()V

    .line 279
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 281
    .end local v2    # "len2":I
    .end local v3    # "sw":Ljava/io/StringWriter;
    .end local v4    # "iw":Lcom/android/dx/util/IndentingWriter;
    :cond_2
    iget-object v2, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2, v1}, Lcom/android/dx/util/TwoColumnOutput;->toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
