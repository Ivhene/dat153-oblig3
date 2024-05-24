.class public Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;
.super Ljava/lang/Object;
.source "TerminalMockCandidateFilter.java"

# interfaces
.implements Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$filterCandidate$0(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/mockito/plugins/MemberAccessor;)Ljava/lang/Object;
    .locals 2
    .param p0, "injectee"    # Ljava/lang/Object;
    .param p1, "candidateFieldToBeInjected"    # Ljava/lang/reflect/Field;
    .param p2, "matchingMock"    # Ljava/lang/Object;
    .param p3, "accessor"    # Lorg/mockito/plugins/MemberAccessor;

    .line 38
    :try_start_0
    new-instance v0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/util/reflection/BeanPropertySetter;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 39
    invoke-virtual {v0, p2}, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->set(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p3, p1, p0, p2}, Lorg/mockito/plugins/MemberAccessor;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    nop

    .line 45
    return-object p2

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p1, p2, v0}, Lorg/mockito/internal/exceptions/Reporter;->cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;
    .locals 3
    .param p2, "candidateFieldToBeInjected"    # Ljava/lang/reflect/Field;
    .param p4, "injectee"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;"
        }
    .end annotation

    .line 32
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local p3, "allRemainingCandidateFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "matchingMock":Ljava/lang/Object;
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v1

    .line 36
    .local v1, "accessor":Lorg/mockito/plugins/MemberAccessor;
    new-instance v2, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p4, p2, v0, v1}, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/mockito/plugins/MemberAccessor;)V

    return-object v2

    .line 49
    .end local v0    # "matchingMock":Ljava/lang/Object;
    .end local v1    # "accessor":Lorg/mockito/plugins/MemberAccessor;
    :cond_0
    sget-object v0, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;->nop:Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    return-object v0
.end method
