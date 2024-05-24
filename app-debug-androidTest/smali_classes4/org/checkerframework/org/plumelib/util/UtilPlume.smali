.class public final Lorg/checkerframework/org/plumelib/util/UtilPlume;
.super Ljava/lang/Object;
.source "UtilPlume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;,
        Lorg/checkerframework/org/plumelib/util/UtilPlume$NullableStringComparator;,
        Lorg/checkerframework/org/plumelib/util/UtilPlume$WildcardFilter;
    }
.end annotation


# static fields
.field private static final lineSep:Ljava/lang/String;

.field static final userHome:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineSep:Ljava/lang/String;

    .line 808
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/util/UtilPlume;->userHome:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static abbreviateNumber(J)Ljava/lang/String;
    .locals 7
    .param p0, "val"    # J

    .line 2003
    long-to-double v0, p0

    .line 2004
    .local v0, "dval":D
    const-string v2, ""

    .line 2006
    .local v2, "mag":Ljava/lang/String;
    const-wide/16 v3, 0x3e8

    cmp-long v3, p0, v3

    if-gez v3, :cond_0

    goto :goto_0

    .line 2008
    :cond_0
    const-wide/32 v3, 0xf4240

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 2009
    long-to-double v3, p0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double v0, v3, v5

    .line 2010
    const-string v2, "K"

    goto :goto_0

    .line 2011
    :cond_1
    const-wide/32 v3, 0x3b9aca00

    cmp-long v3, p0, v3

    if-gez v3, :cond_2

    .line 2012
    long-to-double v3, p0

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double v0, v3, v5

    .line 2013
    const-string v2, "M"

    goto :goto_0

    .line 2015
    :cond_2
    long-to-double v3, p0

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double v0, v3, v5

    .line 2016
    const-string v2, "G"

    .line 2019
    :goto_0
    const-string v3, "0"

    .line 2020
    .local v3, "precision":Ljava/lang/String;
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_3

    .line 2021
    const-string v3, "2"

    goto :goto_1

    .line 2022
    :cond_3
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_4

    .line 2023
    const-string v3, "1"

    .line 2027
    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%,1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2028
    .local v4, "result":Ljava/lang/String;
    return-object v4
.end method

