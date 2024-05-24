.class public Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
.super Lorg/mockito/internal/invocation/InvocationMatcher;
.source "StubbedInvocationMatcher.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mockito/stubbing/Stubbing;


# static fields
.field private static final serialVersionUID:J = 0x44442c0e943de497L


# instance fields
.field private final answers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/mockito/stubbing/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private final strictness:Lorg/mockito/quality/Strictness;

.field private usedAt:Lorg/mockito/invocation/DescribedInvocation;

.field private final usedAtLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mockito/stubbing/Answer;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/quality/Strictness;)V
    .locals 2
    .param p1, "answer"    # Lorg/mockito/stubbing/Answer;
    .param p2, "invocation"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p3, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 30
    invoke-interface {p2}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    invoke-interface {p2}, Lorg/mockito/invocation/MatchableInvocation;->getMatchers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/invocation/InvocationMatcher;-><init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    .line 25
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->usedAtLock:Ljava/lang/Object;

    .line 31
    iput-object p3, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->strictness:Lorg/mockito/quality/Strictness;

    .line 32
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method


# virtual methods
.method public addAnswer(Lorg/mockito/stubbing/Answer;)V
    .locals 1
    .param p1, "answer"    # Lorg/mockito/stubbing/Answer;

    .line 46
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 3
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lorg/mockito/stubbing/Answer;

    .line 41
    .local v1, "a":Lorg/mockito/stubbing/Answer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 41
    .end local v1    # "a":Lorg/mockito/stubbing/Answer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getStrictness()Lorg/mockito/quality/Strictness;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->strictness:Lorg/mockito/quality/Strictness;

    return-object v0
.end method

.method public markStubUsed(Lorg/mockito/invocation/DescribedInvocation;)V
    .locals 2
    .param p1, "usedAt"    # Lorg/mockito/invocation/DescribedInvocation;

    .line 50
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->usedAtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iput-object p1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->usedAt:Lorg/mockito/invocation/DescribedInvocation;

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stubbed with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasUsed()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->usedAtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->usedAt:Lorg/mockito/invocation/DescribedInvocation;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
