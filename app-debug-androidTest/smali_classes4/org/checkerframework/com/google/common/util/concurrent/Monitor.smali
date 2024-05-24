.class public final Lorg/checkerframework/com/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private activeGuards:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 351
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fair"    # Z

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->activeGuards:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 360
    iput-boolean p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->fair:Z

    .line 361
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 362
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    .line 205
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private await(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 1
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1179
    if-eqz p2, :cond_0

    .line 1180
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1182
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->beginWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1185
    :cond_1
    :try_start_0
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 1186
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1188
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->endWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1189
    nop

    .line 1190
    return-void

    .line 1188
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->endWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1189
    throw v0
.end method

.method private awaitNanos(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "nanos"    # J
    .param p4, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1211
    const/4 v0, 0x1

    .line 1214
    .local v0, "firstTime":Z
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_2

    .line 1215
    nop

    .line 1228
    if-nez v0, :cond_1

    .line 1229
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->endWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1215
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1217
    :cond_2
    if-eqz v0, :cond_4

    .line 1218
    if-eqz p4, :cond_3

    .line 1219
    :try_start_0
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1221
    :cond_3
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->beginWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1222
    const/4 v0, 0x0

    .line 1224
    :cond_4
    iget-object v1, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    move-wide p2, v1

    .line 1225
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1226
    nop

    .line 1228
    if-nez v0, :cond_5

    .line 1229
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->endWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1226
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 1228
    :catchall_0
    move-exception v1

    if-nez v0, :cond_6

    .line 1229
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->endWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1231
    :cond_6
    throw v1
.end method

.method private awaitUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 1
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z

    .line 1194
    if-eqz p2, :cond_0

    .line 1195
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1197
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->beginWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1200
    :cond_1
    :try_start_0
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 1201
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1203
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->endWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1204
    nop

    .line 1205
    return-void

    .line 1203
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->endWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V

    .line 1204
    throw v0
.end method

.method private beginWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1143
    iget v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1144
    .local v0, "waiters":I
    if-nez v0, :cond_0

    .line 1146
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->activeGuards:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    iput-object v1, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1147
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->activeGuards:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1149
    :cond_0
    return-void
.end method

.method private endWaitingFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1154
    iget v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1155
    .local v0, "waiters":I
    if-nez v0, :cond_2

    .line 1157
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->activeGuards:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .local v1, "p":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    const/4 v2, 0x0

    .line 1158
    .local v2, "pred":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-ne v1, p1, :cond_1

    .line 1159
    if-nez v2, :cond_0

    .line 1160
    iget-object v3, v1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->activeGuards:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    goto :goto_1

    .line 1162
    :cond_0
    iget-object v3, v1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, v2, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1164
    :goto_1
    const/4 v3, 0x0

    iput-object v3, v1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1165
    goto :goto_2

    .line 1157
    :cond_1
    move-object v2, v1

    iget-object v1, v1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0

    .line 1169
    .end local v1    # "p":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .end local v2    # "pred":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    :cond_2
    :goto_2
    return-void
.end method

.method private static initNanoTime(J)J
    .locals 4
    .param p0, "timeoutNanos"    # J

    .line 1043
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 1044
    return-wide v0

    .line 1046
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1047
    .local v2, "startTime":J
    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method private isSatisfied(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1125
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1126
    :catchall_0
    move-exception v0

    .line 1127
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->signalAllWaiters()V

    .line 1128
    throw v0
.end method

.method private static remainingNanos(JJ)J
    .locals 3
    .param p0, "startTime"    # J
    .param p2, "timeoutNanos"    # J

    .line 1063
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long v0, p2, v0

    :goto_0
    return-wide v0
.end method

.method private signalAllWaiters()V
    .locals 2

    .line 1135
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->activeGuards:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-eqz v0, :cond_0

    .line 1136
    iget-object v1, v0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1135
    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0

    .line 1138
    .end local v0    # "guard":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    :cond_0
    return-void
.end method

.method private signalNextWaiter()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->activeGuards:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-eqz v0, :cond_1

    .line 1093
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->isSatisfied(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, v0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1095
    goto :goto_1

    .line 1092
    :cond_0
    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0

    .line 1098
    .end local v0    # "guard":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    :cond_1
    :goto_1
    return-void
.end method

.method private static toSafeNanos(JLjava/util/concurrent/TimeUnit;)J
    .locals 5
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1032
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1033
    .local v0, "timeoutNanos":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const-wide v2, 0x5ffffffffffffffdL    # 2.6815615859885185E154

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_1
    return-wide v2
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 384
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 403
    invoke-static {p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 404
    .local v0, "timeoutNanos":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 405
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v3, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    const/4 v3, 0x1

    return v3

    .line 408
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    .line 410
    .local v3, "interrupted":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .local v4, "startTime":J
    move-wide v6, v0

    .line 413
    .local v6, "remainingNanos":J
    :goto_0
    :try_start_1
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    if-eqz v3, :cond_1

    .line 421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 413
    :cond_1
    return v8

    .line 414
    :catch_0
    move-exception v8

    .line 415
    .local v8, "interrupt":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    .line 416
    :try_start_2
    invoke-static {v4, v5, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v6, v9

    .line 417
    .end local v8    # "interrupt":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 420
    .end local v4    # "startTime":J
    .end local v6    # "remainingNanos":J
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 423
    :cond_2
    throw v4
.end method

.method public enter(Ljava/time/Duration;)Z
    .locals 3
    .param p1, "time"    # Ljava/time/Duration;

    .line 393
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterIf(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 674
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_2

    .line 677
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 678
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 680
    const/4 v1, 0x0

    .line 682
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 684
    if-nez v1, :cond_0

    .line 685
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 682
    :cond_0
    return v2

    .line 684
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 685
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 687
    :cond_1
    throw v2

    .line 675
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIf(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 709
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_3

    .line 712
    invoke-virtual {p0, p2, p3, p4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    const/4 v0, 0x0

    return v0

    .line 716
    :cond_0
    const/4 v0, 0x0

    .line 718
    .local v0, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 720
    if-nez v0, :cond_1

    .line 721
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 718
    :cond_1
    return v1

    .line 720
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 721
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 723
    :cond_2
    throw v1

    .line 710
    .end local v0    # "satisfied":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIf(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Ljava/time/Duration;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # Ljava/time/Duration;

    .line 698
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterIf(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterIfInterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 734
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_2

    .line 737
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 738
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 740
    const/4 v1, 0x0

    .line 742
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 744
    if-nez v1, :cond_0

    .line 745
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    :cond_0
    return v2

    .line 744
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 745
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 747
    :cond_1
    throw v2

    .line 735
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIfInterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 770
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_3

    .line 773
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 774
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    const/4 v1, 0x0

    return v1

    .line 778
    :cond_0
    const/4 v1, 0x0

    .line 780
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 782
    if-nez v1, :cond_1

    .line 783
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 780
    :cond_1
    return v2

    .line 782
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 783
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 785
    :cond_2
    throw v2

    .line 771
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIfInterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Ljava/time/Duration;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 758
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterIfInterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 433
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterInterruptibly(Ljava/time/Duration;)Z
    .locals 3
    .param p1, "time"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 443
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 474
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_3

    .line 477
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 478
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 479
    .local v1, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->await(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_0
    const/4 v2, 0x1

    .line 488
    if-nez v2, :cond_1

    .line 489
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 492
    :cond_1
    return-void

    .line 488
    :catchall_0
    move-exception v3

    if-nez v2, :cond_2

    .line 489
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 491
    :cond_2
    throw v3

    .line 475
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "signalBeforeWaiting":Z
    .end local v2    # "satisfied":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhen(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 517
    invoke-static {p2, p3, p4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 518
    .local v0, "timeoutNanos":J
    iget-object v2, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v2, p0, :cond_a

    .line 521
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 522
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    .line 523
    .local v3, "reentrant":Z
    const-wide/16 v4, 0x0

    .line 527
    .local v4, "startTime":J
    iget-boolean v6, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->fair:Z

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 529
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 532
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 533
    goto :goto_0

    .line 530
    :cond_0
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 536
    :cond_1
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v4

    .line 537
    invoke-virtual {v2, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 538
    return v7

    .line 542
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 543
    .local v6, "satisfied":Z
    const/4 v8, 0x1

    .line 545
    .local v8, "threw":Z
    nop

    .line 546
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v9

    if-nez v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-nez v9, :cond_3

    move-wide v9, v0

    goto :goto_1

    .line 549
    :cond_3
    invoke-static {v4, v5, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v9

    .line 547
    :goto_1
    invoke-direct {p0, p1, v9, v10, v3}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->awaitNanos(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_5

    :cond_4
    const/4 v7, 0x1

    :cond_5
    move v6, v7

    .line 551
    const/4 v7, 0x0

    .line 552
    .end local v8    # "threw":Z
    .local v7, "threw":Z
    nop

    .line 554
    if-nez v6, :cond_7

    .line 557
    if-eqz v7, :cond_6

    if-nez v3, :cond_6

    .line 558
    :try_start_1
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 561
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    throw v8

    .line 561
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    nop

    .line 552
    :cond_7
    return v6

    .line 554
    .end local v7    # "threw":Z
    .restart local v8    # "threw":Z
    :catchall_1
    move-exception v7

    if-nez v6, :cond_9

    .line 557
    if-eqz v8, :cond_8

    if-nez v3, :cond_8

    .line 558
    :try_start_2
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 561
    :catchall_2
    move-exception v7

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    throw v7

    .line 561
    :cond_8
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    nop

    .line 564
    :cond_9
    throw v7

    .line 519
    .end local v2    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "reentrant":Z
    .end local v4    # "startTime":J
    .end local v6    # "satisfied":Z
    .end local v8    # "threw":Z
    :cond_a
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2
.end method

.method public enterWhen(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Ljava/time/Duration;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 504
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterWhen(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 569
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_3

    .line 572
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 573
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 574
    .local v1, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 576
    const/4 v2, 0x0

    .line 578
    .local v2, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_0
    const/4 v2, 0x1

    .line 583
    if-nez v2, :cond_1

    .line 584
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 587
    :cond_1
    return-void

    .line 583
    :catchall_0
    move-exception v3

    if-nez v2, :cond_2

    .line 584
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->leave()V

    .line 586
    :cond_2
    throw v3

    .line 570
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "signalBeforeWaiting":Z
    .end local v2    # "satisfied":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 14
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 608
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {p2 .. p4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 609
    .local v3, "timeoutNanos":J
    iget-object v0, v2, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, v1, :cond_a

    .line 612
    iget-object v5, v1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 613
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const-wide/16 v6, 0x0

    .line 614
    .local v6, "startTime":J
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v8

    .line 615
    .local v8, "signalBeforeWaiting":Z
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    .line 617
    .local v9, "interrupted":Z
    :try_start_0
    iget-boolean v0, v1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    :cond_0
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v6, v10

    .line 619
    move-wide v10, v3

    .line 621
    .local v10, "remainingNanos":J
    :goto_0
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11, v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_7

    .line 622
    nop

    .line 633
    .end local v10    # "remainingNanos":J
    :cond_1
    const/4 v12, 0x0

    .line 637
    .local v12, "satisfied":Z
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    const/4 v0, 0x1

    .end local v12    # "satisfied":Z
    .local v0, "satisfied":Z
    goto :goto_3

    .line 641
    .end local v0    # "satisfied":Z
    .restart local v12    # "satisfied":Z
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-nez v0, :cond_3

    .line 642
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v10

    move-wide v6, v10

    .line 643
    move-wide v10, v3

    .restart local v10    # "remainingNanos":J
    goto :goto_2

    .line 645
    .end local v10    # "remainingNanos":J
    :cond_3
    invoke-static {v6, v7, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v10

    .line 647
    .restart local v10    # "remainingNanos":J
    :goto_2
    invoke-direct {p0, p1, v10, v11, v8}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->awaitNanos(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 649
    .end local v10    # "remainingNanos":J
    .end local v12    # "satisfied":Z
    .restart local v0    # "satisfied":Z
    :goto_3
    nop

    .line 656
    if-nez v0, :cond_4

    .line 657
    :try_start_3
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 661
    :cond_4
    if-eqz v9, :cond_5

    .line 662
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 649
    :cond_5
    return v0

    .line 656
    .end local v0    # "satisfied":Z
    .restart local v12    # "satisfied":Z
    :catchall_0
    move-exception v0

    if-nez v12, :cond_6

    .line 657
    :try_start_4
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 659
    :cond_6
    nop

    .end local v3    # "timeoutNanos":J
    .end local v5    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "startTime":J
    .end local v8    # "signalBeforeWaiting":Z
    .end local v9    # "interrupted":Z
    .end local p1    # "guard":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .end local p2    # "time":J
    .end local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 650
    .restart local v3    # "timeoutNanos":J
    .restart local v5    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "startTime":J
    .restart local v8    # "signalBeforeWaiting":Z
    .restart local v9    # "interrupted":Z
    .restart local p1    # "guard":Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .restart local p2    # "time":J
    .restart local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    :catch_0
    move-exception v0

    .line 651
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 652
    const/4 v8, 0x0

    .line 653
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 624
    .end local v12    # "satisfied":Z
    .restart local v10    # "remainingNanos":J
    :cond_7
    nop

    .line 661
    if-eqz v9, :cond_8

    .line 662
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 624
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 626
    :catch_1
    move-exception v0

    .line 627
    .restart local v0    # "interrupt":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 628
    :try_start_5
    invoke-static {v6, v7, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v10, v12

    .line 629
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 661
    .end local v10    # "remainingNanos":J
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_9

    .line 662
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 664
    :cond_9
    throw v0

    .line 610
    .end local v5    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "startTime":J
    .end local v8    # "signalBeforeWaiting":Z
    .end local v9    # "interrupted":Z
    :cond_a
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Ljava/time/Duration;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # Ljava/time/Duration;

    .line 597
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public getOccupiedDepth()I
    .locals 1

    .line 965
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .locals 1

    .line 975
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)I
    .locals 2
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1015
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    .line 1018
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1020
    :try_start_0
    iget v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1020
    return v0

    .line 1022
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1023
    throw v0

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 995
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .locals 1

    .line 985
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 1005
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->getWaitQueueLength(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFair()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->fair:Z

    return v0
.end method

.method public isOccupied()Z
    .locals 1

    .line 949
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .locals 3

    .line 928
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 931
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 932
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 936
    nop

    .line 937
    return-void

    .line 935
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 936
    throw v1
.end method

.method public newGuard(Ljava/util/function/BooleanSupplier;)Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .locals 1
    .param p1, "isSatisfied"    # Ljava/util/function/BooleanSupplier;

    .line 372
    const-string v0, "isSatisfied"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$1;

    invoke-direct {v0, p0, p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$1;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Monitor;Lorg/checkerframework/com/google/common/util/concurrent/Monitor;Ljava/util/function/BooleanSupplier;)V

    return-object v0
.end method

.method public tryEnter()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 797
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_3

    .line 800
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 801
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    const/4 v1, 0x0

    return v1

    .line 805
    :cond_0
    const/4 v1, 0x0

    .line 807
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 809
    if-nez v1, :cond_1

    .line 810
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 807
    :cond_1
    return v2

    .line 809
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 810
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 812
    :cond_2
    throw v2

    .line 798
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 822
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 825
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->await(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 828
    :cond_1
    return-void

    .line 823
    :cond_2
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 851
    invoke-static {p2, p3, p4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 852
    .local v0, "timeoutNanos":J
    iget-object v2, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    const/4 v3, 0x1

    if-ne v2, p0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    .line 855
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 856
    return v3

    .line 858
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 861
    invoke-direct {p0, p1, v0, v1, v3}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->awaitNanos(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v2

    return v2

    .line 859
    :cond_2
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 853
    :cond_3
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2
.end method

.method public waitFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Ljava/time/Duration;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 839
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->waitFor(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public waitForUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;)V
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

    .line 869
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 872
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 875
    :cond_1
    return-void

    .line 870
    :cond_2
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitForUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 14
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 896
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {p2 .. p4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 897
    .local v3, "timeoutNanos":J
    iget-object v0, v2, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v6, v1, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v6

    and-int/2addr v0, v6

    if-eqz v0, :cond_6

    .line 900
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    return v5

    .line 903
    :cond_1
    const/4 v0, 0x1

    .line 904
    .local v0, "signalBeforeWaiting":Z
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v6

    .line 905
    .local v6, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    .line 907
    .local v8, "interrupted":Z
    move-wide v9, v3

    move-wide v10, v9

    move v9, v8

    move v8, v0

    .line 909
    .end local v0    # "signalBeforeWaiting":Z
    .local v8, "signalBeforeWaiting":Z
    .local v9, "interrupted":Z
    .local v10, "remainingNanos":J
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, v10, v11, v8}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->awaitNanos(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    if-eqz v9, :cond_2

    .line 921
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 909
    :cond_2
    return v0

    .line 920
    .end local v10    # "remainingNanos":J
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 910
    .restart local v10    # "remainingNanos":J
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 911
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 912
    :try_start_1
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_4

    .line 913
    nop

    .line 920
    if-eqz v9, :cond_3

    .line 921
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 913
    :cond_3
    return v5

    .line 915
    :cond_4
    const/4 v8, 0x0

    .line 916
    :try_start_2
    invoke-static {v6, v7, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v10, v12

    .line 917
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 920
    .end local v10    # "remainingNanos":J
    :goto_2
    if-eqz v9, :cond_5

    .line 921
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 923
    :cond_5
    throw v0

    .line 898
    .end local v6    # "startTime":J
    .end local v8    # "signalBeforeWaiting":Z
    .end local v9    # "interrupted":Z
    :cond_6
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitForUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;Ljava/time/Duration;)Z
    .locals 3
    .param p1, "guard"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # Ljava/time/Duration;

    .line 885
    invoke-static {p2}, Lorg/checkerframework/com/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
