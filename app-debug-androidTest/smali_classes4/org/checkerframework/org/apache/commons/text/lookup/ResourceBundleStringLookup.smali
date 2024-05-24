.class final Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "ResourceBundleStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;


# instance fields
.field private final bundleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;->bundleName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 80
    return-object v0

    .line 82
    :cond_0
    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;->SPLIT_STR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    .line 84
    .local v2, "keyLen":I
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/lookup/ResourceBundleStringLookup;->bundleName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 85
    .local v6, "anyBundle":Z
    :goto_0
    if-eqz v6, :cond_3

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 87
    const-string v3, "Bad resource bundle key format [%s]; expected format is BundleName:KeyName."

    invoke-static {v3, v0}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 88
    :cond_3
    :goto_1
    if-eqz v3, :cond_5

    if-ne v2, v4, :cond_4

    goto :goto_2

    .line 89
    :cond_4
    const-string v0, "Bad resource bundle key format [%s]; expected format is KeyName."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 92
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    aget-object v3, v1, v5

    .line 93
    .local v3, "keyBundleName":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    aget-object v4, v1, v4

    goto :goto_3

    :cond_7
    aget-object v4, v1, v5

    .line 96
    .local v4, "bundleKey":Ljava/lang/String;
    :goto_3
    :try_start_0
    invoke-static {v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error looking up resource bundle [%s] and key [%s]."

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 99
    .local v5, "e":Ljava/util/MissingResourceException;
    return-object v0
.end method
