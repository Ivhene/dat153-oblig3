.class Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;
.super Ljava/lang/ref/ReferenceQueue;
.source "TypeCachingBytecodeGenerator.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/ReferenceQueue<",
        "Ljava/lang/ClassLoader;",
        ">;",
        "Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;"
    }
.end annotation


# static fields
.field private static final BOOTSTRAP_LOCK:Ljava/lang/Object;


# instance fields
.field private final bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final typeCache:Lnet/bytebuddy/TypeCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/TypeCache<",
            "Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->BOOTSTRAP_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V
    .locals 2
    .param p1, "bytecodeGenerator"    # Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;
    .param p2, "weak"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 27
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 28
    new-instance v0, Lnet/bytebuddy/TypeCache$WithInlineExpunction;

    .line 30
    if-eqz p2, :cond_0

    sget-object v1, Lnet/bytebuddy/TypeCache$Sort;->WEAK:Lnet/bytebuddy/TypeCache$Sort;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/bytebuddy/TypeCache$Sort;->SOFT:Lnet/bytebuddy/TypeCache$Sort;

    :goto_0
    invoke-direct {v0, v1}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;-><init>(Lnet/bytebuddy/TypeCache$Sort;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->typeCache:Lnet/bytebuddy/TypeCache;

    .line 31
    return-void
.end method


# virtual methods
.method public clearAllCaches()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->typeCache:Lnet/bytebuddy/TypeCache;

    invoke-virtual {v0}, Lnet/bytebuddy/TypeCache;->clear()V

    .line 76
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v0}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->clearAllCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    nop

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method synthetic lambda$mockClass$0$org-mockito-internal-creation-bytebuddy-TypeCachingBytecodeGenerator(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 1
    .param p1, "params"    # Lorg/mockito/internal/creation/bytebuddy/MockFeatures;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 36
    .local p1, "params":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 38
    :try_start_0
    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 39
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->typeCache:Lnet/bytebuddy/TypeCache;

    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;

    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    iget-object v4, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    iget-object v5, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    iget-boolean v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->stripAnnotations:Z

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;-><init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;ZLorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;)V

    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$$ExternalSyntheticLambda0;-><init>(Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)V

    sget-object v3, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->BOOTSTRAP_LOCK:Ljava/lang/Object;

    .line 40
    invoke-virtual {v1, v0, v8, v2, v3}, Lnet/bytebuddy/TypeCache;->findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    return-object v1

    .line 57
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 51
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 52
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    .end local p1    # "params":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    throw v2

    .line 54
    .restart local p1    # "params":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    :cond_0
    nop

    .end local p1    # "params":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    .restart local p1    # "params":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    :goto_0
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public mockClassConstruction(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 68
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClassConstruction(Ljava/lang/Class;)V

    .line 69
    return-void
.end method

.method public mockClassStatic(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 63
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClassStatic(Ljava/lang/Class;)V

    .line 64
    return-void
.end method
