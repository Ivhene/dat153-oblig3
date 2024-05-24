.class final Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "PropertiesStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    .line 73
    .local v2, "keyLen":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 77
    const/4 v3, 0x0

    aget-object v4, v1, v3

    .line 78
    .local v4, "documentPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/lookup/PropertiesStringLookup;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "propertyKey":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 81
    .local v5, "properties":Ljava/util/Properties;
    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v6, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 84
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 81
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    .end local v0    # "propertyKey":Ljava/lang/String;
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "keyLen":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "documentPath":Ljava/lang/String;
    .end local v5    # "properties":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/String;
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .restart local v0    # "propertyKey":Ljava/lang/String;
    .restart local v1    # "keys":[Ljava/lang/String;
    .restart local v2    # "keyLen":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "documentPath":Ljava/lang/String;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local p1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v7

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "propertyKey":Ljava/lang/String;
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "keyLen":I
    .end local v4    # "documentPath":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    :cond_2
    :goto_0
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 85
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "properties":Ljava/util/Properties;
    .restart local v0    # "propertyKey":Ljava/lang/String;
    .restart local v1    # "keys":[Ljava/lang/String;
    .restart local v2    # "keyLen":I
    .restart local v4    # "documentPath":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Error looking up properties [%s] and key [%s]."

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 74
    .end local v0    # "propertyKey":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "documentPath":Ljava/lang/String;
    :cond_3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 75
    const-string v3, "Bad properties key format [%s]; expected format is DocumentPath::Key."

    invoke-static {v3, v0}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
