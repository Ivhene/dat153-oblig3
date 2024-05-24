.class public Lorg/checkerframework/org/plumelib/util/EntryReader;
.super Ljava/io/LineNumberReader;
.source "EntryReader.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/EntryReader$DummyReader;,
        Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;,
        Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/io/LineNumberReader;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final lineSep:Ljava/lang/String;


# instance fields
.field private final commentRegex:Ljava/util/regex/Pattern;

.field public entryStartRegex:Ljava/util/regex/Pattern;

.field public entryStopRegex:Ljava/util/regex/Pattern;

.field private final includeRegex:Ljava/util/regex/Pattern;

.field pushbackLine:Ljava/lang/String;

.field private final readers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    nop

    .line 110
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/util/EntryReader;->lineSep:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "commentRegex"    # Ljava/lang/String;
    .param p3, "includeRegex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileReader(Ljava/io/File;)Ljava/io/InputStreamReader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 283
    const-string v0, "(InputStream)"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "filename"    # Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 241
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "commentRegexString"    # Ljava/lang/String;
    .param p4, "includeRegexString"    # Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "commentRegexString"    # Ljava/lang/String;
    .param p5, "includeRegexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4, p5}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "commentRegexString"    # Ljava/lang/String;
    .param p4, "includeRegexString"    # Ljava/lang/String;

    .line 358
    new-instance v0, Lorg/checkerframework/org/plumelib/util/EntryReader$DummyReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/util/EntryReader$DummyReader;-><init>(Lorg/checkerframework/org/plumelib/util/EntryReader$1;)V

    invoke-direct {p0, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 94
    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStartRegex:Ljava/util/regex/Pattern;

    .line 97
    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStopRegex:Ljava/util/regex/Pattern;

    .line 104
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    .line 107
    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->pushbackLine:Ljava/lang/String;

    .line 359
    new-instance v2, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;

    invoke-direct {v2, p1, p2}, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 360
    if-nez p3, :cond_0

    .line 361
    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->commentRegex:Ljava/util/regex/Pattern;

    goto :goto_0

    .line 363
    :cond_0
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->commentRegex:Ljava/util/regex/Pattern;

    .line 365
    :goto_0
    if-nez p4, :cond_1

    .line 366
    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->includeRegex:Ljava/util/regex/Pattern;

    goto :goto_1

    .line 368
    :cond_1
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->includeRegex:Ljava/util/regex/Pattern;

    .line 370
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "commentRegex"    # Ljava/lang/String;
    .param p3, "includeRegex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileInputStream(Ljava/nio/file/Path;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "commentRegex"    # Ljava/lang/String;
    .param p3, "includeRegex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileReader(Ljava/nio/file/Path;)Ljava/io/InputStreamReader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private getNextLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 750
    return-object v1

    .line 753
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;

    .line 754
    .local v0, "ri1":Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    .line 756
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 757
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 758
    return-object v1

    .line 760
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;

    .line 761
    .local v3, "ri2":Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    invoke-virtual {v3}, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 762
    .end local v3    # "ri2":Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    goto :goto_0

    .line 763
    :cond_2
    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    array-length v0, p0

    if-le v0, v1, :cond_1

    .line 884
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "EntryReader sample program requires 1-3 args: filename [commentRegex [includeRegex]]"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 886
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 888
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 889
    .local v0, "filename":Ljava/lang/String;
    const/4 v3, 0x0

    .line 890
    .local v3, "commentRegex":Ljava/lang/String;
    const/4 v4, 0x0

    .line 891
    .local v4, "includeRegex":Ljava/lang/String;
    array-length v5, p0

    const-string v6, "\": "

    const/4 v7, 0x2

    if-lt v5, v7, :cond_2

    .line 892
    aget-object v3, p0, v2

    .line 893
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/RegexUtil;->isRegex(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 894
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing comment regex \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 898
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/RegexUtil;->regexError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 894
    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 899
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 902
    :cond_2
    array-length v5, p0

    if-lt v5, v1, :cond_3

    .line 903
    aget-object v4, p0, v7

    .line 904
    invoke-static {v4, v2}, Lorg/checkerframework/org/plumelib/util/RegexUtil;->isRegex(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 905
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing include regex \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 909
    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/RegexUtil;->regexError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 905
    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 910
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 913
    :cond_3
    new-instance v1, Lorg/checkerframework/org/plumelib/util/EntryReader;

    invoke-direct {v1, v0, v3, v4}, Lorg/checkerframework/org/plumelib/util/EntryReader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .local v1, "reader":Lorg/checkerframework/org/plumelib/util/EntryReader;
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_4

    .line 917
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getLineNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7, v2}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%s: %d: %s%n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 918
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 920
    :cond_4
    return-void
.end method


# virtual methods
.method public getEntry()Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 661
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 663
    :cond_0
    if-nez v1, :cond_1

    .line 664
    const/4 v2, 0x0

    return-object v2

    .line 667
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v2

    .line 668
    .local v9, "body":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 669
    .local v10, "entry":Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 670
    .local v11, "filename":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getLineNumber()I

    move-result v2

    int-to-long v12, v2

    .line 673
    .local v12, "lineNumber":J
    const/4 v2, 0x0

    .line 674
    .local v2, "entryMatch":Ljava/util/regex/Matcher;
    iget-object v3, v0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStartRegex:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_2

    .line 675
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move-object v14, v2

    goto :goto_1

    .line 674
    :cond_2
    move-object v14, v2

    .line 677
    .end local v2    # "entryMatch":Ljava/util/regex/Matcher;
    .local v14, "entryMatch":Ljava/util/regex/Matcher;
    :goto_1
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 678
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStartRegex:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_9

    .line 679
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStopRegex:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_8

    .line 683
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 686
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, "matchGroup1":Ljava/lang/String;
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    .end local v2    # "matchGroup1":Ljava/lang/String;
    :cond_3
    move-object v3, v1

    .line 694
    .local v3, "description":Ljava/lang/String;
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStopRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move-object v15, v14

    move-object v14, v2

    .line 695
    .local v14, "endEntryMatch":Ljava/util/regex/Matcher;
    .local v15, "entryMatch":Ljava/util/regex/Matcher;
    :goto_2
    if-eqz v1, :cond_5

    .line 696
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_5

    .line 697
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_5

    .line 698
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 699
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    sget-object v2, Lorg/checkerframework/org/plumelib/util/EntryReader;->lineSep:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 702
    if-nez v1, :cond_4

    .line 703
    goto :goto_3

    .line 705
    :cond_4
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStartRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 706
    iget-object v2, v0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStopRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    goto :goto_2

    .line 711
    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 712
    :cond_6
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/plumelib/util/EntryReader;->putback(Ljava/lang/String;)V

    .line 715
    :cond_7
    new-instance v16, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v2, v16

    move-object v5, v11

    move-wide v6, v12

    invoke-direct/range {v2 .. v8}, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 717
    .end local v3    # "description":Ljava/lang/String;
    .end local v10    # "entry":Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
    .end local v14    # "endEntryMatch":Ljava/util/regex/Matcher;
    .local v2, "entry":Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
    move-object v14, v15

    goto :goto_5

    .line 679
    .end local v2    # "entry":Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
    .end local v15    # "entryMatch":Ljava/util/regex/Matcher;
    .restart local v10    # "entry":Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
    .local v14, "entryMatch":Ljava/util/regex/Matcher;
    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "@AssumeAssertion(nullness): dependent: entryStartRegex != null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 678
    :cond_9
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "@AssumeAssertion(nullness): dependent: entryMatch != null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 719
    :cond_a
    move-object v3, v1

    .line 722
    .restart local v3    # "description":Ljava/lang/String;
    :goto_4
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 723
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    sget-object v2, Lorg/checkerframework/org/plumelib/util/EntryReader;->lineSep:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 730
    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 731
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/plumelib/util/EntryReader;->putback(Ljava/lang/String;)V

    .line 734
    :cond_c
    new-instance v15, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object v2, v15

    move-object v5, v11

    move-wide v6, v12

    invoke-direct/range {v2 .. v8}, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 737
    .end local v3    # "description":Ljava/lang/String;
    .end local v10    # "entry":Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
    .restart local v2    # "entry":Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
    :goto_5
    return-object v2
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    .line 772
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;

    .line 773
    .local v0, "ri":Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    if-eqz v0, :cond_0

    .line 776
    iget-object v1, v0, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;->filename:Ljava/lang/String;

    return-object v1

    .line 774
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Past end of input"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLineNumber()I
    .locals 3

    .line 786
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;

    .line 787
    .local v0, "ri":Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;->getLineNumber()I

    move-result v1

    return v1

    .line 788
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Past end of input"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 4

    .line 603
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->pushbackLine:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 604
    return v1

    .line 607
    :cond_0
    const/4 v0, 0x0

    .line 609
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 612
    nop

    .line 614
    if-nez v0, :cond_1

    .line 615
    const/4 v1, 0x0

    return v1

    .line 618
    :cond_1
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->putback(Ljava/lang/String;)V

    .line 619
    return v1

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "unexpected IOException: "

    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 592
    return-object p0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readAheadLimit"    # I

    .line 851
    new-instance v0, Ljava/lang/Error;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 631
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 633
    return-object v0

    .line 635
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "unexpected IOException"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putback(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->pushbackLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 845
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->pushbackLine:Ljava/lang/String;

    .line 846
    return-void

    .line 843
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push back \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' when \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->pushbackLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public read()I
    .locals 2

    .line 856
    new-instance v0, Ljava/lang/Error;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 862
    new-instance v0, Ljava/lang/Error;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->pushbackLine:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->pushbackLine:Ljava/lang/String;

    .line 526
    .local v0, "line":Ljava/lang/String;
    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->pushbackLine:Ljava/lang/String;

    .line 527
    return-object v0

    .line 530
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    .line 531
    .restart local v0    # "line":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->commentRegex:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_2

    .line 532
    :goto_0
    if-eqz v0, :cond_2

    .line 533
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->commentRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 534
    .local v2, "cmatch":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 537
    goto :goto_1

    .line 542
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    .line 544
    .end local v2    # "cmatch":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 547
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 548
    return-object v1

    .line 553
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->includeRegex:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_6

    .line 554
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 555
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 556
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "filenameString":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 562
    new-instance v3, Ljava/io/File;

    invoke-static {v2}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->expandFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v3, "filename":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_4

    .line 565
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;

    .line 566
    .local v4, "reader":Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;->filename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v5, "currentFilename":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 568
    .local v6, "currentParent":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v7

    .line 572
    .end local v4    # "reader":Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    .end local v5    # "currentFilename":Ljava/io/File;
    .end local v6    # "currentParent":Ljava/io/File;
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    new-instance v5, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/EntryReader;->readLine()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 558
    .end local v3    # "filename":Ljava/io/File;
    :cond_5
    new-instance v3, Ljava/lang/Error;

    iget-object v4, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->includeRegex:Ljava/util/regex/Pattern;

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v4

    .line 559
    const-string v5, "includeRegex (%s) does not capture group 1 in %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 578
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "filenameString":Ljava/lang/String;
    :cond_6
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t remove lines from file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 867
    new-instance v0, Ljava/lang/Error;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEntryStartStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "entryStartRegex"    # Ljava/lang/String;
    .param p2, "entryStopRegex"    # Ljava/lang/String;

    .line 818
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStartRegex:Ljava/util/regex/Pattern;

    .line 819
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStopRegex:Ljava/util/regex/Pattern;

    .line 820
    return-void
.end method

.method public setEntryStartStop(Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "entryStartRegex"    # Ljava/util/regex/Pattern;
    .param p2, "entryStopRegex"    # Ljava/util/regex/Pattern;

    .line 831
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStartRegex:Ljava/util/regex/Pattern;

    .line 832
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->entryStopRegex:Ljava/util/regex/Pattern;

    .line 833
    return-void
.end method

.method public setLineNumber(I)V
    .locals 3
    .param p1, "lineNumber"    # I

    .line 800
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader;->readers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;

    .line 801
    .local v0, "ri":Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;->setLineNumber(I)V

    .line 805
    return-void

    .line 802
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Past end of input"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J

    .line 872
    new-instance v0, Ljava/lang/Error;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
