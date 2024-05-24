.class public Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;
.super Ljava/lang/Object;
.source "NameBasedCandidateFilter.java"

# interfaces
.implements Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# instance fields
.field private final next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V
    .locals 0
    .param p1, "next"    # Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    .line 19
    return-void
.end method

.method private anotherCandidateMatchesMockName(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;)Z
    .locals 5
    .param p2, "candidateFieldToBeInjected"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)Z"
        }
    .end annotation

    .line 68
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local p3, "allRemainingCandidateFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/mock/MockName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "mockName":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 71
    .local v2, "otherCandidateField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const/4 v1, 0x1

    return v1

    .line 76
    .end local v2    # "otherCandidateField":Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private selectMatchingName(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .param p2, "candidateFieldToBeInjected"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "mockNameMatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "mock":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v4

    invoke-interface {v4}, Lorg/mockito/mock/MockName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v2    # "mock":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 52
    :cond_1
    return-object v0
.end method

.method private tooMany(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 41
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;
    .locals 2
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

    .line 27
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local p3, "allRemainingCandidateFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->anotherCandidateMatchesMockName(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;->nop:Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    .line 34
    invoke-direct {p0, p1}, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->tooMany(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->selectMatchingName(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 33
    :goto_0
    invoke-interface {v0, v1, p2, p3, p4}, Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;->filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    move-result-object v0

    return-object v0
.end method
