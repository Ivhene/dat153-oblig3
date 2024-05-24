.class public Lorg/checkerframework/com/github/javaparser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z = false


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Lorg/checkerframework/com/github/javaparser/Provider;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I

.field protected trackLineColumn:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/Provider;)V
    .locals 2
    .param p1, "dstream"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dstream"
        }
    .end annotation

    .line 298
    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;-><init>(Lorg/checkerframework/com/github/javaparser/Provider;III)V

    .line 299
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/Provider;II)V
    .locals 1
    .param p1, "dstream"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dstream",
            "startline",
            "startcolumn"
        }
    .end annotation

    .line 292
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;-><init>(Lorg/checkerframework/com/github/javaparser/Provider;III)V

    .line 293
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/Provider;III)V
    .locals 2
    .param p1, "dstream"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dstream",
            "startline",
            "startcolumn",
            "buffersize"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    .line 43
    const/4 v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    .line 45
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsCR:Z

    .line 46
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsLF:Z

    .line 51
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    .line 52
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inBuf:I

    .line 53
    iput v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tabSize:I

    .line 54
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->trackLineColumn:Z

    .line 278
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inputStream:Lorg/checkerframework/com/github/javaparser/Provider;

    .line 279
    iput p2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    .line 280
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    .line 282
    iput p4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->available:I

    .line 283
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    .line 284
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    .line 285
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    .line 286
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    .line 158
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->readChar()C

    move-result v0

    .line 159
    .local v0, "c":C
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    .line 161
    return v0
.end method

