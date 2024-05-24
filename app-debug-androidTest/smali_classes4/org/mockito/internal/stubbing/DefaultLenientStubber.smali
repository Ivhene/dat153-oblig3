.class public Lorg/mockito/internal/stubbing/DefaultLenientStubber;
.super Ljava/lang/Object;
.source "DefaultLenientStubber.java"

# interfaces
.implements Lorg/mockito/stubbing/LenientStubber;


# static fields
.field private static final MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    sput-object v0, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static stubber()Lorg/mockito/stubbing/Stubber;
    .locals 2

    .line 68
    sget-object v0, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    sget-object v1, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/MockitoCore;->stubber(Lorg/mockito/quality/Strictness;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p1, "answer"    # Lorg/mockito/stubbing/Answer;

    .line 36
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public doCallRealMethod()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 56
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/stubbing/Stubber;->doCallRealMethod()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public doNothing()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 41
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/stubbing/Stubber;->doNothing()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p1, "toBeReturned"    # Ljava/lang/Object;

    .line 46
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public varargs doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p1, "toBeReturned"    # Ljava/lang/Object;
    .param p2, "nextToBeReturned"    # [Ljava/lang/Object;

    .line 51
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

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

    .line 25
    .local p1, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public varargs doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 1
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

    .line 31
    .local p1, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p2, "nextToBeThrown":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public varargs doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p1, "toBeThrown"    # [Ljava/lang/Throwable;

    .line 20
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p1, "methodCall":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 62
    invoke-virtual {v0, p1}, Lorg/mockito/internal/MockitoCore;->when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;

    .line 63
    .local v0, "ongoingStubbing":Lorg/mockito/internal/stubbing/OngoingStubbingImpl;, "Lorg/mockito/internal/stubbing/OngoingStubbingImpl<TT;>;"
    sget-object v1, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->setStrictness(Lorg/mockito/quality/Strictness;)V

    .line 64
    return-object v0
.end method
