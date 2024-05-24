.class public Lorg/mockito/internal/stubbing/OngoingStubbingImpl;
.super Lorg/mockito/internal/stubbing/BaseStubbing;
.source "OngoingStubbingImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mockito/internal/stubbing/BaseStubbing<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

.field private strictness:Lorg/mockito/quality/Strictness;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V
    .locals 1
    .param p1, "invocationContainer"    # Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 22
    .local p0, "this":Lorg/mockito/internal/stubbing/OngoingStubbingImpl;, "Lorg/mockito/internal/stubbing/OngoingStubbingImpl<TT;>;"
    invoke-virtual {p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invokedMock()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 24
    return-void
.end method


# virtual methods
.method public getRegisteredInvocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/mockito/internal/stubbing/OngoingStubbingImpl;, "Lorg/mockito/internal/stubbing/OngoingStubbingImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getInvocations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 0
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 42
    .local p0, "this":Lorg/mockito/internal/stubbing/OngoingStubbingImpl;, "Lorg/mockito/internal/stubbing/OngoingStubbingImpl<TT;>;"
    iput-object p1, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->strictness:Lorg/mockito/quality/Strictness;

    .line 43
    return-void
.end method

.method public thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lorg/mockito/internal/stubbing/OngoingStubbingImpl;, "Lorg/mockito/internal/stubbing/OngoingStubbingImpl<TT;>;"
    .local p1, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    iget-object v0, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->hasInvocationForPotentialStubbing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    iget-object v1, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->strictness:Lorg/mockito/quality/Strictness;

    invoke-virtual {v0, p1, v1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;Lorg/mockito/quality/Strictness;)V

    .line 33
    new-instance v0, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;

    iget-object v1, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V

    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->incorrectUseOfApi()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method
