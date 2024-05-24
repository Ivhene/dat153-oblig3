.class final Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "UrlStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;

    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;->SPLIT_STR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "keys":[Ljava/lang/String;
    array-length v1, v0

    .line 67
    .local v1, "keyLen":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 71
    const/4 v2, 0x0

    aget-object v3, v0, v2

    .line 72
    .local v3, "charsetName":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {p0, p1, v4}, Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "urlStr":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v5, "url":Ljava/net/URL;
    const/16 v6, 0x2000

    .line 76
    .local v6, "size":I
    new-instance v7, Ljava/io/StringWriter;

    const/16 v8, 0x2000

    invoke-direct {v7, v8}, Ljava/io/StringWriter;-><init>(I)V

    .line 77
    .local v7, "writer":Ljava/io/StringWriter;
    new-array v8, v8, [C

    .line 78
    .local v8, "buffer":[C
    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v9, "reader":Ljava/io/InputStreamReader;
    :goto_0
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    move v11, v10

    .local v11, "n":I
    const/4 v12, -0x1

    if-eq v12, v10, :cond_1

    .line 82
    invoke-virtual {v7, v8, v2, v11}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v11    # "n":I
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 85
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 78
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v2

    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "keyLen":I
    .end local v3    # "charsetName":Ljava/lang/String;
    .end local v4    # "urlStr":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "size":I
    .end local v7    # "writer":Ljava/io/StringWriter;
    .end local v8    # "buffer":[C
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .end local p1    # "key":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .restart local v0    # "keys":[Ljava/lang/String;
    .restart local v1    # "keyLen":I
    .restart local v3    # "charsetName":Ljava/lang/String;
    .restart local v4    # "urlStr":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "size":I
    .restart local v7    # "writer":Ljava/io/StringWriter;
    .restart local v8    # "buffer":[C
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local p1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v10

    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v11

    :try_start_5
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "keyLen":I
    .end local v3    # "charsetName":Ljava/lang/String;
    .end local v4    # "urlStr":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    :goto_1
    throw v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 86
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "size":I
    .end local v7    # "writer":Ljava/io/StringWriter;
    .end local v8    # "buffer":[C
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "keys":[Ljava/lang/String;
    .restart local v1    # "keyLen":I
    .restart local v3    # "charsetName":Ljava/lang/String;
    .restart local v4    # "urlStr":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Error looking up URL [%s] with Charset [%s]."

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 68
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "charsetName":Ljava/lang/String;
    .end local v4    # "urlStr":Ljava/lang/String;
    :cond_2
    const-string v2, "Bad URL key format [%s]; expected format is DocumentPath:Key."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method
