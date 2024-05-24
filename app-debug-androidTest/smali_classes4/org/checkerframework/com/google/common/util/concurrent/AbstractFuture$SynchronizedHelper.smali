.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$AtomicHelper;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$1;

    .line 1302
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method casListeners(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;
    .param p3, "update"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1326
    .local p1, "future":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1327
    :try_start_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$900(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1328
    invoke-static {p1, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$902(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1329
    monitor-exit p1

    const/4 v0, 0x1

    return v0

    .line 1331
    :cond_0
    monitor-exit p1

    const/4 v0, 0x0

    return v0

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casValue(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1337
    .local p1, "future":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1338
    :try_start_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$400(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1339
    invoke-static {p1, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$402(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    monitor-exit p1

    const/4 v0, 0x1

    return v0

    .line 1342
    :cond_0
    monitor-exit p1

    const/4 v0, 0x0

    return v0

    .line 1343
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casWaiters(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p3, "update"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1315
    .local p1, "future":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1316
    :try_start_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$800(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1317
    invoke-static {p1, p3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;->access$802(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1318
    monitor-exit p1

    const/4 v0, 0x1

    return v0

    .line 1320
    :cond_0
    monitor-exit p1

    const/4 v0, 0x0

    return v0

    .line 1321
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putNext(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 0
    .param p1, "waiter"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1310
    iput-object p2, p1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1311
    return-void
.end method

.method putThread(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "waiter"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;

    .line 1305
    iput-object p2, p1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 1306
    return-void
.end method
