.class public Lorg/mockito/Mockito;
.super Lorg/mockito/ArgumentMatchers;
.source "Mockito.java"


# static fields
.field public static final CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

.field public static final RETURNS_DEEP_STUBS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURNS_DEFAULTS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURNS_MOCKS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURNS_SELF:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURNS_SMART_NULLS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1596
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    sput-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 1608
    sget-object v0, Lorg/mockito/Answers;->RETURNS_DEFAULTS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_DEFAULTS:Lorg/mockito/stubbing/Answer;

    .line 1640
    sget-object v0, Lorg/mockito/Answers;->RETURNS_SMART_NULLS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_SMART_NULLS:Lorg/mockito/stubbing/Answer;

    .line 1653
    sget-object v0, Lorg/mockito/Answers;->RETURNS_MOCKS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_MOCKS:Lorg/mockito/stubbing/Answer;

    .line 1740
    sget-object v0, Lorg/mockito/Answers;->RETURNS_DEEP_STUBS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_DEEP_STUBS:Lorg/mockito/stubbing/Answer;

    .line 1782
    sget-object v0, Lorg/mockito/Answers;->CALLS_REAL_METHODS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    .line 1853
    sget-object v0, Lorg/mockito/Answers;->RETURNS_SELF:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_SELF:Lorg/mockito/stubbing/Answer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1594
    invoke-direct {p0}, Lorg/mockito/ArgumentMatchers;-><init>()V

    return-void
.end method

.method public static after(J)Lorg/mockito/verification/VerificationAfterDelay;
    .locals 2
    .param p0, "millis"    # J

    .line 3202
    new-instance v0, Lorg/mockito/verification/After;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/mockito/verification/After;-><init>(JLorg/mockito/verification/VerificationMode;)V

    return-object v0
.end method

