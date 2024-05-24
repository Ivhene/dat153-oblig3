.class final Lorg/checkerframework/org/apache/commons/text/lookup/FileStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "FileStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/FileStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/FileStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/FileStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    .line 77
    .local v2, "keyLen":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 81
    const/4 v3, 0x0

    aget-object v4, v1, v3

    .line 82
    .local v4, "charsetName":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/lookup/FileStringLookup;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Error looking up file [%s] with charset [%s]."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 78
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "charsetName":Ljava/lang/String;
    :cond_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 79
    const-string v3, "Bad file key format [%s], expected format is CharsetName:DocumentPath."

    invoke-static {v3, v0}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
