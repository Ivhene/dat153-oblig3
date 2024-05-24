.class final Lorg/checkerframework/org/apache/commons/text/lookup/DnsStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "DnsStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/DnsStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/DnsStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/DnsStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DnsStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/DnsStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 82
    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    .line 86
    .local v2, "keyLen":I
    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "subKey":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v2, v6, :cond_1

    move-object v7, p1

    goto :goto_0

    :cond_1
    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "subValue":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 90
    .local v8, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v3, "canonical-name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :sswitch_1
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :sswitch_2
    const-string v3, "address"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 98
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 96
    :pswitch_0
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_1
    invoke-virtual {v8}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :pswitch_2
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :goto_3
    return-object v0

    .line 100
    .end local v8    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/net/UnknownHostException;
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4468640c -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x4fd2efc4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
