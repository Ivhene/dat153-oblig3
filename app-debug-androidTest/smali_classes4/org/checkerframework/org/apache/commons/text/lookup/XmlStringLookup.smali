.class final Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "XmlStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;->SPLIT_STR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "keys":[Ljava/lang/String;
    array-length v1, v0

    .line 69
    .local v1, "keyLen":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 73
    const/4 v2, 0x0

    aget-object v3, v0, v2

    .line 74
    .local v3, "documentPath":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {p0, p1, v4}, Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "xpath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    new-instance v6, Lorg/xml/sax/InputSource;

    new-array v7, v2, [Ljava/lang/String;

    .line 77
    invoke-static {v3, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v7, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 76
    invoke-interface {v5, v4, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Error looking up XML document [%s] and XPath [%s]."

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 70
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "documentPath":Ljava/lang/String;
    .end local v4    # "xpath":Ljava/lang/String;
    :cond_1
    const-string v2, "Bad XML key format [%s]; expected format is DocumentPath:XPath."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method
