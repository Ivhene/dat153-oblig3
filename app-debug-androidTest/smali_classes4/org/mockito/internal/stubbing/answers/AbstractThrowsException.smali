.class public abstract Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;
.super Ljava/lang/Object;
.source "AbstractThrowsException.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Lorg/mockito/stubbing/ValidableAnswer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/stubbing/ValidableAnswer;"
    }
.end annotation


# instance fields
.field private final filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;->filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 3
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 25
    .local v0, "throwable":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 29
    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    .line 34
    .local v1, "t":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 36
    throw v0

    .line 38
    :cond_0
    iget-object v2, p0, Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;->filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-virtual {v2, v1}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 39
    throw v1

    .line 30
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v0

    .line 26
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "throwable is null: you shall not call #answer if #validateFor fails!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public validateFor(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;

    .line 44
    invoke-virtual {p0}, Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 45
    .local v0, "throwable":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 49
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v1, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v1, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    invoke-virtual {v1, v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isValidException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    return-void

    .line 54
    :cond_1
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->checkedExceptionInvalid(Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 50
    :cond_2
    :goto_0
    return-void

    .line 46
    :cond_3
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->cannotStubWithNullThrowable()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method
