.class public Lnet/bytebuddy/TypeCache;
.super Ljava/lang/ref/ReferenceQueue;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/TypeCache$SimpleKey;,
        Lnet/bytebuddy/TypeCache$WithInlineExpunction;,
        Lnet/bytebuddy/TypeCache$StorageKey;,
        Lnet/bytebuddy/TypeCache$LookupKey;,
        Lnet/bytebuddy/TypeCache$Sort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/ReferenceQueue<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOT_FOUND:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/TypeCache$StorageKey;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TT;",
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;>;>;"
        }
    .end annotation
.end field

.field protected final sort:Lnet/bytebuddy/TypeCache$Sort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/TypeCache;->NOT_FOUND:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/TypeCache$Sort;)V
    .locals 1
    .param p1, "sort"    # Lnet/bytebuddy/TypeCache$Sort;

    .line 77
    .local p0, "this":Lnet/bytebuddy/TypeCache;, "Lnet/bytebuddy/TypeCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 78
    iput-object p1, p0, Lnet/bytebuddy/TypeCache;->sort:Lnet/bytebuddy/TypeCache$Sort;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 80
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 194
    .local p0, "this":Lnet/bytebuddy/TypeCache;, "Lnet/bytebuddy/TypeCache<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 195
    return-void
.end method

.method public expungeStaleEntries()V
    .locals 2

    .line 185
    .local p0, "this":Lnet/bytebuddy/TypeCache;, "Lnet/bytebuddy/TypeCache<TT;>;"
    nop

    :goto_0
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TT;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lnet/bytebuddy/TypeCache;, "Lnet/bytebuddy/TypeCache<TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lnet/bytebuddy/TypeCache$LookupKey;

    invoke-direct {v1, p1}, Lnet/bytebuddy/TypeCache$LookupKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 92
    .local v0, "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TT;Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;>;"
    if-nez v0, :cond_0

    .line 93
    sget-object v1, Lnet/bytebuddy/TypeCache;->NOT_FOUND:Ljava/lang/Class;

    return-object v1

    .line 95
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 96
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    if-nez v1, :cond_1

    .line 97
    sget-object v2, Lnet/bytebuddy/TypeCache;->NOT_FOUND:Ljava/lang/Class;

    return-object v2

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    return-object v2
.end method

.method public findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Class;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TT;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lnet/bytebuddy/TypeCache;, "Lnet/bytebuddy/TypeCache<TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    .local p3, "lazy":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/TypeCache;->find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 150
    return-object v0

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v1}, Lnet/bytebuddy/TypeCache;->insert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 154
    :catchall_0
    move-exception v1

    .line 155
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not create type"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "monitor"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TT;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lnet/bytebuddy/TypeCache;, "Lnet/bytebuddy/TypeCache<TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    .local p3, "lazy":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/TypeCache;->find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 171
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 172
    return-object v0

    .line 174
    :cond_0
    monitor-enter p4

    .line 175
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/TypeCache;->findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Class;

    move-result-object v1

    monitor-exit p4

    return-object v1

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TT;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lnet/bytebuddy/TypeCache;, "Lnet/bytebuddy/TypeCache<TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lnet/bytebuddy/TypeCache$LookupKey;

    invoke-direct {v1, p1}, Lnet/bytebuddy/TypeCache$LookupKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 115
    .local v0, "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TT;Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;>;"
    if-nez v0, :cond_0

    .line 116
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 117
    iget-object v1, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lnet/bytebuddy/TypeCache$StorageKey;

    invoke-direct {v2, p1, p0}, Lnet/bytebuddy/TypeCache$StorageKey;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .line 118
    .local v1, "previous":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TT;Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;>;"
    if-eqz v1, :cond_0

    .line 119
    move-object v0, v1

    .line 122
    .end local v1    # "previous":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TT;Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;>;"
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/TypeCache;->sort:Lnet/bytebuddy/TypeCache$Sort;

    invoke-virtual {v1, p3}, Lnet/bytebuddy/TypeCache$Sort;->wrap(Ljava/lang/Class;)Ljava/lang/ref/Reference;

    move-result-object v1

    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    invoke-interface {v0, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 123
    .local v2, "previous":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    :goto_0
    if-eqz v2, :cond_4

    .line 124
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 125
    .local v3, "previousType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1

    .line 126
    return-object v3

    .line 127
    :cond_1
    invoke-interface {v0, p2, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    invoke-interface {v0, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/ref/Reference;

    goto :goto_1

    .line 130
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/ref/Reference;

    .line 131
    if-nez v2, :cond_3

    .line 132
    invoke-interface {v0, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/ref/Reference;

    .line 135
    .end local v3    # "previousType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    goto :goto_0

    .line 136
    :cond_4
    return-object p3
.end method
