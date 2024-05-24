.class public Lorg/mockito/internal/stubbing/ConsecutiveStubbing;
.super Lorg/mockito/internal/stubbing/BaseStubbing;
.source "ConsecutiveStubbing.java"


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


# direct methods
.method constructor <init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V
    .locals 1
    .param p1, "invocationContainer"    # Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 15
    .local p0, "this":Lorg/mockito/internal/stubbing/ConsecutiveStubbing;, "Lorg/mockito/internal/stubbing/ConsecutiveStubbing<TT;>;"
    invoke-virtual {p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invokedMock()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 17
    return-void
.end method


# virtual methods
.method public thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 21
    .local p0, "this":Lorg/mockito/internal/stubbing/ConsecutiveStubbing;, "Lorg/mockito/internal/stubbing/ConsecutiveStubbing<TT;>;"
    .local p1, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    iget-object v0, p0, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addConsecutiveAnswer(Lorg/mockito/stubbing/Answer;)V

    .line 22
    return-object p0
.end method