.method public Done()V
    .locals 1

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    .line 366
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    .line 367
    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    .line 368
    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 7
    .param p1, "wrapAround"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapAround"
        }
    .end annotation

    .line 63
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    .line 64
    .local v1, "newbuffer":[C
    add-int/lit16 v2, v0, 0x800

    new-array v2, v2, [I

    .line 65
    .local v2, "newbufline":[I
    add-int/lit16 v3, v0, 0x800

    new-array v3, v3, [I

    .line 69
    .local v3, "newbufcolumn":[I
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v6

    invoke-static {v5, v6, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    invoke-static {v0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    .line 79
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput-object v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    .line 83
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    goto :goto_0

    .line 87
    :cond_0
    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v6

    invoke-static {v5, v6, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    .line 90
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput-object v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    .line 96
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    nop

    .line 105
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    add-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    .line 106
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->available:I

    .line 107
    iput v4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    .line 108
    return-void

    .line 99
    :catchall_0
    move-exception v0

    .line 101
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->available:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 114
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    const/16 v4, 0x800

    if-ne v1, v0, :cond_2

    .line 116
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    if-le v0, v4, :cond_0

    .line 118
    iput v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    .line 119
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->available:I

    goto :goto_0

    .line 121
    :cond_0
    if-gez v0, :cond_1

    .line 122
    iput v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v3}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 126
    :cond_2
    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    if-le v1, v5, :cond_3

    .line 127
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->available:I

    goto :goto_0

    .line 128
    :cond_3
    sub-int v0, v5, v1

    if-ge v0, v4, :cond_4

    .line 129
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 131
    :cond_4
    iput v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->available:I

    .line 136
    :cond_5
    :goto_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inputStream:Lorg/checkerframework/com/github/javaparser/Provider;

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    iget v6, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->available:I

    sub-int/2addr v6, v5

    invoke-interface {v1, v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/Provider;->read([CII)I

    move-result v1

    move v4, v1

    .local v4, "i":I
    if-eq v1, v0, :cond_6

    .line 142
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    .line 143
    return-void

    .line 138
    :cond_6
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inputStream:Lorg/checkerframework/com/github/javaparser/Provider;

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/Provider;->close()V

    .line 139
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    iget v4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    .line 147
    invoke-virtual {p0, v3}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->backup(I)V

    .line 148
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v0, :cond_7

    .line 149
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    .line 150
    :cond_7
    throw v1
.end method

.method public GetImage()Ljava/lang/String;
    .locals 5

    .line 338
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSuffix(I)[C
    .locals 6
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 348
    new-array v0, p1, [C

    .line 350
    .local v0, "ret":[C
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    .line 351
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    sub-int v4, p1, v2

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    :goto_0
    return-object v0
.end method

.method public ReInit(Lorg/checkerframework/com/github/javaparser/Provider;)V
    .locals 2
    .param p1, "dstream"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dstream"
        }
    .end annotation

    .line 331
    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->ReInit(Lorg/checkerframework/com/github/javaparser/Provider;III)V

    .line 332
    return-void
.end method

.method public ReInit(Lorg/checkerframework/com/github/javaparser/Provider;II)V
    .locals 1
    .param p1, "dstream"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dstream",
            "startline",
            "startcolumn"
        }
    .end annotation

    .line 325
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->ReInit(Lorg/checkerframework/com/github/javaparser/Provider;III)V

    .line 326
    return-void
.end method

.method public ReInit(Lorg/checkerframework/com/github/javaparser/Provider;III)V
    .locals 1
    .param p1, "dstream"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dstream",
            "startline",
            "startcolumn",
            "buffersize"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inputStream:Lorg/checkerframework/com/github/javaparser/Provider;

    .line 306
    iput p2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    .line 307
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    .line 309
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq p4, v0, :cond_1

    .line 311
    :cond_0
    iput p4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->available:I

    .line 312
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    .line 313
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    .line 314
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    .line 316
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsLF:Z

    .line 317
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inBuf:I

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    .line 319
    return-void
.end method

.method protected UpdateLineColumn(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 166
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    .line 168
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsLF:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 170
    iput-boolean v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsLF:Z

    .line 171
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    goto :goto_0

    .line 173
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_2

    .line 175
    iput-boolean v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsCR:Z

    .line 176
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 178
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 181
    :cond_1
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    .line 184
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 187
    :pswitch_1
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsCR:Z

    .line 188
    goto :goto_1

    .line 190
    :pswitch_2
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->prevCharIsLF:Z

    .line 191
    goto :goto_1

    .line 193
    :pswitch_3
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    .line 194
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tabSize:I

    rem-int v2, v0, v1

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    .line 195
    nop

    .line 200
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 201
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 202
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .locals 10
    .param p1, "newLine"    # I
    .param p2, "newCol"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newLine",
            "newCol"
        }
    .end annotation

    .line 375
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    .line 378
    .local v0, "start":I
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    if-lt v1, v2, :cond_0

    .line 380
    sub-int/2addr v1, v2

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inBuf:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .local v1, "len":I
    goto :goto_0

    .line 384
    .end local v1    # "len":I
    :cond_0
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inBuf:I

    add-int/2addr v1, v3

    .line 387
    .restart local v1    # "len":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v4, 0x0

    .line 388
    .local v4, "k":I
    const/4 v5, 0x0

    .local v5, "nextColDiff":I
    const/4 v6, 0x0

    .line 390
    .local v6, "columnDiff":I
    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v8, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    rem-int v9, v0, v8

    move v3, v9

    aget v9, v7, v9

    add-int/lit8 v0, v0, 0x1

    rem-int v8, v0, v8

    move v4, v8

    aget v8, v7, v8

    if-ne v9, v8, :cond_1

    .line 392
    aput p1, v7, v3

    .line 393
    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    aget v8, v7, v4

    add-int/2addr v8, v6

    aget v9, v7, v3

    sub-int v5, v8, v9

    .line 394
    add-int v8, p2, v6

    aput v8, v7, v3

    .line 395
    move v6, v5

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 399
    :cond_1
    if-ge v2, v1, :cond_4

    .line 401
    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "newLine":I
    .local v8, "newLine":I
    aput p1, v7, v3

    .line 402
    iget-object p1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    add-int v7, p2, v6

    aput v7, p1, v3

    move p1, v8

    .line 404
    .end local v8    # "newLine":I
    .restart local p1    # "newLine":I
    :goto_2
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    if-ge v2, v1, :cond_3

    .line 406
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v8, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    rem-int v9, v0, v8

    move v3, v9

    aget v9, v2, v9

    add-int/lit8 v0, v0, 0x1

    rem-int v8, v0, v8

    aget v8, v2, v8

    if-eq v9, v8, :cond_2

    .line 407
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "newLine":I
    .restart local v8    # "newLine":I
    aput p1, v2, v3

    move v2, v7

    move p1, v8

    goto :goto_2

    .line 409
    .end local v8    # "newLine":I
    .restart local p1    # "newLine":I
    :cond_2
    aput p1, v2, v3

    move v2, v7

    goto :goto_2

    .line 404
    :cond_3
    move v2, v7

    .line 413
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :cond_4
    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    aget v7, v7, v3

    iput v7, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->line:I

    .line 414
    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    aget v7, v7, v3

    iput v7, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->column:I

    .line 415
    return-void
.end method

.method public backup(I)V
    .locals 2
    .param p1, "amount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 269
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inBuf:I

    .line 270
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 271
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    .line 272
    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .line 263
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .line 248
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .line 253
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getTabSize()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tabSize:I

    return v0
.end method

.method getTrackLineColumn()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->trackLineColumn:Z

    return v0
.end method

.method public readChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inBuf:I

    if-lez v0, :cond_1

    .line 209
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->inBuf:I

    .line 211
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufsize:I

    if-ne v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    .line 217
    :cond_1
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_2

    .line 218
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->FillBuff()V

    .line 220
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->buffer:[C

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    .line 222
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->UpdateLineColumn(C)V

    .line 223
    return v0
.end method

.method public setTabSize(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 56
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->tabSize:I

    return-void
.end method

.method setTrackLineColumn(Z)V
    .locals 0
    .param p1, "tlc"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tlc"
        }
    .end annotation

    .line 417
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/SimpleCharStream;->trackLineColumn:Z

    return-void
.end method
