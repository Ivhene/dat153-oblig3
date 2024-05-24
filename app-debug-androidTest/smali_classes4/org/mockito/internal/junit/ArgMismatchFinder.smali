.class Lorg/mockito/internal/junit/ArgMismatchFinder;
.super Ljava/lang/Object;
.source "ArgMismatchFinder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getStubbingArgMismatches(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/StubbingArgMismatches;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/mockito/internal/junit/StubbingArgMismatches;"
        }
    .end annotation

    .line 17
    .local p1, "mocks":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Lorg/mockito/internal/junit/StubbingArgMismatches;

    invoke-direct {v0}, Lorg/mockito/internal/junit/StubbingArgMismatches;-><init>()V

    .line 18
    .local v0, "mismatches":Lorg/mockito/internal/junit/StubbingArgMismatches;
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->find(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 19
    .local v2, "i":Lorg/mockito/invocation/Invocation;
    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->stubInfo()Lorg/mockito/invocation/StubInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->findStubbings(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mockito/stubbing/Stubbing;

    .line 24
    .local v4, "stubbing":Lorg/mockito/stubbing/Stubbing;
    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 25
    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v5

    invoke-interface {v5}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 26
    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v5

    .line 27
    invoke-interface {v5}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/mockito/internal/junit/StubbingArgMismatches;->add(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)V

    .line 32
    .end local v4    # "stubbing":Lorg/mockito/stubbing/Stubbing;
    :cond_1
    goto :goto_1

    .line 33
    .end local v2    # "i":Lorg/mockito/invocation/Invocation;
    :cond_2
    goto :goto_0

    .line 34
    :cond_3
    return-object v0
.end method
