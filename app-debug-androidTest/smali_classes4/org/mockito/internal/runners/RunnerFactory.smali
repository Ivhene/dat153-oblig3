.class public Lorg/mockito/internal/runners/RunnerFactory;
.super Ljava/lang/Object;
.source "RunnerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/internal/runners/InternalRunner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 27
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/runners/RunnerFactory$1;-><init>(Lorg/mockito/internal/runners/RunnerFactory;)V

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)Lorg/mockito/internal/runners/InternalRunner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/util/Supplier<",
            "Lorg/mockito/internal/junit/MockitoTestListener;",
            ">;)",
            "Lorg/mockito/internal/runners/InternalRunner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 70
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "listenerSupplier":Lorg/mockito/internal/util/Supplier;, "Lorg/mockito/internal/util/Supplier<Lorg/mockito/internal/junit/MockitoTestListener;>;"
    :try_start_0
    const-string v0, "org.mockito.internal.runners.DefaultInternalRunner"

    .line 75
    .local v0, "runnerClassName":Ljava/lang/String;
    new-instance v1, Lorg/mockito/internal/runners/util/RunnerProvider;

    invoke-direct {v1}, Lorg/mockito/internal/runners/util/RunnerProvider;-><init>()V

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/mockito/internal/runners/util/RunnerProvider;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 89
    .end local v0    # "runnerClassName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    const-string v2, "\n\nMockitoRunner can only be used with JUnit 4.5 or higher.\nYou can upgrade your JUnit version or write your own Runner (please consider contributing your runner to the Mockito community).\nBear in mind that you can still enjoy all features of the framework without using runners (they are completely optional).\nIf you get this error despite using JUnit 4.5 or higher then please report this error to the mockito mailing list.\n"

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p1}, Lorg/mockito/internal/runners/util/TestMethodsFinder;->hasTestMethods(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\nNo tests found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nIs the method annotated with @Test?\nIs the method public?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :cond_0
    throw v0
.end method

.method public createStrict(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/internal/runners/InternalRunner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 40
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory$2;

    invoke-direct {v0, p0}, Lorg/mockito/internal/runners/RunnerFactory$2;-><init>(Lorg/mockito/internal/runners/RunnerFactory;)V

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object v0

    return-object v0
.end method

.method public createStrictStubs(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/internal/runners/InternalRunner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 55
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory$3;

    invoke-direct {v0, p0}, Lorg/mockito/internal/runners/RunnerFactory$3;-><init>(Lorg/mockito/internal/runners/RunnerFactory;)V

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object v0

    return-object v0
.end method
