.class public Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;
.super Ljava/lang/Object;
.source "UnicodeEscapeProcessingProvider.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;,
        Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;,
        Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    }
.end annotation


# static fields
.field private static final BACKSLASH:C = '\\'

.field private static final CR:C = '\r'

.field private static final EOF:I = -0x1

.field private static final LF:C = '\n'


# instance fields
.field private _backslashSeen:Z

.field private _data:[C

.field private _input:Lorg/checkerframework/com/github/javaparser/Provider;

.field private final _inputLine:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

.field private _len:I

.field private final _mappingBuilder:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

.field private final _outputLine:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

.field private _pos:I


# direct methods
.method public constructor <init>(ILorg/checkerframework/com/github/javaparser/Provider;)V
    .locals 3
    .param p1, "bufferSize"    # I
    .param p2, "input"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "input"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    .line 50
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    .line 54
    new-instance v0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_inputLine:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    .line 56
    new-instance v1, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_outputLine:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    .line 58
    new-instance v2, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

    invoke-direct {v2, v1, v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;-><init>(Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;)V

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_mappingBuilder:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

    .line 73
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_input:Lorg/checkerframework/com/github/javaparser/Provider;

    .line 74
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/Provider;)V
    .locals 1
    .param p1, "input"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 66
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;-><init>(ILorg/checkerframework/com/github/javaparser/Provider;)V

    .line 67
    return-void
.end method

.method private backSlashSeen()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_backslashSeen:Z

    .line 149
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v0

    .line 150
    .local v0, "next":I
    const/16 v1, 0x5c

    sparse-switch v0, :sswitch_data_0

    .line 158
    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 159
    return v1

    .line 155
    :sswitch_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->unicodeStartSeen()I

    move-result v1

    return v1

    .line 153
    :sswitch_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private clearBackSlashSeen(I)I
    .locals 1
    .param p1, "next"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_backslashSeen:Z

    .line 143
    return p1
.end method

.method private static digit(I)I
    .locals 2
    .param p0, "ch"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    .line 233
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 234
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 236
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    .line 237
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 239
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    .line 240
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 242
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private fillBuffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    .line 276
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_input:Lorg/checkerframework/com/github/javaparser/Provider;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    array-length v3, v2

    invoke-interface {v1, v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/Provider;->read([CII)I

    move-result v0

    .line 277
    .local v0, "direct":I
    if-eqz v0, :cond_0

    .line 278
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    .line 280
    :cond_0
    return v0
.end method

.method private isBufferEmpty()Z
    .locals 2

    .line 271
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextBufferedChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    nop

    :goto_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->fillBuffer()I

    move-result v0

    .line 263
    .local v0, "direct":I
    if-gez v0, :cond_0

    .line 264
    const/4 v1, -0x1

    return v1

    .line 266
    .end local v0    # "direct":I
    :cond_0
    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    aget-char v0, v0, v1

    return v0
.end method

.method private nextInputChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->nextBufferedChar()I

    move-result v0

    .line 252
    .local v0, "result":I
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_inputLine:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->process(I)I

    move-result v1

    return v1
.end method

.method private nextOutputChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v0

    .line 124
    .local v0, "next":I
    sparse-switch v0, :sswitch_data_0

    .line 136
    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->clearBackSlashSeen(I)I

    move-result v1

    return v1

    .line 128
    :sswitch_0
    iget-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_backslashSeen:Z

    if-eqz v1, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->clearBackSlashSeen(I)I

    move-result v1

    return v1

    .line 131
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->backSlashSeen()I

    move-result v1

    return v1

    .line 126
    :sswitch_1
    const/4 v1, -0x1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private pushBack(I)V
    .locals 5
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    .line 284
    if-gez p1, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    array-length v1, v0

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    .line 290
    array-length v0, v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    goto :goto_0

    .line 291
    :cond_1
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    if-nez v0, :cond_3

    .line 292
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 294
    array-length v0, v2

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [C

    .line 295
    .local v0, "newData":[C
    array-length v1, v0

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    .line 296
    array-length v1, v0

    array-length v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    .line 297
    array-length v3, v2

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    .line 299
    .end local v0    # "newData":[C
    goto :goto_0

    .line 301
    :cond_2
    sub-int v0, v1, v0

    .line 302
    .local v0, "cnt":I
    array-length v3, v2

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    .line 303
    array-length v1, v2

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    .line 304
    invoke-static {v2, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    .end local v0    # "cnt":I
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 308
    return-void
.end method

.method private pushBackUs(I)V
    .locals 2
    .param p1, "cnt"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cnt"
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 228
    const/16 v1, 0x75

    invoke-direct {p0, v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "n":I
    :cond_0
    return-void
.end method

.method private readDigits(II)I
    .locals 9
    .param p1, "uCnt"    # I
    .param p2, "next3"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uCnt",
            "next3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->digit(I)I

    move-result v0

    .line 186
    .local v0, "digit3":I
    const/16 v1, 0x5c

    if-gez v0, :cond_0

    .line 187
    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 188
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    .line 189
    return v1

    .line 192
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v2

    .line 193
    .local v2, "next2":I
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->digit(I)I

    move-result v3

    .line 194
    .local v3, "digit2":I
    if-gez v3, :cond_1

    .line 195
    invoke-direct {p0, v2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 196
    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 197
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    .line 198
    return v1

    .line 201
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v4

    .line 202
    .local v4, "next1":I
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->digit(I)I

    move-result v5

    .line 203
    .local v5, "digit1":I
    if-gez v5, :cond_2

    .line 204
    invoke-direct {p0, v4}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 205
    invoke-direct {p0, v2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 206
    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 207
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    .line 208
    return v1

    .line 211
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v6

    .line 212
    .local v6, "next0":I
    invoke-static {v6}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->digit(I)I

    move-result v7

    .line 213
    .local v7, "digit0":I
    if-gez v7, :cond_3

    .line 214
    invoke-direct {p0, v6}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 215
    invoke-direct {p0, v4}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 216
    invoke-direct {p0, v2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 217
    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    .line 218
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    .line 219
    return v1

    .line 222
    :cond_3
    shl-int/lit8 v1, v0, 0xc

    shl-int/lit8 v8, v3, 0x8

    or-int/2addr v1, v8

    shl-int/lit8 v8, v5, 0x4

    or-int/2addr v1, v8

    or-int/2addr v1, v7

    .line 223
    .local v1, "ch":I
    invoke-direct {p0, v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->clearBackSlashSeen(I)I

    move-result v8

    return v8
.end method

.method private unicodeStartSeen()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x1

    .line 167
    .local v0, "uCnt":I
    :goto_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v1

    .line 168
    .local v1, "next":I
    sparse-switch v1, :sswitch_data_0

    .line 178
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->readDigits(II)I

    move-result v2

    return v2

    .line 174
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 175
    goto :goto_0

    .line 170
    :sswitch_1
    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    .line 171
    const/16 v2, 0x5c

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_input:Lorg/checkerframework/com/github/javaparser/Provider;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/Provider;->close()V

    .line 115
    return-void
.end method

.method public getInputCounter()Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_inputLine:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    return-object v0
.end method

.method public getOutputCounter()Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_outputLine:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    return-object v0
.end method

.method public getPositionMapping()Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_mappingBuilder:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->getMapping()Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    move-result-object v0

    return-object v0
.end method

.method public read([CII)I
    .locals 5
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    move v0, p2

    .line 94
    .local v0, "pos":I
    add-int v1, p2, p3

    .line 95
    .local v1, "stop":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 96
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_outputLine:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->nextOutputChar()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->process(I)I

    move-result v2

    .line 97
    .local v2, "ch":I
    if-gez v2, :cond_0

    .line 98
    if-ne v0, p2, :cond_1

    .line 100
    const/4 v3, -0x1

    return v3

    .line 105
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->_mappingBuilder:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->update()V

    .line 106
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "pos":I
    .local v3, "pos":I
    int-to-char v4, v2

    aput-char v4, p1, v0

    .line 108
    .end local v2    # "ch":I
    move v0, v3

    goto :goto_0

    .line 109
    .end local v3    # "pos":I
    .restart local v0    # "pos":I
    :cond_1
    sub-int v2, v0, p2

    return v2
.end method
