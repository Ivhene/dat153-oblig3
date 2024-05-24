.class public Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;
.super Ljava/lang/Object;
.source "TypeBasedCandidateFilter.java"

# interfaces
.implements Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# instance fields
.field private final next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V
    .locals 0
    .param p1, "next"    # Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;->next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    .line 18
    return-void
.end method


# virtual methods
.method public filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;
    .locals 5
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

    .line 26
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local p3, "allRemainingCandidateFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "mockTypeMatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 28
    .local v2, "mock":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .end local v2    # "mock":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;->next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    invoke-interface {v1, v0, p2, p3, p4}, Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;->filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    move-result-object v1

    return-object v1
.end method