.method public static atLeast(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p0, "minNumberOfInvocations"    # I

    .line 3041
    invoke-static {p0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeast(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static atLeastOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 3024
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeastOnce()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static atMost(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p0, "maxNumberOfInvocations"    # I

    .line 3074
    invoke-static {p0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMost(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static atMostOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 3057
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMostOnce()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static calls(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p0, "wantedNumberOfInvocations"    # I

    .line 3092
    invoke-static {p0}, Lorg/mockito/internal/verification/VerificationModeFactory;->calls(I)Lorg/mockito/internal/verification/Calls;

    move-result-object v0

    return-object v0
.end method

.method public static clearAllCaches()V
    .locals 1

    .line 2475
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->clearAllCaches()V

    .line 2476
    return-void
.end method

.method public static varargs clearInvocations([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 2490
    .local p0, "mocks":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->clearInvocations([Ljava/lang/Object;)V

    .line 2491
    return-void
.end method

.method static debug()Lorg/mockito/MockitoDebugger;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3310
    new-instance v0, Lorg/mockito/internal/debugging/MockitoDebuggerImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/MockitoDebuggerImpl;-><init>()V

    return-object v0
.end method

.method public static description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p0, "description"    # Ljava/lang/String;

    .line 3300
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/mockito/Mockito;->times(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/verification/VerificationMode;->description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p0, "answer"    # Lorg/mockito/stubbing/Answer;

    .line 2704
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/stubbing/Stubber;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static doCallRealMethod()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 2677
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/stubbing/Stubber;->doCallRealMethod()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static doNothing()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 2747
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/stubbing/Stubber;->doNothing()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p0, "toBeReturned"    # Ljava/lang/Object;

    .line 2798
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static varargs doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p0, "toBeReturned"    # Ljava/lang/Object;
    .param p1, "toBeReturnedNext"    # [Ljava/lang/Object;

    .line 2853
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
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

    .line 2612
    .local p0, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static varargs doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
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

    .line 2641
    .local p0, "toBeThrown":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p1, "toBeThrownNext":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static varargs doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;
    .locals 1
    .param p0, "toBeThrown"    # [Ljava/lang/Throwable;

    .line 2589
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/stubbing/Stubber;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static framework()Lorg/mockito/MockitoFramework;
    .locals 1
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 3321
    new-instance v0, Lorg/mockito/internal/framework/DefaultMockitoFramework;

    invoke-direct {v0}, Lorg/mockito/internal/framework/DefaultMockitoFramework;-><init>()V

    return-object v0
.end method

.method public static varargs ignoreStubs([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "mocks"    # [Ljava/lang/Object;

    .line 2969
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->ignoreStubs([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;
    .locals 1
    .param p0, "mocks"    # [Ljava/lang/Object;

    .line 2885
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$mockConstruction$2(Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/MockSettings;
    .locals 1
    .param p0, "index"    # Lorg/mockito/MockedConstruction$Context;

    .line 2214
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$mockConstruction$3(Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;)V
    .locals 0
    .param p0, "mock"    # Ljava/lang/Object;
    .param p1, "context"    # Lorg/mockito/MockedConstruction$Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2214
    return-void
.end method

.method static synthetic lambda$mockConstruction$4(Lorg/mockito/MockSettings;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/MockSettings;
    .locals 0
    .param p0, "mockSettings"    # Lorg/mockito/MockSettings;
    .param p1, "context"    # Lorg/mockito/MockedConstruction$Context;

    .line 2250
    return-object p0
.end method

.method static synthetic lambda$mockConstruction$5(Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;)V
    .locals 0
    .param p0, "mock"    # Ljava/lang/Object;
    .param p1, "context"    # Lorg/mockito/MockedConstruction$Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2269
    return-void
.end method

.method static synthetic lambda$mockConstruction$6(Lorg/mockito/MockSettings;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/MockSettings;
    .locals 0
    .param p0, "mockSettings"    # Lorg/mockito/MockSettings;
    .param p1, "index"    # Lorg/mockito/MockedConstruction$Context;

    .line 2290
    return-object p0
.end method

.method static synthetic lambda$mockConstructionWithAnswer$0([Lorg/mockito/stubbing/Answer;Lorg/mockito/stubbing/Answer;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/MockSettings;
    .locals 3
    .param p0, "additionalAnswers"    # [Lorg/mockito/stubbing/Answer;
    .param p1, "defaultAnswer"    # Lorg/mockito/stubbing/Answer;
    .param p2, "context"    # Lorg/mockito/MockedConstruction$Context;

    .line 2188
    invoke-interface {p2}, Lorg/mockito/MockedConstruction$Context;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2190
    :cond_0
    invoke-interface {p2}, Lorg/mockito/MockedConstruction$Context;->getCount()I

    move-result v0

    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 2191
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v1, p0, v2

    .line 2192
    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    .line 2191
    return-object v0

    .line 2194
    :cond_1
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    .line 2195
    invoke-interface {p2}, Lorg/mockito/MockedConstruction$Context;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    aget-object v1, p0, v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    .line 2194
    return-object v0

    .line 2189
    :cond_2
    :goto_0
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$mockConstructionWithAnswer$1(Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;)V
    .locals 0
    .param p0, "mock"    # Ljava/lang/Object;
    .param p1, "context"    # Lorg/mockito/MockedConstruction$Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2198
    return-void
.end method

.method public static lenient()Lorg/mockito/stubbing/LenientStubber;
    .locals 1
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 3403
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->lenient()Lorg/mockito/stubbing/LenientStubber;

    move-result-object v0

    return-object v0
.end method

.method public static mock(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1865
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static mock(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1885
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    move-result-object v0

    sget-object v1, Lorg/mockito/Mockito;->RETURNS_DEFAULTS:Lorg/mockito/stubbing/Answer;

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;
    .locals 1
    .param p1, "mockSettings"    # Lorg/mockito/MockSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockSettings;",
            ")TT;"
        }
    .end annotation

    .line 1954
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0, p1}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static mock(Ljava/lang/Class;Lorg/mockito/stubbing/Answer;)Ljava/lang/Object;
    .locals 1
    .param p1, "defaultAnswer"    # Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/stubbing/Answer;",
            ")TT;"
        }
    .end annotation

    .line 1926
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static mockConstruction(Ljava/lang/Class;)Lorg/mockito/MockedConstruction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/mockito/MockedConstruction<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2214
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/mockito/Mockito$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/mockito/Mockito$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lorg/mockito/Mockito$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/mockito/Mockito$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/mockito/Mockito;->mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;

    move-result-object v0

    return-object v0
.end method

.method public static mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;)Lorg/mockito/MockedConstruction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/MockSettings;",
            ">;)",
            "Lorg/mockito/MockedConstruction<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2269
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "mockSettingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/MockSettings;>;"
    new-instance v0, Lorg/mockito/Mockito$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/mockito/Mockito$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/mockito/Mockito;->mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;

    move-result-object v0

    return-object v0
.end method

.method public static mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/MockSettings;",
            ">;",
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;)",
            "Lorg/mockito/MockedConstruction<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2311
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "mockSettingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/MockSettings;>;"
    .local p2, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0, p1, p2}, Lorg/mockito/internal/MockitoCore;->mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;

    move-result-object v0

    return-object v0
.end method

.method public static mockConstruction(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedConstruction;
    .locals 1
    .param p1, "mockSettings"    # Lorg/mockito/MockSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockSettings;",
            ")",
            "Lorg/mockito/MockedConstruction<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2250
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/mockito/Mockito$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/mockito/Mockito$$ExternalSyntheticLambda2;-><init>(Lorg/mockito/MockSettings;)V

    invoke-static {p0, v0}, Lorg/mockito/Mockito;->mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;)Lorg/mockito/MockedConstruction;

    move-result-object v0

    return-object v0
.end method

.method public static mockConstruction(Ljava/lang/Class;Lorg/mockito/MockSettings;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;
    .locals 1
    .param p1, "mockSettings"    # Lorg/mockito/MockSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockSettings;",
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;)",
            "Lorg/mockito/MockedConstruction<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2290
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    new-instance v0, Lorg/mockito/Mockito$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/mockito/Mockito$$ExternalSyntheticLambda3;-><init>(Lorg/mockito/MockSettings;)V

    invoke-static {p0, v0, p2}, Lorg/mockito/Mockito;->mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;

    move-result-object v0

    return-object v0
.end method

.method public static mockConstruction(Ljava/lang/Class;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;)",
            "Lorg/mockito/MockedConstruction<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2232
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/mockito/Mockito;->mockConstruction(Ljava/lang/Class;Lorg/mockito/MockSettings;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;

    move-result-object v0

    return-object v0
.end method

.method public static varargs mockConstructionWithAnswer(Ljava/lang/Class;Lorg/mockito/stubbing/Answer;[Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockedConstruction;
    .locals 2
    .param p1, "defaultAnswer"    # Lorg/mockito/stubbing/Answer;
    .param p2, "additionalAnswers"    # [Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/stubbing/Answer;",
            "[",
            "Lorg/mockito/stubbing/Answer;",
            ")",
            "Lorg/mockito/MockedConstruction<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2185
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/mockito/Mockito$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p1}, Lorg/mockito/Mockito$$ExternalSyntheticLambda5;-><init>([Lorg/mockito/stubbing/Answer;Lorg/mockito/stubbing/Answer;)V

    new-instance v1, Lorg/mockito/Mockito$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/mockito/Mockito$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/mockito/Mockito;->mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;

    move-result-object v0

    return-object v0
.end method

.method public static mockStatic(Ljava/lang/Class;)Lorg/mockito/MockedStatic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/mockito/MockedStatic<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2096
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mockito/Mockito;->mockStatic(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedStatic;

    move-result-object v0

    return-object v0
.end method

.method public static mockStatic(Ljava/lang/Class;Ljava/lang/String;)Lorg/mockito/MockedStatic;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mockito/MockedStatic<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2142
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mockito/Mockito;->mockStatic(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedStatic;

    move-result-object v0

    return-object v0
.end method

.method public static mockStatic(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedStatic;
    .locals 1
    .param p1, "mockSettings"    # Lorg/mockito/MockSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockSettings;",
            ")",
            "Lorg/mockito/MockedStatic<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2165
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0, p1}, Lorg/mockito/internal/MockitoCore;->mockStatic(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedStatic;

    move-result-object v0

    return-object v0
.end method

.method public static mockStatic(Ljava/lang/Class;Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockedStatic;
    .locals 1
    .param p1, "defaultAnswer"    # Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/stubbing/Answer;",
            ")",
            "Lorg/mockito/MockedStatic<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2119
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mockito/Mockito;->mockStatic(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedStatic;

    move-result-object v0

    return-object v0
.end method

.method public static mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;
    .locals 1
    .param p0, "toInspect"    # Ljava/lang/Object;

    .line 1902
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static mockitoSession()Lorg/mockito/session/MockitoSessionBuilder;
    .locals 1
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 3335
    new-instance v0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;

    invoke-direct {v0}, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;-><init>()V

    return-object v0
.end method

.method public static never()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 3008
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/mockito/Mockito;->times(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static only()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 3113
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->only()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static varargs reset([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 2464
    .local p0, "mocks":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->reset([Ljava/lang/Object;)V

    .line 2465
    return-void
.end method

.method public static spy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2073
    .local p0, "classToSpy":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 2074
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/mockito/MockSettings;->useConstructor([Ljava/lang/Object;)Lorg/mockito/MockSettings;

    move-result-object v1

    sget-object v2, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    invoke-interface {v1, v2}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v1

    .line 2073
    invoke-virtual {v0, p0, v1}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static spy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2038
    .local p0, "object":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 2039
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2040
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/mockito/MockSettings;->spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;

    move-result-object v2

    sget-object v3, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    invoke-interface {v2, v3}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v2

    .line 2038
    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static timeout(J)Lorg/mockito/verification/VerificationWithTimeout;
    .locals 2
    .param p0, "millis"    # J

    .line 3146
    new-instance v0, Lorg/mockito/verification/Timeout;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/mockito/verification/Timeout;-><init>(JLorg/mockito/verification/VerificationMode;)V

    return-object v0
.end method

.method public static times(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p0, "wantedNumberOfInvocations"    # I

    .line 2986
    invoke-static {p0}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object v0

    return-object v0
.end method

.method public static validateMockitoUsage()V
    .locals 1

    .line 3251
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->validateMockitoUsage()V

    .line 3252
    return-void
.end method

.method public static verify(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2407
    .local p0, "mock":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/mockito/Mockito;->times(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mockito/internal/MockitoCore;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 1
    .param p1, "mode"    # Lorg/mockito/verification/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 2434
    .local p0, "mock":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0, p1}, Lorg/mockito/internal/MockitoCore;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs verifyNoInteractions([Ljava/lang/Object;)V
    .locals 1
    .param p0, "mocks"    # [Ljava/lang/Object;

    .line 2569
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->verifyNoInteractions([Ljava/lang/Object;)V

    .line 2570
    return-void
.end method

.method public static varargs verifyNoMoreInteractions([Ljava/lang/Object;)V
    .locals 1
    .param p0, "mocks"    # [Ljava/lang/Object;

    .line 2537
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->verifyNoMoreInteractions([Ljava/lang/Object;)V

    .line 2538
    return-void
.end method

.method public static varargs verifyZeroInteractions([Ljava/lang/Object;)V
    .locals 1
    .param p0, "mocks"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2549
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->verifyNoMoreInteractions([Ljava/lang/Object;)V

    .line 2550
    return-void
.end method

.method public static when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 2376
    .local p0, "methodCall":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0
.end method

.method public static withSettings()Lorg/mockito/MockSettings;
    .locals 2

    .line 3286
    new-instance v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-direct {v0}, Lorg/mockito/internal/creation/MockSettingsImpl;-><init>()V

    sget-object v1, Lorg/mockito/Mockito;->RETURNS_DEFAULTS:Lorg/mockito/stubbing/Answer;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    return-object v0
.end method
