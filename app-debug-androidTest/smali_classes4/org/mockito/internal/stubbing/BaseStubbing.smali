.class public abstract Lorg/mockito/internal/stubbing/BaseStubbing;
.super Ljava/lang/Object;
.source "BaseStubbing.java"

# interfaces
.implements Lorg/mockito/stubbing/OngoingStubbing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/OngoingStubbing<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final strongMockRef:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mock"    # Ljava/lang/Object;

    .line 23
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/mockito/internal/stubbing/BaseStubbing;->strongMockRef:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMock()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">()TM;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/stubbing/BaseStubbing;->strongMockRef:Ljava/lang/Object;

    return-object v0
.end method

.method public then(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
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

    .line 29
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    .local p1, "answer":Lorg/mockito/stubbing/Answer;, "Lorg/mockito/stubbing/Answer<*>;"
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0
.end method

.method public thenCallRealMethod()Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    new-instance v0, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0
.end method

.method public thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/mockito/internal/stubbing/answers/Returns;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0
.end method

.method public varargs thenReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "values":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    .line 40
    .local v0, "stubbing":Lorg/mockito/stubbing/OngoingStubbing;, "Lorg/mockito/stubbing/OngoingStubbing<TT;>;"
    if-nez p2, :cond_0

    .line 44
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    return-object v1

    .line 46
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 47
    .local v3, "v":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v3}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    .line 46
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    return-object v0
.end method

.method public thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    .local p1, "throwableType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionForClassType;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionForClassType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 76
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAnException()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public varargs thenThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;
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
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    .local p1, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p2, "nextToBeThrown":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    if-nez p2, :cond_0

    .line 85
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    .line 88
    .local v0, "stubbing":Lorg/mockito/stubbing/OngoingStubbing;, "Lorg/mockito/stubbing/OngoingStubbing<TT;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 89
    .local v3, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-interface {v0, v3}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    .line 88
    .end local v3    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-object v0
.end method

.method public varargs thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 6
    .param p1, "throwables"    # [Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/mockito/internal/stubbing/BaseStubbing;, "Lorg/mockito/internal/stubbing/BaseStubbing<TT;>;"
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "stubbing":Lorg/mockito/stubbing/OngoingStubbing;, "Lorg/mockito/stubbing/OngoingStubbing<TT;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 63
    .local v4, "t":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 64
    invoke-direct {p0, v4}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    goto :goto_1

    .line 66
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v4, v5, v2

    invoke-interface {v0, v5}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    .line 62
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_2
    return-object v0
.end method
