.class public abstract Lorg/mockito/internal/stubbing/answers/DefaultAnswerValidator;
.super Ljava/lang/Object;
.source "DefaultAnswerValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateReturnValueFor(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/Object;)V
    .locals 5
    .param p0, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p1, "returnedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    new-instance v0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    .line 15
    .local v0, "invocationInfo":Lorg/mockito/internal/stubbing/answers/InvocationInfo;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isValidReturnType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    nop

    .line 17
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->printMethodReturnType()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {v1, v2, v3, v4}, Lorg/mockito/internal/exceptions/Reporter;->wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 22
    :cond_1
    :goto_0
    return-void
.end method
