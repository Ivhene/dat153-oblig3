.class public Lorg/mockito/internal/invocation/MatcherApplicationStrategy;
.super Ljava/lang/Object;
.source "MatcherApplicationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    }
.end annotation


# instance fields
.field private final invocation:Lorg/mockito/invocation/Invocation;

.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final matchingType:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;


# direct methods
.method private constructor <init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p3, "matchingType"    # Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;",
            "Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;",
            ")V"
        }
    .end annotation

    .line 29
    .local p2, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->invocation:Lorg/mockito/invocation/Invocation;

    .line 31
    sget-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    if-ne p3, v0, :cond_0

    .line 32
    invoke-static {p1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->varargLength(Lorg/mockito/invocation/Invocation;)I

    move-result v0

    .line 33
    .local v0, "times":I
    invoke-static {p2, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->appendLastMatcherNTimes(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchers:Ljava/util/List;

    .line 34
    .end local v0    # "times":I
    goto :goto_0

    .line 35
    :cond_0
    iput-object p2, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchers:Ljava/util/List;

    .line 38
    :goto_0
    iput-object p3, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchingType:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    .line 39
    return-void
.end method

.method private static appendLastMatcherNTimes(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .param p1, "timesToAppendLastMatcher"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;I)",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;"
        }
    .end annotation

    .line 120
    .local p0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher<*>;>;"
    invoke-static {p0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->lastMatcher(Ljava/util/List;)Lorg/mockito/ArgumentMatcher;

    move-result-object v0

    .line 122
    .local v0, "lastMatcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v1, "expandedMatchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher<*>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getMatcherApplicationStrategyFor(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy;
    .locals 2
    .param p0, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;)",
            "Lorg/mockito/internal/invocation/MatcherApplicationStrategy;"
        }
    .end annotation

    .line 56
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher<*>;>;"
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->getMatcherApplicationType(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    move-result-object v0

    .line 57
    .local v0, "type":Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    new-instance v1, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;

    invoke-direct {v1, p0, p1, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;-><init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;)V

    return-object v1
.end method

.method private static getMatcherApplicationType(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    .locals 4
    .param p0, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;)",
            "Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;"
        }
    .end annotation

    .line 95
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher<*>;>;"
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getRawArguments()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    .line 96
    .local v0, "rawArguments":I
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    .line 97
    .local v1, "expandedArguments":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 99
    .local v2, "matcherCount":I
    if-ne v1, v2, :cond_0

    .line 100
    sget-object v3, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ONE_MATCHER_PER_ARGUMENT:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object v3

    .line 103
    :cond_0
    if-ne v0, v2, :cond_1

    invoke-static {p1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->isLastMatcherVarargMatcher(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    sget-object v3, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object v3

    .line 107
    :cond_1
    sget-object v3, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object v3
.end method

.method private static isLastMatcherVarargMatcher(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;)Z"
        }
    .end annotation

    .line 111
    .local p0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher<*>;>;"
    invoke-static {p0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->lastMatcher(Ljava/util/List;)Lorg/mockito/ArgumentMatcher;

    move-result-object v0

    .line 112
    .local v0, "argumentMatcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    instance-of v1, v0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;

    if-eqz v1, :cond_0

    .line 113
    move-object v1, v0

    check-cast v1, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;

    invoke-virtual {v1}, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->isVarargMatcher()Z

    move-result v1

    return v1

    .line 115
    :cond_0
    instance-of v1, v0, Lorg/mockito/internal/matchers/VarargMatcher;

    return v1
.end method

.method private static lastMatcher(Ljava/util/List;)Lorg/mockito/ArgumentMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;)",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;"
        }
    .end annotation

    .line 136
    .local p0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/ArgumentMatcher;

    return-object v0
.end method

.method private static varargLength(Lorg/mockito/invocation/Invocation;)I
    .locals 3
    .param p0, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 130
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getRawArguments()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    .line 131
    .local v0, "rawArgumentCount":I
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    .line 132
    .local v1, "expandedArgumentCount":I
    sub-int v2, v1, v0

    return v2
.end method


# virtual methods
.method public forEachMatcherAndArgument(Lorg/mockito/internal/invocation/ArgumentMatcherAction;)Z
    .locals 6
    .param p1, "action"    # Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    .line 77
    iget-object v0, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchingType:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    sget-object v1, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 78
    return v2

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "arguments":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 83
    iget-object v3, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/ArgumentMatcher;

    .line 84
    .local v3, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    aget-object v4, v0, v1

    .line 86
    .local v4, "argument":Ljava/lang/Object;
    invoke-interface {p1, v3, v4}, Lorg/mockito/internal/invocation/ArgumentMatcherAction;->apply(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    return v2

    .line 82
    .end local v3    # "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    .end local v4    # "argument":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
