.class public final enum Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;
.super Ljava/lang/Enum;
.source "DefaultStringLookup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum BASE64_DECODER:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum BASE64_ENCODER:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum CONST:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum DATE:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum DNS:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum ENVIRONMENT:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum FILE:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum JAVA:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum LOCAL_HOST:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum PROPERTIES:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum RESOURCE_BUNDLE:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum SCRIPT:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum SYSTEM_PROPERTIES:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL_DECODER:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL_ENCODER:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum XML:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;


# instance fields
.field private final key:Ljava/lang/String;

.field private final lookup:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 34
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v0, v1

    sget-object v2, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->base64DecoderStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    const-string v3, "BASE64_DECODER"

    const/4 v4, 0x0

    const-string v5, "base64Decoder"

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->BASE64_DECODER:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 39
    new-instance v2, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v1, v2

    sget-object v3, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->base64EncoderStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v3

    const-string v4, "BASE64_ENCODER"

    const/4 v5, 0x1

    const-string v6, "base64Encoder"

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v2, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->BASE64_ENCODER:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 44
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v2, v3

    sget-object v4, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->constantStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v4

    const-string v5, "CONST"

    const/4 v6, 0x2

    const-string v7, "const"

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v3, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->CONST:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 49
    new-instance v4, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v3, v4

    sget-object v5, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->dateStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v5

    const-string v6, "DATE"

    const/4 v7, 0x3

    const-string v8, "date"

    invoke-direct {v4, v6, v7, v8, v5}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v4, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->DATE:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 56
    new-instance v5, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v4, v5

    sget-object v6, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->dnsStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v6

    const-string v7, "DNS"

    const/4 v8, 0x4

    const-string v9, "dns"

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v5, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->DNS:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 61
    new-instance v6, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v5, v6

    sget-object v7, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->environmentVariableStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v7

    const-string v8, "ENVIRONMENT"

    const/4 v9, 0x5

    const-string v10, "env"

    invoke-direct {v6, v8, v9, v10, v7}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v6, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->ENVIRONMENT:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 66
    new-instance v7, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v6, v7

    sget-object v8, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->fileStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v8

    const-string v9, "FILE"

    const/4 v10, 0x6

    const-string v11, "file"

    invoke-direct {v7, v9, v10, v11, v8}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v7, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->FILE:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 71
    new-instance v8, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v7, v8

    sget-object v9, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->javaPlatformStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v9

    const-string v10, "JAVA"

    const/4 v11, 0x7

    const-string v12, "java"

    invoke-direct {v8, v10, v11, v12, v9}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v8, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->JAVA:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 76
    new-instance v9, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v8, v9

    sget-object v10, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v10}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->localHostStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v10

    const-string v11, "LOCAL_HOST"

    const/16 v12, 0x8

    const-string v13, "localhost"

    invoke-direct {v9, v11, v12, v13, v10}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v9, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->LOCAL_HOST:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 81
    new-instance v10, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v9, v10

    sget-object v11, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v11}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->propertiesStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v11

    const-string v12, "PROPERTIES"

    const/16 v13, 0x9

    const-string v14, "properties"

    invoke-direct {v10, v12, v13, v14, v11}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v10, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->PROPERTIES:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 86
    new-instance v11, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v10, v11

    sget-object v12, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v12}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->resourceBundleStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v12

    const-string v13, "RESOURCE_BUNDLE"

    const/16 v14, 0xa

    const-string v15, "resourceBundle"

    invoke-direct {v11, v13, v14, v15, v12}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v11, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->RESOURCE_BUNDLE:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 91
    new-instance v12, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v11, v12

    sget-object v13, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v13}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->scriptStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v14, "SCRIPT"

    const/16 v15, 0xb

    move-object/from16 v17, v0

    const-string v0, "script"

    invoke-direct {v12, v14, v15, v0, v13}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v12, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->SCRIPT:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 96
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v12, v0

    sget-object v13, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v13}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->systemPropertyStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v14, "SYSTEM_PROPERTIES"

    const/16 v15, 0xc

    move-object/from16 v18, v1

    const-string v1, "sys"

    invoke-direct {v0, v14, v15, v1, v13}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->SYSTEM_PROPERTIES:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 101
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v13, v0

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->urlStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    const-string v14, "URL"

    const/16 v15, 0xd

    move-object/from16 v19, v2

    const-string v2, "url"

    invoke-direct {v0, v14, v15, v2, v1}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->URL:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 106
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v14, v0

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->urlDecoderStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    const-string v2, "URL_DECODER"

    const/16 v15, 0xe

    move-object/from16 v20, v3

    const-string v3, "urlDecoder"

    invoke-direct {v0, v2, v15, v3, v1}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->URL_DECODER:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 111
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object v15, v0

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->urlEncoderStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    const-string v2, "URL_ENCODER"

    const/16 v3, 0xf

    move-object/from16 v21, v4

    const-string v4, "urlEncoder"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->URL_ENCODER:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 116
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-object/from16 v16, v0

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->xmlStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    const-string v2, "XML"

    const/16 v3, 0x10

    const-string v4, "xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->XML:Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    .line 29
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    filled-new-array/range {v0 .. v16}, [Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->$VALUES:[Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V
    .locals 0
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "lookup"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput-object p3, p0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->key:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->lookup:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    .line 133
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    .line 29
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->$VALUES:[Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/lookup/DefaultStringLookup;->lookup:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    return-object v0
.end method
