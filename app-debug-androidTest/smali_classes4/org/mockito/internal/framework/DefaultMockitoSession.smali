.class public Lorg/mockito/internal/framework/DefaultMockitoSession;
.super Ljava/lang/Object;
.source "DefaultMockitoSession.java"

# interfaces
.implements Lorg/mockito/MockitoSession;


# instance fields
.field private final closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/AutoCloseable;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lorg/mockito/internal/junit/UniversalTestListener;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lorg/mockito/quality/Strictness;Lorg/mockito/plugins/MockitoLogger;)V
    .locals 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "strictness"    # Lorg/mockito/quality/Strictness;
    .param p4, "logger"    # Lorg/mockito/plugins/MockitoLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/mockito/quality/Strictness;",
            "Lorg/mockito/plugins/MockitoLogger;",
            ")V"
        }
    .end annotation

    .line 32
    .local p1, "testClassInstances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->closeables:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->name:Ljava/lang/String;

    .line 34
    new-instance v0, Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-direct {v0, p3, p4}, Lorg/mockito/internal/junit/UniversalTestListener;-><init>(Lorg/mockito/quality/Strictness;Lorg/mockito/plugins/MockitoLogger;)V

    iput-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    .line 37
    :try_start_0
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/MockitoFramework;->addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    :try_end_0
    .catch Lorg/mockito/exceptions/misusing/RedundantListenerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/mockito/exceptions/misusing/RedundantListenerException;
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedMockingSession()V

    .line 42
    .end local v0    # "e":Lorg/mockito/exceptions/misusing/RedundantListenerException;
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "testClassInstance":Ljava/lang/Object;
    iget-object v2, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->closeables:Ljava/util/List;

    invoke-static {v1}, Lorg/mockito/MockitoAnnotations;->openMocks(Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    nop

    .end local v1    # "testClassInstance":Ljava/lang/Object;
    goto :goto_1

    .line 55
    :cond_0
    nop

    .line 56
    return-void

    .line 45
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-direct {p0}, Lorg/mockito/internal/framework/DefaultMockitoSession;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    goto :goto_2

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v1, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-virtual {v1}, Lorg/mockito/internal/junit/UniversalTestListener;->setListenerDirty()V

    .line 54
    throw v0
.end method

.method static synthetic access$000(Lorg/mockito/internal/framework/DefaultMockitoSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/framework/DefaultMockitoSession;

    .line 21
    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->name:Ljava/lang/String;

    return-object v0
.end method

.method private release()V
    .locals 5

    .line 101
    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->closeables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    .line 103
    .local v1, "closeable":Ljava/lang/AutoCloseable;
    :try_start_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 107
    .end local v1    # "closeable":Ljava/lang/AutoCloseable;
    goto :goto_0

    .line 104
    .restart local v1    # "closeable":Ljava/lang/AutoCloseable;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "closeable":Ljava/lang/AutoCloseable;
    :cond_0
    return-void
.end method


# virtual methods
.method public finishMocking()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/framework/DefaultMockitoSession;->finishMocking(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public finishMocking(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "failure"    # Ljava/lang/Throwable;

    .line 74
    :try_start_0
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-interface {v0, v1}, Lorg/mockito/MockitoFramework;->removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 77
    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    new-instance v1, Lorg/mockito/internal/framework/DefaultMockitoSession$1;

    invoke-direct {v1, p0, p1}, Lorg/mockito/internal/framework/DefaultMockitoSession$1;-><init>(Lorg/mockito/internal/framework/DefaultMockitoSession;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/junit/UniversalTestListener;->testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V

    .line 91
    if-nez p1, :cond_0

    .line 93
    invoke-static {}, Lorg/mockito/Mockito;->validateMockitoUsage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lorg/mockito/internal/framework/DefaultMockitoSession;->release()V

    .line 97
    nop

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/mockito/internal/framework/DefaultMockitoSession;->release()V

    throw v0
.end method

.method public setStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 1
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 60
    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/junit/UniversalTestListener;->setStrictness(Lorg/mockito/quality/Strictness;)V

    .line 61
    return-void
.end method
