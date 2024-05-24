.class final Lorg/checkerframework/org/apache/commons/text/lookup/UrlDecoderStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "UrlDecoderStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/UrlDecoderStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/UrlDecoderStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/UrlDecoderStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/UrlDecoderStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/UrlDecoderStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "enc":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "%s: source=%s, encoding=%s"

    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method
