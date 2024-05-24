.class public Lorg/mockito/internal/invocation/MatchersBinder;
.super Ljava/lang/Object;
.source "MatchersBinder.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateMatchers(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V
    .locals 3
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p2, "lastMatchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 36
    .local v0, "recordedMatchersSize":I
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    .line 37
    .local v1, "expectedMatchersSize":I
    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1, p2}, Lorg/mockito/internal/exceptions/Reporter;->invalidUseOfMatchers(ILjava/util/List;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    throw v2

    .line 41
    .end local v0    # "recordedMatchersSize":I
    .end local v1    # "expectedMatchersSize":I
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;
    .locals 5
    .param p1, "argumentMatcherStorage"    # Lorg/mockito/internal/progress/ArgumentMatcherStorage;
    .param p2, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 23
    invoke-interface {p1}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->pullLocalizedMatchers()Ljava/util/List;

    move-result-object v0

    .line 24
    .local v0, "lastMatchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;"
    invoke-direct {p0, p2, v0}, Lorg/mockito/internal/invocation/MatchersBinder;->validateMatchers(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V

    .line 26
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 27
    .local v1, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/internal/matchers/LocalizedMatcher;

    .line 28
    .local v3, "m":Lorg/mockito/internal/matchers/LocalizedMatcher;
    invoke-virtual {v3}, Lorg/mockito/internal/matchers/LocalizedMatcher;->getMatcher()Lorg/mockito/ArgumentMatcher;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .end local v3    # "m":Lorg/mockito/internal/matchers/LocalizedMatcher;
    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-direct {v2, p2, v1}, Lorg/mockito/internal/invocation/InvocationMatcher;-><init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V

    return-object v2
.end method
