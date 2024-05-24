.class public Lorg/checkerframework/org/plumelib/util/FileIOException;
.super Ljava/io/IOException;
.source "FileIOException.java"


# static fields
.field static final serialVersionUID:J = 0x131f3ebL


# instance fields
.field public final fileName:Ljava/lang/String;

.field public final lineNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/LineNumberReader;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/LineNumberReader;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 261
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 264
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/plumelib/util/FileIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 265
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 266
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getLineNumber(Ljava/io/LineNumberReader;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/io/LineNumberReader;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/LineNumberReader;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 194
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 197
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/plumelib/util/FileIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 198
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 199
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getLineNumber(Ljava/io/LineNumberReader;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/io/LineNumberReader;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/LineNumberReader;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 142
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/LineNumberReader;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/LineNumberReader;

    .line 153
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/io/File;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/LineNumberReader;
    .param p3, "file"    # Ljava/io/File;

    .line 235
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/LineNumberReader;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 251
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/LineNumberReader;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 182
    iput-object p3, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 183
    invoke-static {p2}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getLineNumber(Ljava/io/LineNumberReader;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/LineNumberReader;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 217
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/plumelib/util/FileIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 219
    iput-object p3, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 220
    invoke-static {p2}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getLineNumber(Ljava/io/LineNumberReader;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/LineNumberReader;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 165
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/lang/String;Ljava/io/LineNumberReader;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I

    .line 101
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 103
    iput p3, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 84
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/plumelib/util/FileIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    .line 121
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/plumelib/util/FileIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 123
    iput-object p3, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 124
    iput p4, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/util/FileIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    .line 57
    return-void
.end method

.method private static getLineNumber(Ljava/io/LineNumberReader;)I
    .locals 1
    .param p0, "reader"    # Ljava/io/LineNumberReader;

    .line 295
    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v0

    return v0

    .line 298
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 276
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1
    return-object v0
.end method
