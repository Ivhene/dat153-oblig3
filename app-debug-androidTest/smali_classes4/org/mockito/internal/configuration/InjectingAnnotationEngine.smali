.class public Lorg/mockito/internal/configuration/InjectingAnnotationEngine;
.super Ljava/lang/Object;
.source "InjectingAnnotationEngine.java"

# interfaces
.implements Lorg/mockito/plugins/AnnotationEngine;
.implements Lorg/mockito/configuration/AnnotationEngine;


# instance fields
.field private final delegate:Lorg/mockito/plugins/AnnotationEngine;

.field private final spyAnnotationEngine:Lorg/mockito/plugins/AnnotationEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->delegate:Lorg/mockito/plugins/AnnotationEngine;

    .line 27
    new-instance v0, Lorg/mockito/internal/configuration/SpyAnnotationEngine;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/SpyAnnotationEngine;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->spyAnnotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    return-void
.end method

.method private injectCloseableMocks(Ljava/lang/Object;)Ljava/lang/AutoCloseable;
    .locals 4
    .param p1, "testClassInstance"    # Ljava/lang/Object;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 108
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 109
    .local v1, "mockDependentFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/mockito/internal/util/collections/Sets;->newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 111
    .local v2, "mocks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :goto_0
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    .line 112
    new-instance v3, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;

    invoke-direct {v3, v0}, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v1}, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;->addTo(Ljava/util/Set;)V

    .line 113
    new-instance v3, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;

    invoke-direct {v3, p1, v0}, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v3, v2}, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->addPreparedMocks(Ljava/util/Set;)V

    .line 114
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->onInjection(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v3, Lorg/mockito/internal/configuration/DefaultInjectionEngine;

    invoke-direct {v3}, Lorg/mockito/internal/configuration/DefaultInjectionEngine;-><init>()V

    .line 119
    invoke-virtual {v3, v1, v2, p1}, Lorg/mockito/internal/configuration/DefaultInjectionEngine;->injectMocksOnFields(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)V

    .line 121
    new-instance v3, Lorg/mockito/internal/configuration/InjectingAnnotationEngine$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    return-object v3
.end method

.method static synthetic lambda$injectCloseableMocks$1(Ljava/util/Set;)V
    .locals 3
    .param p0, "mocks"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, "mock":Ljava/lang/Object;
    instance-of v2, v1, Lorg/mockito/ScopedMock;

    if-eqz v2, :cond_0

    .line 124
    move-object v2, v1

    check-cast v2, Lorg/mockito/ScopedMock;

    invoke-interface {v2}, Lorg/mockito/ScopedMock;->closeOnDemand()V

    .line 126
    .end local v1    # "mock":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method static synthetic lambda$process$0(Ljava/util/List;)V
    .locals 2
    .param p0, "closeables"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    .line 52
    .local v1, "closeable":Ljava/lang/AutoCloseable;
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 53
    .end local v1    # "closeable":Ljava/lang/AutoCloseable;
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private processIndependentAnnotations(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p2, "testInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/AutoCloseable;",
            ">;"
        }
    .end annotation

    .line 70
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "closeables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/AutoCloseable;>;"
    move-object v1, p1

    .line 72
    .local v1, "classContext":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 74
    iget-object v2, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->delegate:Lorg/mockito/plugins/AnnotationEngine;

    invoke-interface {v2, v1, p2}, Lorg/mockito/plugins/AnnotationEngine;->process(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v2, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->spyAnnotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    invoke-interface {v2, v1, p2}, Lorg/mockito/plugins/AnnotationEngine;->process(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_0
    return-object v0
.end method

.method private processInjectMocks(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p2, "testInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/AutoCloseable;",
            ">;"
        }
    .end annotation

    .line 59
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "closeables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/AutoCloseable;>;"
    move-object v1, p1

    .line 61
    .local v1, "classContext":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 62
    invoke-direct {p0, p2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->injectCloseableMocks(Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method


# virtual methods
.method public injectMocks(Ljava/lang/Object;)V
    .locals 2
    .param p1, "testClassInstance"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    :try_start_0
    invoke-direct {p0, p1}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->injectCloseableMocks(Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 95
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onInjection(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "testClassInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mockDependentFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .local p4, "mocks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    return-void
.end method

.method public process(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/AutoCloseable;
    .locals 2
    .param p2, "testInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/AutoCloseable;"
        }
    .end annotation

    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "closeables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/AutoCloseable;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->processIndependentAnnotations(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->processInjectMocks(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    new-instance v1, Lorg/mockito/internal/configuration/InjectingAnnotationEngine$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    return-object v1
.end method