.method public static appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static backTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 2087
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2088
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2089
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2090
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 2091
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2092
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public static backticks(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1225
    .local p0, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 1226
    .local v0, "pb":Ljava/lang/ProcessBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 1229
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 1230
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->streamString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    .local v2, "output":Ljava/lang/String;
    return-object v2

    .line 1232
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "output":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1233
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs backticks([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "command"    # [Ljava/lang/String;

    .line 1214
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->backticks(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bufferedFileOutputStream(Ljava/lang/String;Z)Ljava/io/BufferedOutputStream;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 517
    .local v0, "os":Ljava/io/OutputStream;
    const-string v1, ".gz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 520
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public static bufferedFileReader(Ljava/io/File;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->bufferedFileReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static bufferedFileReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    .line 405
    .local v0, "fileReader":Ljava/io/Reader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1
.end method

.method public static bufferedFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->bufferedFileReader(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static bufferedFileReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->bufferedFileReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static bufferedFileWriter(Ljava/lang/String;)Ljava/io/BufferedWriter;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->bufferedFileWriter(Ljava/lang/String;Z)Ljava/io/BufferedWriter;

    move-result-object v0

    return-object v0
.end method

.method public static bufferedFileWriter(Ljava/lang/String;Z)Ljava/io/BufferedWriter;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    const-string v0, ".gz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0

    .line 493
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 494
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/nio/file/StandardOpenOption;

    sget-object v5, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v4, v0

    sget-object v0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v0, v4, v3

    goto :goto_0

    :cond_1
    new-array v4, v3, [Ljava/nio/file/StandardOpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v4, v0

    .line 493
    :goto_0
    invoke-static {v1, v2, v4}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0

    return-object v0
.end method

.method public static canCreateAndWrite(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 670
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0

    .line 673
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 674
    .local v0, "directory":Ljava/io/File;
    if-nez v0, :cond_1

    .line 675
    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 678
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    return v1
.end method

.method public static count(Ljava/lang/String;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "ch"    # I

    .line 1964
    const/4 v0, 0x0

    .line 1965
    .local v0, "result":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1966
    .local v1, "pos":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1967
    add-int/lit8 v0, v0, 0x1

    .line 1968
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 1970
    :cond_0
    return v0
.end method

.method public static count(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "sub"    # Ljava/lang/String;

    .line 1981
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1984
    const/4 v0, 0x0

    .line 1985
    .local v0, "result":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1986
    .local v1, "pos":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1987
    add-int/lit8 v0, v0, 0x1

    .line 1988
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1990
    :cond_0
    return v0

    .line 1982
    .end local v0    # "result":I
    .end local v1    # "pos":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "second argument must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static countLines(Ljava/lang/String;)J
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    const-wide/16 v0, 0x0

    .line 536
    .local v0, "count":J
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineNumberFileReader(Ljava/lang/String;)Ljava/io/LineNumberReader;

    move-result-object v2

    .line 537
    .local v2, "reader":Ljava/io/LineNumberReader;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 538
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    .line 540
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V

    .line 541
    .end local v2    # "reader":Ljava/io/LineNumberReader;
    :cond_1
    return-wide v0

    .line 536
    .restart local v2    # "reader":Ljava/io/LineNumberReader;
    :catchall_0
    move-exception v3

    .end local v0    # "count":J
    .end local v2    # "reader":Ljava/io/LineNumberReader;
    .end local p0    # "filename":Ljava/lang/String;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 540
    .restart local v0    # "count":J
    .restart local v2    # "reader":Ljava/io/LineNumberReader;
    .restart local p0    # "filename":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4
.end method

.method public static createTempDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 719
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    .local v2, "pathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const-string v4, "Could not create directory: "

    if-nez v3, :cond_1

    .line 722
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 727
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 728
    .local v3, "tmpfile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, "tmpDirPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    .local v6, "tmpDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 735
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 736
    return-object v6

    .line 731
    :cond_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 4
    .param p0, "dir"    # Ljava/io/File;

    .line 756
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 757
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 758
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 759
    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->deleteDir(Ljava/io/File;)Z

    .line 758
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirName"    # Ljava/lang/String;

    .line 746
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->deleteDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static equalFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file1"    # Ljava/lang/String;
    .param p1, "file2"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 625
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->equalFiles(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static equalFiles(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "file1"    # Ljava/lang/String;
    .param p1, "file2"    # Ljava/lang/String;
    .param p2, "trimLines"    # Z
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 639
    :try_start_0
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineNumberFileReader(Ljava/lang/String;)Ljava/io/LineNumberReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .local v0, "reader1":Ljava/io/LineNumberReader;
    :try_start_1
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineNumberFileReader(Ljava/lang/String;)Ljava/io/LineNumberReader;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 639
    .local v1, "reader2":Ljava/io/LineNumberReader;
    nop

    .line 641
    :try_start_2
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "line1":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "line2":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 644
    if-eqz p2, :cond_0

    .line 645
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 646
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 648
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_3

    .line 649
    nop

    .line 658
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 649
    :cond_2
    return v4

    .line 651
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 652
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v4

    goto :goto_0

    .line 654
    :cond_4
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 655
    nop

    .line 658
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_5
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 655
    :cond_6
    const/4 v4, 0x1

    return v4

    .line 657
    :cond_7
    nop

    .line 658
    if-eqz v1, :cond_8

    :try_start_8
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_8
    if-eqz v0, :cond_9

    :try_start_9
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 657
    :cond_9
    return v4

    .line 639
    .end local v2    # "line1":Ljava/lang/String;
    .end local v3    # "line2":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .end local v0    # "reader1":Ljava/io/LineNumberReader;
    .end local v1    # "reader2":Ljava/io/LineNumberReader;
    .end local p0    # "file1":Ljava/lang/String;
    .end local p1    # "file2":Ljava/lang/String;
    .end local p2    # "trimLines":Z
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 658
    .restart local v0    # "reader1":Ljava/io/LineNumberReader;
    .restart local v1    # "reader2":Ljava/io/LineNumberReader;
    .restart local p0    # "file1":Ljava/lang/String;
    .restart local p1    # "file2":Ljava/lang/String;
    .restart local p2    # "trimLines":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_a

    :try_start_b
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "reader1":Ljava/io/LineNumberReader;
    .end local p0    # "file1":Ljava/lang/String;
    .end local p1    # "file2":Ljava/lang/String;
    .end local p2    # "trimLines":Z
    :cond_a
    :goto_1
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 639
    .end local v1    # "reader2":Ljava/io/LineNumberReader;
    .restart local v0    # "reader1":Ljava/io/LineNumberReader;
    .restart local p0    # "file1":Ljava/lang/String;
    .restart local p1    # "file2":Ljava/lang/String;
    .restart local p2    # "trimLines":Z
    :catchall_3
    move-exception v1

    .end local v0    # "reader1":Ljava/io/LineNumberReader;
    .end local p0    # "file1":Ljava/lang/String;
    .end local p1    # "file2":Ljava/lang/String;
    .end local p2    # "trimLines":Z
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 658
    .restart local v0    # "reader1":Ljava/io/LineNumberReader;
    .restart local p0    # "file1":Ljava/lang/String;
    .restart local p1    # "file2":Ljava/lang/String;
    .restart local p2    # "trimLines":Z
    :catchall_4
    move-exception v2

    if-eqz v0, :cond_b

    :try_start_e
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    :try_start_f
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file1":Ljava/lang/String;
    .end local p1    # "file2":Ljava/lang/String;
    .end local p2    # "trimLines":Z
    :cond_b
    :goto_2
    throw v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .end local v0    # "reader1":Ljava/io/LineNumberReader;
    .restart local p0    # "file1":Ljava/lang/String;
    .restart local p1    # "file2":Ljava/lang/String;
    .restart local p2    # "trimLines":Z
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static escapeNonASCII(C)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # C

    .line 1623
    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    .line 1624
    const-string v0, "\\\""

    return-object v0

    .line 1625
    :cond_0
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    .line 1626
    const-string v0, "\\\\"

    return-object v0

    .line 1627
    :cond_1
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2

    .line 1628
    const-string v0, "\\n"

    return-object v0

    .line 1629
    :cond_2
    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    .line 1630
    const-string v0, "\\r"

    return-object v0

    .line 1631
    :cond_3
    const/16 v0, 0x9

    if-ne p0, v0, :cond_4

    .line 1632
    const-string v0, "\\t"

    return-object v0

    .line 1633
    :cond_4
    const/16 v0, 0x20

    if-lt p0, v0, :cond_5

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_5

    .line 1634
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 1635
    :cond_5
    const/16 v0, 0x100

    if-ge p0, v0, :cond_7

    .line 1636
    invoke-static {p0}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v0

    .line 1637
    .local v0, "octal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    .line 1638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1640
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1642
    .end local v0    # "octal":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1643
    .local v0, "hex":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_8

    .line 1644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1646
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static escapeNonASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "orig"    # Ljava/lang/String;

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1605
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1606
    .local v1, "origLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1607
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1608
    .local v3, "c":C
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->escapeNonASCII(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1610
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static escapeNonJava(Ljava/lang/Character;)Ljava/lang/String;
    .locals 4
    .param p0, "ch"    # Ljava/lang/Character;

    .line 1581
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 1582
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1592
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1586
    :sswitch_0
    const-string v1, "\\\\"

    return-object v1

    .line 1584
    :sswitch_1
    const-string v1, "\\\""

    return-object v1

    .line 1590
    :sswitch_2
    const-string v1, "\\r"

    return-object v1

    .line 1588
    :sswitch_3
    const-string v1, "\\n"

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static escapeNonJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "orig"    # Ljava/lang/String;

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1534
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1535
    .local v1, "postEsc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1536
    .local v2, "origLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1537
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1538
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 1541
    :sswitch_0
    if-ge v1, v3, :cond_0

    .line 1542
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    :cond_0
    const/16 v5, 0x5c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1545
    move v1, v3

    .line 1546
    goto :goto_1

    .line 1555
    :sswitch_1
    if-ge v1, v3, :cond_1

    .line 1556
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :cond_1
    const-string v5, "\\r"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    add-int/lit8 v1, v3, 0x1

    .line 1560
    goto :goto_1

    .line 1548
    :sswitch_2
    if-ge v1, v3, :cond_2

    .line 1549
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    :cond_2
    const-string v5, "\\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    add-int/lit8 v1, v3, 0x1

    .line 1553
    nop

    .line 1536
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1565
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 1566
    return-object p0

    .line 1568
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x22 -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static expandFilename(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "name"    # Ljava/io/File;

    .line 817
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->expandFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "newname":Ljava/lang/String;
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 821
    .local v2, "changed":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 822
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 824
    :cond_1
    return-object p0
.end method

.method public static expandFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 835
    const-string v0, "~"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    sget-object v1, Lorg/checkerframework/org/plumelib/util/UtilPlume;->userHome:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 838
    :cond_0
    return-object p0
.end method

.method public static fileInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v0, "in":Ljava/io/InputStream;
    goto :goto_0

    .line 219
    .end local v0    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem while reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 225
    .local v0, "in":Ljava/io/InputStream;
    :goto_0
    return-object v0
.end method

.method public static fileInputStream(Ljava/nio/file/Path;)Ljava/io/InputStream;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const-string v0, ".gz"

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .local v0, "in":Ljava/io/InputStream;
    goto :goto_0

    .line 193
    .end local v0    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem while reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 199
    .local v0, "in":Ljava/io/InputStream;
    :goto_0
    return-object v0
.end method

.method public static fileLines(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v0, "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineNumberFileReader(Ljava/lang/String;)Ljava/io/LineNumberReader;

    move-result-object v1

    .line 555
    .local v1, "reader":Ljava/io/LineNumberReader;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 556
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 558
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    .line 559
    .end local v1    # "reader":Ljava/io/LineNumberReader;
    :cond_1
    return-object v0

    .line 553
    .restart local v1    # "reader":Ljava/io/LineNumberReader;
    :catchall_0
    move-exception v2

    .end local v0    # "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "reader":Ljava/io/LineNumberReader;
    .end local p0    # "filename":Ljava/lang/String;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 558
    .restart local v0    # "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "reader":Ljava/io/LineNumberReader;
    .restart local p0    # "filename":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3
.end method

.method public static fileReader(Ljava/io/File;)Ljava/io/InputStreamReader;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public static fileReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 325
    .local v0, "in":Ljava/io/InputStream;
    if-nez p1, :cond_0

    .line 326
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .local v1, "fileReader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 328
    .end local v1    # "fileReader":Ljava/io/InputStreamReader;
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 330
    .restart local v1    # "fileReader":Ljava/io/InputStreamReader;
    :goto_0
    return-object v1
.end method

.method public static fileReader(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public static fileReader(Ljava/nio/file/Path;)Ljava/io/InputStreamReader;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public static fileReader(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/io/FileInputStream;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 282
    .local v0, "in":Ljava/io/InputStream;
    if-nez p1, :cond_0

    .line 283
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .local v1, "fileReader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 285
    .end local v1    # "fileReader":Ljava/io/InputStreamReader;
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 287
    .restart local v1    # "fileReader":Ljava/io/InputStreamReader;
    :goto_0
    return-object v1
.end method

.method public static hash(D)I
    .locals 2
    .param p0, "x"    # D

    .line 1004
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(J)I

    move-result v0

    return v0
.end method

.method public static hash(DD)I
    .locals 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1015
    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    .line 1016
    .local v0, "result":D
    const-wide v2, 0x4042800000000000L    # 37.0

    mul-double v4, v0, v2

    add-double/2addr v4, p0

    .line 1017
    .end local v0    # "result":D
    .local v4, "result":D
    mul-double/2addr v2, v4

    add-double/2addr v2, p2

    .line 1018
    .end local v4    # "result":D
    .local v2, "result":D
    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(D)I

    move-result v0

    return v0
.end method

.method public static hash(DDD)I
    .locals 6
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1030
    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    .line 1031
    .local v0, "result":D
    const-wide v2, 0x4042800000000000L    # 37.0

    mul-double v4, v0, v2

    add-double/2addr v4, p0

    .line 1032
    .end local v0    # "result":D
    .local v4, "result":D
    mul-double v0, v4, v2

    add-double/2addr v0, p2

    .line 1033
    .end local v4    # "result":D
    .restart local v0    # "result":D
    mul-double/2addr v2, v0

    add-double/2addr v2, p4

    .line 1034
    .end local v0    # "result":D
    .local v2, "result":D
    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(D)I

    move-result v0

    return v0
.end method

.method public static hash(J)I
    .locals 4
    .param p0, "l"    # J

    .line 1076
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 1077
    long-to-int v0, p0

    return v0

    .line 1080
    :cond_0
    const/16 v0, 0x11

    .line 1081
    .local v0, "result":I
    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    .line 1082
    .local v1, "hibits":I
    long-to-int v2, p0

    .line 1083
    .local v2, "lobits":I
    mul-int/lit8 v3, v0, 0x25

    add-int/2addr v3, v1

    .line 1084
    .end local v0    # "result":I
    .local v3, "result":I
    mul-int/lit8 v0, v3, 0x25

    add-int/2addr v0, v2

    .line 1085
    .end local v3    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public static hash(JJ)I
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1096
    const-wide/16 v0, 0x11

    .line 1097
    .local v0, "result":J
    const-wide/16 v2, 0x25

    mul-long v4, v0, v2

    add-long/2addr v4, p0

    .line 1098
    .end local v0    # "result":J
    .local v4, "result":J
    mul-long/2addr v2, v4

    add-long/2addr v2, p2

    .line 1099
    .end local v4    # "result":J
    .local v2, "result":J
    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(J)I

    move-result v0

    return v0
.end method

.method public static hash(JJJ)I
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1111
    const-wide/16 v0, 0x11

    .line 1112
    .local v0, "result":J
    const-wide/16 v2, 0x25

    mul-long v4, v0, v2

    add-long/2addr v4, p0

    .line 1113
    .end local v0    # "result":J
    .local v4, "result":J
    mul-long v0, v4, v2

    add-long/2addr v0, p2

    .line 1114
    .end local v4    # "result":J
    .restart local v0    # "result":J
    mul-long/2addr v2, v0

    add-long/2addr v2, p4

    .line 1115
    .end local v0    # "result":J
    .local v2, "result":J
    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(J)I

    move-result v0

    return v0
.end method

.method public static hash(Ljava/lang/String;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .line 1153
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 1164
    const-wide/16 v0, 0x11

    .line 1165
    .local v0, "result":J
    const-wide/16 v2, 0x25

    mul-long v4, v0, v2

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1166
    .end local v0    # "result":J
    .local v4, "result":J
    mul-long/2addr v2, v4

    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 1167
    .end local v4    # "result":J
    .local v2, "result":J
    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(J)I

    move-result v0

    return v0
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/String;

    .line 1179
    const-wide/16 v0, 0x11

    .line 1180
    .local v0, "result":J
    const-wide/16 v2, 0x25

    mul-long v4, v0, v2

    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1181
    .end local v0    # "result":J
    .local v4, "result":J
    mul-long v0, v4, v2

    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 1182
    .end local v4    # "result":J
    .restart local v0    # "result":J
    mul-long/2addr v2, v0

    invoke-static {p2}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1183
    .end local v0    # "result":J
    .local v2, "result":J
    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(J)I

    move-result v0

    return v0
.end method

.method public static hash([D)I
    .locals 10
    .param p0, "a"    # [D

    .line 1044
    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    .line 1045
    .local v0, "result":D
    if-eqz p0, :cond_1

    .line 1046
    const-wide v2, 0x4042800000000000L    # 37.0

    mul-double v4, v0, v2

    array-length v6, p0

    int-to-double v6, v6

    add-double/2addr v4, v6

    .line 1047
    .end local v0    # "result":D
    .local v4, "result":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1048
    mul-double v6, v4, v2

    aget-wide v8, p0, v0

    add-double v4, v6, v8

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-wide v0, v4

    .line 1051
    .end local v4    # "result":D
    .local v0, "result":D
    :cond_1
    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(D)I

    move-result v2

    return v2
.end method

.method public static hash([D[D)I
    .locals 4
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 1062
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash([D)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash([D)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(JJ)I

    move-result v0

    return v0
.end method

.method public static hash([J)I
    .locals 10
    .param p0, "a"    # [J

    .line 1125
    const-wide/16 v0, 0x11

    .line 1126
    .local v0, "result":J
    if-eqz p0, :cond_1

    .line 1127
    const-wide/16 v2, 0x25

    mul-long v4, v0, v2

    array-length v6, p0

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1128
    .end local v0    # "result":J
    .local v4, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1129
    mul-long v6, v4, v2

    aget-wide v8, p0, v0

    add-long v4, v6, v8

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-wide v0, v4

    .line 1132
    .end local v4    # "result":J
    .local v0, "result":J
    :cond_1
    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(J)I

    move-result v2

    return v2
.end method

.method public static hash([J[J)I
    .locals 4
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 1143
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash([J)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash([J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(JJ)I

    move-result v0

    return v0
.end method

.method public static hash([Ljava/lang/String;)I
    .locals 10
    .param p0, "a"    # [Ljava/lang/String;

    .line 1193
    const-wide/16 v0, 0x11

    .line 1194
    .local v0, "result":J
    if-eqz p0, :cond_1

    .line 1195
    const-wide/16 v2, 0x25

    mul-long v4, v0, v2

    array-length v6, p0

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1196
    .end local v0    # "result":J
    .local v4, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1197
    mul-long v6, v4, v2

    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(Ljava/lang/String;)I

    move-result v1

    int-to-long v8, v1

    add-long v4, v6, v8

    .line 1196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-wide v0, v4

    .line 1200
    .end local v4    # "result":J
    .local v0, "result":J
    :cond_1
    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->hash(J)I

    move-result v2

    return v2
.end method

.method public static inferLineSeparator(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->bufferedFileReader(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 582
    .local v0, "r":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 583
    .local v1, "unix":I
    const/4 v2, 0x0

    .line 584
    .local v2, "dos":I
    const/4 v3, 0x0

    .line 586
    .local v3, "mac":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    .local v4, "s":Ljava/lang/String;
    const-string v5, "\n"

    const-string v6, "\r"

    const-string v7, "\r\n"

    if-nez v4, :cond_d

    .line 588
    nop

    .line 600
    .end local v4    # "s":Ljava/lang/String;
    if-le v2, v3, :cond_0

    if-gt v2, v1, :cond_1

    :cond_0
    :try_start_1
    sget-object v4, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineSep:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_3

    if-lt v2, v1, :cond_3

    if-lt v2, v3, :cond_3

    .line 601
    :cond_1
    nop

    .line 613
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 601
    :cond_2
    return-object v7

    .line 603
    :cond_3
    if-le v3, v2, :cond_4

    if-gt v3, v1, :cond_5

    :cond_4
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_7

    if-lt v3, v2, :cond_7

    if-lt v3, v1, :cond_7

    .line 604
    :cond_5
    nop

    .line 613
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 604
    :cond_6
    return-object v6

    .line 606
    :cond_7
    if-le v1, v2, :cond_8

    if-gt v1, v3, :cond_9

    :cond_8
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_b

    if-lt v1, v2, :cond_b

    if-lt v1, v3, :cond_b

    .line 607
    :cond_9
    nop

    .line 613
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 607
    :cond_a
    return-object v5

    .line 612
    :cond_b
    nop

    .line 613
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 612
    :cond_c
    return-object v4

    .line 590
    .restart local v4    # "s":Ljava/lang/String;
    :cond_d
    :try_start_4
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 592
    :cond_e
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 593
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 594
    :cond_f
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_10

    .line 595
    add-int/lit8 v1, v1, 0x1

    .line 599
    .end local v4    # "s":Ljava/lang/String;
    :cond_10
    :goto_1
    goto :goto_0

    .line 581
    .end local v1    # "unix":I
    .end local v2    # "dos":I
    .end local v3    # "mac":I
    :catchall_0
    move-exception v1

    .end local v0    # "r":Ljava/io/BufferedReader;
    .end local p0    # "file":Ljava/io/File;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 613
    .restart local v0    # "r":Ljava/io/BufferedReader;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_11

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_2
    throw v2
.end method

.method public static inferLineSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->inferLineSeparator(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intersectionCardinality(Ljava/util/BitSet;Ljava/util/BitSet;)I
    .locals 2
    .param p0, "a"    # Ljava/util/BitSet;
    .param p1, "b"    # Ljava/util/BitSet;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 148
    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 149
    .local v0, "intersection":Ljava/util/BitSet;
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 150
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    return v1
.end method

.method public static intersectionCardinality(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;)I
    .locals 2
    .param p0, "a"    # Ljava/util/BitSet;
    .param p1, "b"    # Ljava/util/BitSet;
    .param p2, "c"    # Ljava/util/BitSet;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 164
    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 165
    .local v0, "intersection":Ljava/util/BitSet;
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 166
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 167
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    return v1
.end method

.method public static intersectionCardinalityAtLeast(Ljava/util/BitSet;Ljava/util/BitSet;I)Z
    .locals 5
    .param p0, "a"    # Ljava/util/BitSet;
    .param p1, "b"    # Ljava/util/BitSet;
    .param p2, "i"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 93
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 94
    .local v0, "size":I
    mul-int/lit8 v1, p2, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 97
    mul-int/lit8 v1, p2, 0x4

    invoke-virtual {p0, v3, v1}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object v1

    .line 98
    .local v1, "intersection":Ljava/util/BitSet;
    invoke-virtual {v1, p1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 99
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-lt v4, p2, :cond_0

    .line 100
    return v2

    .line 103
    .end local v1    # "intersection":Ljava/util/BitSet;
    :cond_0
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->intersectionCardinality(Ljava/util/BitSet;Ljava/util/BitSet;)I

    move-result v1

    if-lt v1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static intersectionCardinalityAtLeast(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;I)Z
    .locals 5
    .param p0, "a"    # Ljava/util/BitSet;
    .param p1, "b"    # Ljava/util/BitSet;
    .param p2, "c"    # Ljava/util/BitSet;
    .param p3, "i"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 123
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    .local v0, "size":I
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 125
    mul-int/lit8 v1, p3, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 128
    mul-int/lit8 v1, p3, 0x4

    invoke-virtual {p0, v3, v1}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object v1

    .line 129
    .local v1, "intersection":Ljava/util/BitSet;
    invoke-virtual {v1, p1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 130
    invoke-virtual {v1, p2}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 131
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-lt v4, p3, :cond_0

    .line 132
    return v2

    .line 135
    .end local v1    # "intersection":Ljava/util/BitSet;
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->intersectionCardinality(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;)I

    move-result v1

    if-lt v1, p3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static javaSource(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/io/File;

    .line 855
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1496
    .local p0, "v":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1497
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1498
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1499
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1500
    if-eqz v1, :cond_0

    .line 1501
    const/4 v1, 0x0

    goto :goto_1

    .line 1503
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1507
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "delim"    # Ljava/lang/String;

    .line 1462
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1463
    const-string v0, ""

    return-object v0

    .line 1465
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1466
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1468
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1470
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1472
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static joinLines(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1519
    .local p0, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineSep:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs joinLines([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;

    .line 1483
    sget-object v0, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineSep:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lineNumberFileReader(Ljava/io/File;)Ljava/io/LineNumberReader;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ISO-8859-1"

    if-eqz v0, :cond_0

    .line 444
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .local v0, "fileReader":Ljava/io/Reader;
    goto :goto_0

    .line 446
    .end local v0    # "fileReader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem while reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 452
    .local v0, "fileReader":Ljava/io/Reader;
    :goto_0
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    return-object v1
.end method

.method public static lineNumberFileReader(Ljava/lang/String;)Ljava/io/LineNumberReader;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineNumberFileReader(Ljava/io/File;)Ljava/io/LineNumberReader;

    move-result-object v0

    return-object v0
.end method

.method public static lpad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 1841
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1843
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1844
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1843
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1846
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1848
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nplural(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # I
    .param p1, "noun"    # Ljava/lang/String;

    .line 1820
    const/4 v0, 0x1

    const-string v1, " "

    if-ne p0, v0, :cond_0

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1822
    :cond_0
    const-string v0, "ch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1823
    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1824
    const-string v2, "sh"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1825
    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1828
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1826
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static propertyIsTrue(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 3
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1252
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, "pvalue":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1254
    return v1

    .line 1256
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1257
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 937
    :try_start_0
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->bufferedFileReader(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 938
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .local v1, "contents":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    sget-object v3, Lorg/checkerframework/org/plumelib/util/UtilPlume;->lineSep:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 946
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 947
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 948
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "contents":Ljava/lang/StringBuilder;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error in readFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readObject(Ljava/io/File;)Ljava/lang/Object;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 890
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 891
    .local v0, "istream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 896
    goto :goto_0

    .line 894
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem while reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 898
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 899
    .local v1, "objs":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readerContents(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "r"    # Ljava/io/Reader;

    .line 911
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v0, "contents":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    move v2, v1

    .local v2, "ch":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 914
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 916
    :cond_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 918
    .end local v0    # "contents":Ljava/lang/StringBuilder;
    .end local v2    # "ch":I
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error in readerContents("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static removeWhitespaceAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 1753
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1757
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1758
    .local v0, "delimLen":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1759
    .local v1, "delimIndex":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 1760
    add-int v2, v1, v0

    .line 1761
    .local v2, "nonWsIndex":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1762
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1770
    :cond_0
    add-int v3, v1, v0

    if-eq v2, v3, :cond_1

    .line 1771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int v5, v1, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1773
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1774
    .end local v2    # "nonWsIndex":I
    goto :goto_0

    .line 1775
    :cond_2
    return-object p0

    .line 1754
    .end local v0    # "delimLen":I
    .end local v1    # "delimIndex":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad delimiter: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeWhitespaceAround(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 1740
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->removeWhitespaceBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1741
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->removeWhitespaceAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1742
    return-object p0
.end method

.method public static removeWhitespaceBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 1786
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1791
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1792
    .local v0, "delimIndex":I
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 1793
    add-int/lit8 v1, v0, -0x1

    .line 1794
    .local v1, "nonWsIndex":I
    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1795
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1803
    :cond_0
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_1

    .line 1804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1806
    :cond_1
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1807
    .end local v1    # "nonWsIndex":I
    goto :goto_0

    .line 1808
    :cond_2
    return-object p0

    .line 1787
    .end local v0    # "delimIndex":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad delimiter: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "oldStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;

    .line 1364
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1369
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1371
    .local v1, "lastend":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .local v3, "pos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1372
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v1, v3, v2

    goto :goto_0

    .line 1376
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1365
    .end local v0    # "result":Ljava/lang/StringBuilder;
    .end local v1    # "lastend":I
    .end local v3    # "pos":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static rpad(DI)Ljava/lang/String;
    .locals 1
    .param p0, "num"    # D
    .param p2, "length"    # I

    .line 1891
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->rpad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rpad(II)Ljava/lang/String;
    .locals 1
    .param p0, "num"    # I
    .param p1, "length"    # I

    .line 1880
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->rpad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rpad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 1861
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1864
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1863
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1866
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1868
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultMaybe(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1286
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1287
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1288
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1290
    :cond_0
    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "delim"    # C

    .line 1395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "delimpos":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1397
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1396
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_0

    .line 1400
    .end local v1    # "delimpos":I
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1402
    .local v1, "result":[Ljava/lang/String;
    return-object v1
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;

    .line 1420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1421
    .local v0, "delimlen":I
    if-eqz v0, :cond_1

    .line 1424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "delimpos":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1426
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    add-int v3, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1425
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 1429
    .end local v2    # "delimpos":I
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1431
    .local v2, "result":[Ljava/lang/String;
    return-object v2

    .line 1422
    .end local v1    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "result":[Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Second argument to split was empty."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static splitLines(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1447
    const-string v0, "\r\n?|\n\r?"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;

    .line 1304
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1308
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 1309
    .local v1, "bytes":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1310
    return-void

    .line 1312
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1314
    .end local v1    # "bytes":I
    :catch_0
    move-exception v1

    .line 1315
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1316
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static streamLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    .local v0, "outputLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1343
    .local v1, "rdr":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1344
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1346
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1347
    .end local v1    # "rdr":Ljava/io/BufferedReader;
    return-object v0

    .line 1341
    .restart local v1    # "rdr":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    .end local v0    # "outputLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "rdr":Ljava/io/BufferedReader;
    .end local p0    # "stream":Ljava/io/InputStream;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1346
    .restart local v0    # "outputLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "rdr":Ljava/io/BufferedReader;
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method public static streamString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 1327
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1328
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1329
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static tokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2072
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->makeArrayList(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static tokens(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2061
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->makeArrayList(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static tokens(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;
    .param p2, "returnDelims"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2049
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->makeArrayList(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeNonJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "orig"    # Ljava/lang/String;

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1662
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1663
    .local v1, "postEsc":I
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1664
    .local v3, "thisEsc":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1665
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    .line 1666
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    add-int/lit8 v1, v3, 0x1

    .line 1668
    goto/16 :goto_4

    .line 1670
    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1719
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    add-int/lit8 v1, v3, 0x1

    goto :goto_3

    .line 1677
    :sswitch_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1679
    add-int/lit8 v1, v3, 0x2

    .line 1680
    goto :goto_3

    .line 1672
    :sswitch_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1674
    add-int/lit8 v1, v3, 0x2

    .line 1675
    goto :goto_3

    .line 1685
    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    add-int/lit8 v1, v3, 0x2

    .line 1687
    goto :goto_3

    .line 1701
    :sswitch_3
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    const/4 v5, 0x0

    .line 1703
    .local v5, "octalChar":C
    add-int/lit8 v6, v3, 0x1

    .line 1704
    .local v6, "ii":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1705
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 1706
    .local v7, "thisDigit":I
    if-ne v7, v4, :cond_1

    .line 1707
    goto :goto_2

    .line 1709
    :cond_1
    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v7

    int-to-char v5, v8

    .line 1710
    nop

    .end local v7    # "thisDigit":I
    add-int/lit8 v6, v6, 0x1

    .line 1711
    goto :goto_1

    .line 1712
    :cond_2
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1713
    move v1, v6

    .line 1714
    nop

    .line 1723
    .end local v5    # "octalChar":C
    .end local v6    # "ii":I
    :goto_3
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto/16 :goto_0

    .line 1725
    :cond_3
    :goto_4
    if-nez v1, :cond_4

    .line 1726
    return-object p0

    .line 1728
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x5c -> :sswitch_2
        0x6e -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "contents"    # Ljava/lang/String;

    .line 964
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1, v3}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0

    .line 965
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 966
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    .end local v0    # "writer":Ljava/io/Writer;
    nop

    .line 970
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error in writeFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeObject(Ljava/lang/Object;Ljava/io/File;)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 872
    .local v0, "bytes":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 875
    :cond_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 876
    .local v1, "objs":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 877
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 878
    return-void
.end method
