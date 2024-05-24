.class public Lnet/bytebuddy/TypeCache$WithInlineExpunction;
.super Lnet/bytebuddy/TypeCache;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithInlineExpunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/TypeCache<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/TypeCache$Sort;)V
    .locals 0
    .param p1, "sort"    # Lnet/bytebuddy/TypeCache$Sort;

    .line 336
    .local p0, "this":Lnet/bytebuddy/TypeCache$WithInlineExpunction;, "Lnet/bytebuddy/TypeCache$WithInlineExpunction<TS;>;"
    invoke-direct {p0, p1}, Lnet/bytebuddy/TypeCache;-><init>(Lnet/bytebuddy/TypeCache$Sort;)V

    .line 337
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TS;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lnet/bytebuddy/TypeCache$WithInlineExpunction;, "Lnet/bytebuddy/TypeCache$WithInlineExpunction<TS;>;"
    .local p2, "key":Ljava/lang/Object;, "TS;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/TypeCache;->find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    .line 344
    return-object v0

    .line 346
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    .line 347
    throw v0
.end method

.method public findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Class;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TS;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lnet/bytebuddy/TypeCache$WithInlineExpunction;, "Lnet/bytebuddy/TypeCache$WithInlineExpunction<TS;>;"
    .local p2, "key":Ljava/lang/Object;, "TS;"
    .local p3, "builder":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Class<*>;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/TypeCache;->findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    .line 366
    return-object v0

    .line 368
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    .line 369
    throw v0
.end method

.method public findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "monitor"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TS;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lnet/bytebuddy/TypeCache$WithInlineExpunction;, "Lnet/bytebuddy/TypeCache$WithInlineExpunction<TS;>;"
    .local p2, "key":Ljava/lang/Object;, "TS;"
    .local p3, "builder":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Class<*>;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/TypeCache;->findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    .line 377
    return-object v0

    .line 379
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    .line 380
    throw v0
.end method

.method public insert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TS;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lnet/bytebuddy/TypeCache$WithInlineExpunction;, "Lnet/bytebuddy/TypeCache$WithInlineExpunction<TS;>;"
    .local p2, "key":Ljava/lang/Object;, "TS;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/TypeCache;->insert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    .line 355
    return-object v0

    .line 357
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    .line 358
    throw v0
.end method
