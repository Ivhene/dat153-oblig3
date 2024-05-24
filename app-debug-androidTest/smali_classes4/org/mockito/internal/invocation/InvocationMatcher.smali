.class public Lorg/mockito/internal/invocation/InvocationMatcher;
.super Ljava/lang/Object;
.source "InvocationMatcher.java"

# interfaces
.implements Lorg/mockito/invocation/MatchableInvocation;
.implements Lorg/mockito/invocation/DescribedInvocation;
.implements Ljava/io/Serializable;


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


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/Invocation;)V
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/invocation/InvocationMatcher;-><init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p2, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    .line 37
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getArgumentsAsMatchers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    goto :goto_0

    .line 40
    :cond_0
    iput-object p2, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    .line 42
    :goto_0
    return-void
.end method

.method private argumentsMatch(Lorg/mockito/invocation/Invocation;)Z
    .locals 3
    .param p1, "actual"    # Lorg/mockito/invocation/Invocation;

    .line 154
    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getMatchers()Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "matchers":Ljava/util/List;
    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->getMatcherApplicationStrategyFor(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy;

    move-result-object v1

    .line 156
    invoke-static {}, Lorg/mockito/internal/invocation/TypeSafeMatching;->matchesTypeSafe()Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->forEachMatcherAndArgument(Lorg/mockito/internal/invocation/ArgumentMatcherAction;)Z

    move-result v1

    .line 155
    return v1
.end method

.method private captureArgument()Lorg/mockito/internal/invocation/ArgumentMatcherAction;
    .locals 1

    .line 139
    new-instance v0, Lorg/mockito/internal/invocation/InvocationMatcher$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/invocation/InvocationMatcher$1;-><init>(Lorg/mockito/internal/invocation/InvocationMatcher;)V

    return-object v0
.end method

.method public static createFrom(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/mockito/internal/invocation/InvocationMatcher;",
            ">;"
        }
    .end annotation

    .line 50
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 51
    .local v0, "out":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/mockito/internal/invocation/InvocationMatcher;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 52
    .local v2, "i":Lorg/mockito/invocation/Invocation;
    new-instance v3, Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-direct {v3, v2}, Lorg/mockito/internal/invocation/InvocationMatcher;-><init>(Lorg/mockito/invocation/Invocation;)V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v2    # "i":Lorg/mockito/invocation/Invocation;
    goto :goto_0

    .line 54
    :cond_0
    return-object v0
.end method


# virtual methods
.method public captureArgumentsFrom(Lorg/mockito/invocation/Invocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 133
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    .line 134
    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->getMatcherApplicationStrategyFor(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy;

    move-result-object v0

    .line 135
    .local v0, "strategy":Lorg/mockito/internal/invocation/MatcherApplicationStrategy;
    invoke-direct {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->captureArgument()Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->forEachMatcherAndArgument(Lorg/mockito/internal/invocation/ArgumentMatcherAction;)Z

    .line 136
    return-void
.end method

.method public getInvocation()Lorg/mockito/invocation/Invocation;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    return-object v0
.end method

.method public getLocation()Lorg/mockito/invocation/Location;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMatchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public hasSameMethod(Lorg/mockito/invocation/Invocation;)Z
    .locals 5
    .param p1, "candidate"    # Lorg/mockito/invocation/Invocation;

    .line 114
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    .local v0, "m1":Ljava/lang/reflect/Method;
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 117
    .local v1, "m2":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 120
    .local v2, "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 121
    .local v3, "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 123
    .end local v2    # "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public hasSimilarMethod(Lorg/mockito/invocation/Invocation;)Z
    .locals 5
    .param p1, "candidate"    # Lorg/mockito/invocation/Invocation;

    .line 90
    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "wantedMethodName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "candidateMethodName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 94
    return v3

    .line 96
    :cond_0
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    return v3

    .line 99
    :cond_1
    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v4

    if-eq v2, v4, :cond_2

    .line 100
    return v3

    .line 102
    :cond_2
    invoke-virtual {p0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->hasSameMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 103
    return v3

    .line 106
    :cond_3
    invoke-direct {p0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->argumentsMatch(Lorg/mockito/invocation/Invocation;)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2
.end method

.method public matches(Lorg/mockito/invocation/Invocation;)Z
    .locals 2
    .param p1, "candidate"    # Lorg/mockito/invocation/Invocation;

    .line 80
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->hasSameMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->argumentsMatch(Lorg/mockito/invocation/Invocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    iget-object v2, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/reporting/PrintSettings;->print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
