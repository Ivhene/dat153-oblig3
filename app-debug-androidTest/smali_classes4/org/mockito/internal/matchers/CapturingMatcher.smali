.class public Lorg/mockito/internal/matchers/CapturingMatcher;
.super Ljava/lang/Object;
.source "CapturingMatcher.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Lorg/mockito/internal/matchers/CapturesArguments;
.implements Lorg/mockito/internal/matchers/VarargMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "TT;>;",
        "Lorg/mockito/internal/matchers/CapturesArguments;",
        "Lorg/mockito/internal/matchers/VarargMatcher;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final readLock:Ljava/util/concurrent/locks/Lock;

.field private final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    .local p0, "this":Lorg/mockito/internal/matchers/CapturingMatcher;, "Lorg/mockito/internal/matchers/CapturingMatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->writeLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public captureFrom(Ljava/lang/Object;)V
    .locals 2
    .param p1, "argument"    # Ljava/lang/Object;

    .line 62
    .local p0, "this":Lorg/mockito/internal/matchers/CapturingMatcher;, "Lorg/mockito/internal/matchers/CapturingMatcher<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAllValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/mockito/internal/matchers/CapturingMatcher;, "Lorg/mockito/internal/matchers/CapturingMatcher<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 54
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v1, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getLastValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/mockito/internal/matchers/CapturingMatcher;, "Lorg/mockito/internal/matchers/CapturingMatcher<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v1, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    return-object v0

    .line 42
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->noArgumentValueWasCaptured()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "argument"    # Ljava/lang/Object;

    .line 30
    .local p0, "this":Lorg/mockito/internal/matchers/CapturingMatcher;, "Lorg/mockito/internal/matchers/CapturingMatcher<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    .local p0, "this":Lorg/mockito/internal/matchers/CapturingMatcher;, "Lorg/mockito/internal/matchers/CapturingMatcher<TT;>;"
    const-string v0, "<Capturing argument>"

    return-object v0
.end method
