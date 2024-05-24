.class public Lorg/checkerframework/com/google/common/base/internal/Finalizer;
.super Ljava/lang/Object;
.source "Finalizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FINALIZABLE_REFERENCE:Ljava/lang/String; = "org.checkerframework.com.google.common.base.FinalizableReference"

.field private static final bigThreadConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final inheritableThreadLocals:Ljava/lang/reflect/Field;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final frqReference:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    .line 120
    invoke-static {}, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->getBigThreadConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->bigThreadConstructor:Ljava/lang/reflect/Constructor;

    .line 122
    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->getInheritableThreadLocalsField()Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->inheritableThreadLocals:Ljava/lang/reflect/Field;

    .line 122
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "finalizableReferenceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p3, "frqReference":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    .line 136
    iput-object p3, p0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    .line 137
    return-void
.end method

.method private cleanUp(Ljava/lang/ref/Reference;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)Z"
        }
    .end annotation

    .line 161
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->getFinalizeReferentMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 162
    .local v0, "finalizeReferentMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 163
    return v1

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 172
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    if-ne p1, v2, :cond_1

    .line 176
    return v1

    .line 180
    :cond_1
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v2

    .line 182
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Error cleaning up after reference."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    move-object p1, v2

    if-nez v2, :cond_0

    .line 190
    const/4 v1, 0x1

    return v1
.end method

.method private static getBigThreadConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 228
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/ThreadGroup;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Runnable;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    .line 232
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFinalizeReferentMethod()Ljava/lang/reflect/Method;
    .locals 3

    .line 195
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 196
    .local v0, "finalizableReferenceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 203
    const/4 v1, 0x0

    return-object v1

    .line 206
    :cond_0
    :try_start_0
    const-string v1, "finalizeReferent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static getInheritableThreadLocalsField()Ljava/lang/reflect/Field;
    .locals 4

    .line 214
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string v1, "inheritableThreadLocals"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 215
    .local v0, "inheritableThreadLocals":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    return-object v0

    .line 217
    .end local v0    # "inheritableThreadLocals":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v0

    .line 218
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 222
    const/4 v1, 0x0

    return-object v1
.end method

.method public static startFinalizer(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p0, "finalizableReferenceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p2, "frqReference":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.checkerframework.com.google.common.base.FinalizableReference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    new-instance v0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/google/common/base/internal/Finalizer;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V

    .line 79
    .local v0, "finalizer":Lorg/checkerframework/com/google/common/base/internal/Finalizer;
    const-class v1, Lorg/checkerframework/com/google/common/base/internal/Finalizer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "threadName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, "thread":Ljava/lang/Thread;
    sget-object v3, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->bigThreadConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 83
    const/4 v6, 0x0

    .line 84
    .local v6, "inheritThreadLocals":Z
    const-wide/16 v7, 0x0

    .line 85
    .local v7, "defaultStackSize":J
    const/4 v9, 0x5

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Ljava/lang/ThreadGroup;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    aput-object v0, v9, v4

    const/4 v10, 0x2

    aput-object v1, v9, v10

    .line 87
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v9, v11

    .line 86
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 91
    .end local v6    # "inheritThreadLocals":Z
    .end local v7    # "defaultStackSize":J
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v3

    .line 89
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v6, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "Failed to create a thread without inherited thread-local values"

    invoke-virtual {v6, v7, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 94
    new-instance v3, Ljava/lang/Thread;

    move-object v6, v5

    check-cast v6, Ljava/lang/ThreadGroup;

    invoke-direct {v3, v5, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v2, v3

    .line 96
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    :try_start_1
    sget-object v3, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->inheritableThreadLocals:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2

    .line 100
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :cond_2
    goto :goto_1

    .line 102
    :catchall_1
    move-exception v3

    .line 103
    .restart local v3    # "t":Ljava/lang/Throwable;
    sget-object v4, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Failed to clear thread local values inherited by reference finalizer thread."

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 110
    return-void

    .line 75
    .end local v0    # "finalizer":Lorg/checkerframework/com/google/common/base/internal/Finalizer;
    .end local v1    # "threadName":Ljava/lang/String;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected com.google.common.base.FinalizableReference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 145
    nop

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/base/internal/Finalizer;->cleanUp(Ljava/lang/ref/Reference;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 146
    nop

    .line 152
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 150
    :cond_0
    goto :goto_0
.end method