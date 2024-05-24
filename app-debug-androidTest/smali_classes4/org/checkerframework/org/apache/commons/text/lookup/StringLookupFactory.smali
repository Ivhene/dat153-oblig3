.class public final Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;
.super Ljava/lang/Object;
.source "StringLookupFactory.java"


# static fields
.field public static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

.field public static final KEY_BASE64_DECODER:Ljava/lang/String; = "base64Decoder"

.field public static final KEY_BASE64_ENCODER:Ljava/lang/String; = "base64Encoder"

.field public static final KEY_CONST:Ljava/lang/String; = "const"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DNS:Ljava/lang/String; = "dns"

.field public static final KEY_ENV:Ljava/lang/String; = "env"

.field public static final KEY_FILE:Ljava/lang/String; = "file"

.field public static final KEY_JAVA:Ljava/lang/String; = "java"

.field public static final KEY_LOCALHOST:Ljava/lang/String; = "localhost"

.field public static final KEY_PROPERTIES:Ljava/lang/String; = "properties"

.field public static final KEY_RESOURCE_BUNDLE:Ljava/lang/String; = "resourceBundle"

.field public static final KEY_SCRIPT:Ljava/lang/String; = "script"

.field public static final KEY_SYS:Ljava/lang/String; = "sys"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final KEY_URL_DECODER:Ljava/lang/String; = "urlDecoder"

.field public static final KEY_URL_ENCODER:Ljava/lang/String; = "urlEncoder"

.field public static final KEY_XML:Ljava/lang/String; = "xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    return-void
.end method

.method public static clear()V
    .locals 0

    .line 275
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->clear()V

    .line 276
    return-void
.end method


# virtual methods
.method public addDefaultStringLookups(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p1, "stringLookupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;>;"
    if-eqz p1, :cond_0

    .line 294
    const-string v0, "base64"

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/Base64DecoderStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/Base64DecoderStringLookup;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->values()[Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 296
    .local v3, "stringLookup":Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->getStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v5

    .line 296
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v3    # "stringLookup":Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method public base64DecoderStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 326
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/Base64DecoderStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/Base64DecoderStringLookup;

    return-object v0
.end method

.method public base64EncoderStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 353
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/Base64EncoderStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/Base64EncoderStringLookup;

    return-object v0
.end method

.method public base64StringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/Base64DecoderStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/Base64DecoderStringLookup;

    return-object v0
.end method

.method public constantStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 420
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;

    return-object v0
.end method

.method public dateStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 447
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;

    return-object v0
.end method

.method public dnsStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 676
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DnsStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/DnsStringLookup;

    return-object v0
.end method

.method public environmentVariableStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 475
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/EnvironmentVariableStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/EnvironmentVariableStringLookup;

    return-object v0
.end method

.method public fileStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 502
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/FileStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;

    return-object v0
.end method

.method public interpolatorStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 531
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;

    return-object v0
.end method

.method public interpolatorStringLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    .line 560
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public interpolatorStringLookup(Ljava/util/Map;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Z)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1
    .param p2, "defaultStringLookup"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .param p3, "addDefaultLookups"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;",
            ">;",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;",
            "Z)",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    .line 549
    .local p1, "stringLookupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Ljava/util/Map;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Z)V

    return-object v0
.end method

.method public interpolatorStringLookup(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1
    .param p1, "defaultStringLookup"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    .line 570
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    return-object v0
.end method

.method public javaPlatformStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 610
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/JavaPlatformStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/JavaPlatformStringLookup;

    return-object v0
.end method

.method public localHostStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 643
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/LocalHostStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/LocalHostStringLookup;

    return-object v0
.end method

.method public mapStringLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    .line 687
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;->on(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;

    move-result-object v0

    return-object v0
.end method

.method public nullStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 696
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/NullStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/NullStringLookup;

    return-object v0
.end method

.method public propertiesStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 734
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;

    return-object v0
.end method

.method public resourceBundleStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 767
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;

    return-object v0
.end method

.method public resourceBundleStringLookup(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 795
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public scriptStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 828
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;

    return-object v0
.end method

.method public systemPropertyStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 855
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/SystemPropertyStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/SystemPropertyStringLookup;

    return-object v0
.end method

.method public urlDecoderStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 888
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/UrlDecoderStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/UrlDecoderStringLookup;

    return-object v0
.end method

.method public urlEncoderStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 921
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/UrlEncoderStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/UrlEncoderStringLookup;

    return-object v0
.end method

.method public urlStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 958
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/UrlStringLookup;

    return-object v0
.end method

.method public xmlStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 992
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/XmlStringLookup;

    return-object v0
.end method
