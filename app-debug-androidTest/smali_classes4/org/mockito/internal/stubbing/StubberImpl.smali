.class public Lorg/mockito/internal/stubbing/StubberImpl;
.super Ljava/lang/Object;
.source "StubberImpl.java"

# interfaces
.implements Lorg/mockito/stubbing/Stubber;


# instance fields
.field private final answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final strictness:Lorg/mockito/quality/Strictness;


# direct methods
.method public constructor <init>(Lorg/mockito/quality/Strictness;)V
    .locals 1
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->strictness:Lorg/mockito/quality/Strictness;

    .line 32
    return-void
.end method

.method private varargs doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;
    .locals 5
    .param p1, "toBeReturned"    # [Ljava/lang/Object;

    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v1, Lorg/mockito/internal/stubbing/answers/Returns;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0

    .line 68
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 69
    .local v2, "r":Ljava/lang/Object;
    iget-object v3, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v4, Lorg/mockito/internal/stubbing/answers/Returns;

    invoke-direct {v4, v2}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "r":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-object p0
.end method


# virtual methods
.method public doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p1, "answer"    # Lorg/mockito/stubbing/Answer;

    .line 119
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object p0
.end method

.method public doCallRealMethod()Lorg/mockito/stubbing/Stubber;
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v1, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object p0
.end method

.method public doNothing()Lorg/mockito/stubbing/Stubber;
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    invoke-static {}, Lorg/mockito/internal/stubbing/answers/DoesNothing;->doesNothing()Lorg/mockito/internal/stubbing/answers/DoesNothing;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0
.end method

.method public doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p1, "toBeReturned"    # Ljava/lang/Object;

    .line 55
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object v0

    return-object v0
.end method

.method public varargs doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p1, "toBeReturned"    # Ljava/lang/Object;
    .param p2, "nextToBeReturned"    # [Ljava/lang/Object;

    .line 60
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object v0

    invoke-direct {v0, p2}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object v0

    return-object v0
.end method

.method public doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/Stubber;"
        }
    .end annotation

    .line 88
    .local p1, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionForClassType;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionForClassType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/StubberImpl;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 90
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAnException()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public varargs doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/Stubber;"
        }
    .end annotation

    .line 98
    .local p1, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p2, "nextToBeThrown":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/StubberImpl;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    .line 100
    .local v0, "stubber":Lorg/mockito/stubbing/Stubber;
    if-eqz p2, :cond_1

    .line 105
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 106
    .local v3, "next":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-interface {v0, v3}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    .line 105
    .end local v3    # "next":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object v0

    .line 101
    :cond_1
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 102
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAnException()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method

.method public varargs doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;
    .locals 5
    .param p1, "toBeThrown"    # [Ljava/lang/Throwable;

    .line 76
    if-nez p1, :cond_0

    .line 77
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v1, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0

    .line 80
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 81
    .local v2, "throwable":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v4, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    invoke-direct {v4, v2}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v2    # "throwable":Ljava/lang/Throwable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    return-object p0
.end method

.method public when(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 38
    .local p1, "mock":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 43
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    iget-object v2, p0, Lorg/mockito/internal/stubbing/StubberImpl;->strictness:Lorg/mockito/quality/Strictness;

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setAnswersForStubbing(Ljava/util/List;Lorg/mockito/quality/Strictness;)V

    .line 50
    return-object p1

    .line 44
    :cond_0
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 45
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 39
    :cond_1
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 40
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method
