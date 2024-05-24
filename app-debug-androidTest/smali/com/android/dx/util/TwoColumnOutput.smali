.class public final Lcom/android/dx/util/TwoColumnOutput;
.super Ljava/lang/Object;
.source "TwoColumnOutput.java"


# instance fields
.field private final leftBuf:Ljava/lang/StringBuffer;

.field private final leftColumn:Lcom/android/dx/util/IndentingWriter;

.field private final leftWidth:I

.field private final out:Ljava/io/Writer;

.field private final rightBuf:Ljava/lang/StringBuffer;

.field private final rightColumn:Lcom/android/dx/util/IndentingWriter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "leftWidth"    # I
    .param p3, "rightWidth"    # I
    .param p4, "spacer"    # Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;IILjava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "leftWidth"    # I
    .param p3, "rightWidth"    # I
    .param p4, "spacer"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_3

    .line 94
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    .line 98
    if-lt p3, v0, :cond_1

    .line 102
    if-eqz p4, :cond_0

    .line 106
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 107
    .local v0, "leftWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    move-object v1, v2

    .line 109
    .local v1, "rightWriter":Ljava/io/StringWriter;
    iput-object p1, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    .line 110
    iput p2, p0, Lcom/android/dx/util/TwoColumnOutput;->leftWidth:I

    .line 111
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    .line 113
    new-instance v2, Lcom/android/dx/util/IndentingWriter;

    invoke-direct {v2, v0, p2}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    .line 114
    new-instance v2, Lcom/android/dx/util/IndentingWriter;

    invoke-direct {v2, v1, p3, p4}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    .line 116
    return-void

    .line 103
    .end local v0    # "leftWriter":Ljava/io/StringWriter;
    .end local v1    # "rightWriter":Ljava/io/StringWriter;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spacer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rightWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 237
    .local v0, "len":I
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 238
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 240
    :cond_0
    return-void
.end method

.method private flushLeft()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    invoke-static {v0, v1}, Lcom/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IndentingWriter;->write(I)V

    .line 208
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->outputFullLines()V

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method private flushRight()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    invoke-static {v0, v1}, Lcom/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IndentingWriter;->write(I)V

    .line 221
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->outputFullLines()V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method private outputFullLines()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "leftLen":I
    if-gez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "rightLen":I
    if-gez v1, :cond_1

    .line 180
    return-void

    .line 183
    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 184
    iget-object v3, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget-object v4, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 187
    :cond_2
    if-eqz v1, :cond_3

    .line 188
    iget-object v3, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget v4, p0, Lcom/android/dx/util/TwoColumnOutput;->leftWidth:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/android/dx/util/TwoColumnOutput;->writeSpaces(Ljava/io/Writer;I)V

    .line 189
    iget-object v3, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget-object v4, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    :cond_3
    iget-object v3, p0, Lcom/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 194
    iget-object v3, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 195
    iget-object v3, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 196
    .end local v0    # "leftLen":I
    .end local v1    # "rightLen":I
    goto :goto_0
.end method

.method public static toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "width1"    # I
    .param p2, "spacer"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "width2"    # I

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 63
    .local v0, "len1":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 65
    .local v1, "len2":I
    new-instance v2, Ljava/io/StringWriter;

    add-int v3, v0, v1

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 66
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/dx/util/TwoColumnOutput;

    invoke-direct {v3, v2, p1, p4, p2}, Lcom/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    .line 70
    .local v3, "twoOut":Lcom/android/dx/util/TwoColumnOutput;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/dx/util/TwoColumnOutput;->getLeft()Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Lcom/android/dx/util/TwoColumnOutput;->getRight()Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 76
    invoke-virtual {v3}, Lcom/android/dx/util/TwoColumnOutput;->flush()V

    .line 77
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 72
    :catch_0
    move-exception v4

    .line 73
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "shouldn\'t happen"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static writeSpaces(Ljava/io/Writer;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "amt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    nop

    :goto_0
    if-lez p1, :cond_0

    .line 250
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 251
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    invoke-static {v0, v1}, Lcom/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 156
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    invoke-static {v0, v1}, Lcom/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 157
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->outputFullLines()V

    .line 158
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->flushLeft()V

    .line 159
    invoke-direct {p0}, Lcom/android/dx/util/TwoColumnOutput;->flushRight()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    nop

    .line 163
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLeft()Ljava/io/Writer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/android/dx/util/IndentingWriter;

    return-object v0
.end method

.method public getRight()Ljava/io/Writer;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/android/dx/util/IndentingWriter;

    return-object v0
.end method
