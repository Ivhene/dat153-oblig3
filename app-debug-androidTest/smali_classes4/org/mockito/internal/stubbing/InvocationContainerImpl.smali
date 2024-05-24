.class public Lorg/mockito/internal/stubbing/InvocationContainerImpl;
.super Ljava/lang/Object;
.source "InvocationContainerImpl.java"

# interfaces
.implements Lorg/mockito/invocation/InvocationContainer;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x4a073f5f6e5aeb99L


# instance fields
.field private final doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

.field private invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

.field private final mockStrictness:Lorg/mockito/quality/Strictness;

.field private final registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

.field private final stubbed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .param p1, "mockSettings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 40
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->createRegisteredInvocations(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/verification/RegisteredInvocations;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    .line 41
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->mockStrictness:Lorg/mockito/quality/Strictness;

    .line 42
    new-instance v0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    .line 43
    return-void
.end method

.method private createRegisteredInvocations(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/verification/RegisteredInvocations;
    .locals 1
    .param p1, "mockSettings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 171
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isStubOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lorg/mockito/internal/verification/SingleRegisteredInvocation;

    invoke-direct {v0}, Lorg/mockito/internal/verification/SingleRegisteredInvocation;-><init>()V

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;

    invoke-direct {v0}, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;-><init>()V

    .line 171
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    .locals 6
    .param p1, "answer"    # Lorg/mockito/stubbing/Answer;
    .param p2, "isConsecutive"    # Z
    .param p3, "stubbingStrictness"    # Lorg/mockito/quality/Strictness;

    .line 62
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    invoke-interface {v0}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    .line 63
    .local v0, "invocation":Lorg/mockito/invocation/Invocation;
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/internal/progress/MockingProgress;->stubbingCompleted()V

    .line 64
    instance-of v1, p1, Lorg/mockito/stubbing/ValidableAnswer;

    if-eqz v1, :cond_0

    .line 65
    move-object v1, p1

    check-cast v1, Lorg/mockito/stubbing/ValidableAnswer;

    invoke-interface {v1, v0}, Lorg/mockito/stubbing/ValidableAnswer;->validateFor(Lorg/mockito/invocation/InvocationOnMock;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    monitor-enter v1

    .line 69
    if-eqz p2, :cond_1

    .line 70
    :try_start_0
    iget-object v2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->addAnswer(Lorg/mockito/stubbing/Answer;)V

    goto :goto_1

    .line 79
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 73
    :cond_1
    if-eqz p3, :cond_2

    move-object v2, p3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->mockStrictness:Lorg/mockito/quality/Strictness;

    .line 74
    .local v2, "effectiveStrictness":Lorg/mockito/quality/Strictness;
    :goto_0
    iget-object v3, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    new-instance v4, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    iget-object v5, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    invoke-direct {v4, p1, v5, v2}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;-><init>(Lorg/mockito/stubbing/Answer;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/quality/Strictness;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 78
    .end local v2    # "effectiveStrictness":Lorg/mockito/quality/Strictness;
    :goto_1
    iget-object v2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    monitor-exit v1

    return-object v2

    .line 79
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addAnswer(Lorg/mockito/stubbing/Answer;Lorg/mockito/quality/Strictness;)V
    .locals 1
    .param p1, "answer"    # Lorg/mockito/stubbing/Answer;
    .param p2, "stubbingStrictness"    # Lorg/mockito/quality/Strictness;

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->removeLast()V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    .line 57
    return-void
.end method

.method public addConsecutiveAnswer(Lorg/mockito/stubbing/Answer;)V
    .locals 2
    .param p1, "answer"    # Lorg/mockito/stubbing/Answer;

    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    .line 84
    return-void
.end method

.method answerTo(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clearInvocations()V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->clear()V

    .line 144
    return-void
.end method

.method public findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    .locals 4
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 91
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    .line 93
    .local v2, "s":Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->markStubUsed(Lorg/mockito/invocation/DescribedInvocation;)V

    .line 97
    new-instance v1, Lorg/mockito/internal/invocation/StubInfoImpl;

    invoke-direct {v1, v2}, Lorg/mockito/internal/invocation/StubInfoImpl;-><init>(Lorg/mockito/invocation/DescribedInvocation;)V

    invoke-interface {p1, v1}, Lorg/mockito/invocation/Invocation;->markStubbed(Lorg/mockito/invocation/StubInfo;)V

    .line 98
    monitor-exit v0

    return-object v2

    .line 100
    .end local v2    # "s":Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    monitor-exit v0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInvocationForStubbing()Lorg/mockito/invocation/MatchableInvocation;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    return-object v0
.end method

.method public getInvocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStubbingsAscending()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 158
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/stubbing/Stubbing;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 159
    return-object v0
.end method

.method public getStubbingsDescending()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    return-object v0
.end method

.method public hasAnswersForStubbing()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->isSet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasInvocationForPotentialStubbing()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public invokedMock()Ljava/lang/Object;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    invoke-interface {v0}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resetInvocationForPotentialStubbing(Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 0
    .param p1, "invocationMatcher"    # Lorg/mockito/invocation/MatchableInvocation;

    .line 51
    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    .line 52
    return-void
.end method

.method public setAnswersForStubbing(Ljava/util/List;Lorg/mockito/quality/Strictness;)V
    .locals 1
    .param p2, "strictness"    # Lorg/mockito/quality/Strictness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;",
            "Lorg/mockito/quality/Strictness;",
            ")V"
        }
    .end annotation

    .line 110
    .local p1, "answers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/stubbing/Answer<*>;>;"
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->setAnswers(Ljava/util/List;Lorg/mockito/quality/Strictness;)V

    .line 111
    return-void
.end method

.method public setInvocationForPotentialStubbing(Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/MatchableInvocation;

    .line 46
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/internal/verification/RegisteredInvocations;->add(Lorg/mockito/invocation/Invocation;)V

    .line 47
    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    .line 48
    return-void
.end method

.method public setMethodForStubbing(Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 4
    .param p1, "invocation"    # Lorg/mockito/invocation/MatchableInvocation;

    .line 122
    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    .line 123
    invoke-virtual {p0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->hasAnswersForStubbing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    invoke-virtual {v1}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    .line 126
    invoke-virtual {v1}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/stubbing/Answer;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    .line 128
    invoke-virtual {v3}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->getStubbingStrictness()Lorg/mockito/quality/Strictness;

    move-result-object v3

    .line 125
    invoke-virtual {p0, v1, v2, v3}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->clear()V

    .line 131
    return-void

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invocationForStubbing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
