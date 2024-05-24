.class Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "ConstantStringLookup.java"


# static fields
.field private static final FIELD_SEPRATOR:C = '.'

.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;

.field private static constantCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->constantCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    return-void
.end method

.method static clear()V
    .locals 1

    .line 81
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->constantCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 82
    return-void
.end method


# virtual methods
.method protected fetchClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 150
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 95
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 96
    monitor-exit p0

    return-object v0

    .line 99
    :cond_0
    :try_start_0
    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->constantCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 101
    monitor-exit p0

    return-object v1

    .line 103
    :cond_1
    const/16 v2, 0x2e

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .local v2, "fieldPos":I
    if-gez v2, :cond_2

    .line 105
    monitor-exit p0

    return-object v0

    .line 108
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->resolveField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 110
    invoke-static {v3, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "string":Ljava/lang/String;
    sget-object v5, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->constantCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    move-object v1, v4

    .line 117
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "string":Ljava/lang/String;
    .end local p0    # "this":Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;
    :cond_3
    nop

    .line 118
    monitor-exit p0

    return-object v1

    .line 114
    :catch_0
    move-exception v3

    .line 116
    .local v3, "ex":Ljava/lang/Exception;
    monitor-exit p0

    return-object v0

    .line 94
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "fieldPos":I
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected resolveField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/ConstantStringLookup;->fetchClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 133
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    return-object v1

    .line 136
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
