.class public Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "PropertyAndSetterInjection.java"


# instance fields
.field private final mockCandidateFilter:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

.field private final notFinalOrStatic:Lorg/mockito/internal/util/collections/ListUtil$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    .line 65
    new-instance v0, Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;

    new-instance v1, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;

    new-instance v2, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;

    invoke-direct {v2}, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;-><init>()V

    invoke-direct {v1, v2}, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;-><init>(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;-><init>(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->mockCandidateFilter:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    .line 69
    new-instance v0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$1;-><init>(Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;)V

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->notFinalOrStatic:Lorg/mockito/internal/util/collections/ListUtil$Filter;

    return-void
.end method

.method private initializeInjectMocksField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldOwner"    # Ljava/lang/Object;

    .line 101
    :try_start_0
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldInitializer;

    invoke-direct {v0, p2, p1}, Lorg/mockito/internal/util/reflection/FieldInitializer;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldInitializer;->initialize()Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object v0
    :try_end_0
    .catch Lorg/mockito/exceptions/base/MockitoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lorg/mockito/exceptions/base/MockitoException;
    invoke-virtual {v0}, Lorg/mockito/exceptions/base/MockitoException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0}, Lorg/mockito/exceptions/base/MockitoException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 105
    .local v1, "realCause":Ljava/lang/Throwable;
    invoke-static {p1, v1}, Lorg/mockito/internal/exceptions/Reporter;->fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    throw v2

    .line 107
    .end local v1    # "realCause":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mockito/exceptions/base/MockitoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mockito/internal/exceptions/Reporter;->cannotInitializeForInjectMocksAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method

.method private injectMockCandidates(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 3
    .param p2, "injectee"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 114
    .local p1, "awaitingInjectionClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mocks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    nop

    .line 115
    invoke-direct {p0, p1}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->orderedInstanceFieldsFrom(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "orderedCandidateInjecteeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    nop

    .line 118
    const/4 v1, 0x0

    invoke-direct {p0, p3, p2, v1, v0}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->injectMockCandidatesOnFields(Ljava/util/Set;Ljava/lang/Object;ZLjava/util/List;)Z

    move-result v1

    .line 121
    .local v1, "injectionOccurred":Z
    nop

    .line 122
    invoke-direct {p0, p3, p2, v1, v0}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->injectMockCandidatesOnFields(Ljava/util/Set;Ljava/lang/Object;ZLjava/util/List;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 124
    return v1
.end method

.method private injectMockCandidatesOnFields(Ljava/util/Set;Ljava/lang/Object;ZLjava/util/List;)Z
    .locals 3
    .param p2, "injectee"    # Ljava/lang/Object;
    .param p3, "injectionOccurred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)Z"
        }
    .end annotation

    .line 132
    .local p1, "mocks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .local p4, "orderedCandidateInjecteeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/reflect/Field;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 134
    .local v1, "candidateField":Ljava/lang/reflect/Field;
    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->mockCandidateFilter:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    .line 136
    invoke-interface {v2, p1, v1, p4, p2}, Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;->filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    move-result-object v2

    .line 138
    invoke-interface {v2}, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;->thenInject()Ljava/lang/Object;

    move-result-object v2

    .line 139
    .local v2, "injected":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 140
    or-int/lit8 p3, p3, 0x1

    .line 141
    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 144
    .end local v1    # "candidateField":Ljava/lang/reflect/Field;
    .end local v2    # "injected":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 145
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/reflect/Field;>;"
    :cond_1
    return p3
.end method

.method private orderedInstanceFieldsFrom(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 149
    .local p1, "awaitingInjectionClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "declaredFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    iget-object v1, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->notFinalOrStatic:Lorg/mockito/internal/util/collections/ListUtil$Filter;

    invoke-static {v0, v1}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lorg/mockito/internal/util/reflection/SuperTypesLastSorter;->sortSuperTypesLast(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 5
    .param p1, "injectMocksField"    # Ljava/lang/reflect/Field;
    .param p2, "injectMocksFieldOwner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 81
    .local p3, "mockCandidates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    nop

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->initializeInjectMocksField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object v0

    .line 85
    .local v0, "report":Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    const/4 v1, 0x0

    .line 86
    .local v1, "injectionOccurred":Z
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldClass()Ljava/lang/Class;

    move-result-object v2

    .line 87
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldInstance()Ljava/lang/Object;

    move-result-object v3

    .line 88
    .local v3, "fieldInstanceNeedingInjection":Ljava/lang/Object;
    :goto_0
    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    .line 89
    nop

    .line 93
    invoke-static {p3}, Lorg/mockito/internal/util/collections/Sets;->newMockSafeHashSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 90
    invoke-direct {p0, v2, v3, v4}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->injectMockCandidates(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Set;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 94
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_0
    return v1
.end method
