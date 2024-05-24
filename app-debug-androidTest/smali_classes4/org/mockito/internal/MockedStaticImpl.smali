.class public final Lorg/mockito/internal/MockedStaticImpl;
.super Ljava/lang/Object;
.source "MockedStaticImpl.java"

# interfaces
.implements Lorg/mockito/MockedStatic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/MockedStatic<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private final control:Lorg/mockito/plugins/MockMaker$StaticMockControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/plugins/MockMaker$StaticMockControl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final location:Lorg/mockito/invocation/Location;


# direct methods
.method protected constructor <init>(Lorg/mockito/plugins/MockMaker$StaticMockControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/plugins/MockMaker$StaticMockControl<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    .local p1, "control":Lorg/mockito/plugins/MockMaker$StaticMockControl;, "Lorg/mockito/plugins/MockMaker$StaticMockControl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/MockedStaticImpl;->location:Lorg/mockito/invocation/Location;

    .line 41
    iput-object p1, p0, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    .line 42
    return-void
.end method

.method private assertNotClosed()V
    .locals 4

    .line 171
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/MockedStaticImpl;->closed:Z

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 172
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    iget-object v1, p0, Lorg/mockito/internal/MockedStaticImpl;->location:Lorg/mockito/invocation/Location;

    .line 175
    invoke-interface {v1}, Lorg/mockito/invocation/Location;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is already resolved and cannot longer be used"

    const-string v3, "The static mock created at"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearInvocations()V
    .locals 2

    .line 120
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    invoke-direct {p0}, Lorg/mockito/internal/MockedStaticImpl;->assertNotClosed()V

    .line 122
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 123
    .local v0, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 124
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 125
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->resetOngoingStubbing()V

    .line 127
    iget-object v1, p0, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    invoke-interface {v1}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->clearInvocations()V

    .line 128
    return-void
.end method

.method public close()V
    .locals 1

    .line 157
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    invoke-direct {p0}, Lorg/mockito/internal/MockedStaticImpl;->assertNotClosed()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/MockedStaticImpl;->closed:Z

    .line 160
    iget-object v0, p0, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->disable()V

    .line 161
    return-void
.end method

.method public closeOnDemand()V
    .locals 1

    .line 165
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/MockedStaticImpl;->closed:Z

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/mockito/internal/MockedStaticImpl;->close()V

    .line 168
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 152
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/MockedStaticImpl;->closed:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 108
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    invoke-direct {p0}, Lorg/mockito/internal/MockedStaticImpl;->assertNotClosed()V

    .line 110
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 111
    .local v0, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 112
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 113
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->resetOngoingStubbing()V

    .line 115
    iget-object v1, p0, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    invoke-interface {v1}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/MockUtil;->resetMock(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 182
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "static mock for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    invoke-interface {v1}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lorg/mockito/MockedStatic$Verification;Lorg/mockito/verification/VerificationMode;)V
    .locals 17
    .param p1, "verification"    # Lorg/mockito/MockedStatic$Verification;
    .param p2, "mode"    # Lorg/mockito/verification/VerificationMode;

    .line 71
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lorg/mockito/internal/MockedStaticImpl;->assertNotClosed()V

    .line 73
    iget-object v0, v1, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/Mockito;->mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;

    move-result-object v2

    .line 74
    .local v2, "mockingDetails":Lorg/mockito/MockingDetails;
    invoke-interface {v2}, Lorg/mockito/MockingDetails;->getMockHandler()Lorg/mockito/invocation/MockHandler;

    move-result-object v3

    .line 76
    .local v3, "handler":Lorg/mockito/invocation/MockHandler;
    nop

    .line 77
    invoke-interface {v3}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getVerificationStartedListeners()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-static {v0, v2}, Lorg/mockito/internal/listeners/VerificationStartedNotifier;->notifyVerificationStarted(Ljava/util/List;Lorg/mockito/MockingDetails;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v4

    .line 80
    .local v4, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    move-object/from16 v5, p2

    invoke-interface {v4, v5}, Lorg/mockito/internal/progress/MockingProgress;->maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v6

    .line 81
    .local v6, "actualMode":Lorg/mockito/verification/VerificationMode;
    new-instance v0, Lorg/mockito/internal/verification/MockAwareVerificationMode;

    iget-object v7, v1, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    .line 83
    invoke-interface {v7}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4}, Lorg/mockito/internal/progress/MockingProgress;->verificationListeners()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v0, v7, v6, v8}, Lorg/mockito/internal/verification/MockAwareVerificationMode;-><init>(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;Ljava/util/Set;)V

    .line 81
    invoke-interface {v4, v0}, Lorg/mockito/internal/progress/MockingProgress;->verificationStarted(Lorg/mockito/verification/VerificationMode;)V

    .line 86
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/mockito/MockedStatic$Verification;->apply()V
    :try_end_0
    .catch Lorg/mockito/exceptions/base/MockitoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/mockito/exceptions/base/MockitoAssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    nop

    .line 104
    return-void

    .line 89
    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 90
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v7, Lorg/mockito/exceptions/base/MockitoException;

    const-string v8, "An unexpected error occurred while verifying a static stub"

    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "To correctly verify a stub, invoke a single static method of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    .line 95
    invoke-interface {v11}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in the provided lambda."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "For example, if a method \'sample\' was defined, provide a lambda or anonymous class containing the code"

    const-string v12, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "() -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    .line 99
    invoke-interface {v14}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".sample()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "or"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "mockingDetails":Lorg/mockito/MockingDetails;
    .local v16, "mockingDetails":Lorg/mockito/MockingDetails;
    iget-object v2, v1, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    .line 101
    invoke-interface {v2}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "::sample"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    filled-new-array/range {v8 .. v15}, [Ljava/lang/Object;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 87
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v16    # "mockingDetails":Lorg/mockito/MockingDetails;
    .restart local v2    # "mockingDetails":Lorg/mockito/MockingDetails;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object/from16 v16, v2

    .line 88
    .end local v2    # "mockingDetails":Lorg/mockito/MockingDetails;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v16    # "mockingDetails":Lorg/mockito/MockingDetails;
    throw v0
.end method

.method public verify(Lorg/mockito/verification/VerificationMode;Lorg/mockito/MockedStatic$Verification;)V
    .locals 0
    .param p1, "mode"    # Lorg/mockito/verification/VerificationMode;
    .param p2, "verification"    # Lorg/mockito/MockedStatic$Verification;

    .line 66
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    invoke-virtual {p0, p2, p1}, Lorg/mockito/internal/MockedStaticImpl;->verify(Lorg/mockito/MockedStatic$Verification;Lorg/mockito/verification/VerificationMode;)V

    .line 67
    return-void
.end method

.method public verifyNoInteractions()V
    .locals 3

    .line 142
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    invoke-direct {p0}, Lorg/mockito/internal/MockedStaticImpl;->assertNotClosed()V

    .line 144
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 145
    iget-object v0, p0, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v0

    .line 146
    .local v0, "invocations":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    new-instance v1, Lorg/mockito/internal/verification/VerificationDataImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/mockito/internal/verification/VerificationDataImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 147
    .local v1, "data":Lorg/mockito/internal/verification/VerificationDataImpl;
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->noInteractions()Lorg/mockito/internal/verification/NoInteractions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mockito/internal/verification/NoInteractions;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 148
    return-void
.end method

.method public verifyNoMoreInteractions()V
    .locals 3

    .line 132
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    invoke-direct {p0}, Lorg/mockito/internal/MockedStaticImpl;->assertNotClosed()V

    .line 134
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 135
    iget-object v0, p0, Lorg/mockito/internal/MockedStaticImpl;->control:Lorg/mockito/plugins/MockMaker$StaticMockControl;

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v0

    .line 136
    .local v0, "invocations":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    new-instance v1, Lorg/mockito/internal/verification/VerificationDataImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/mockito/internal/verification/VerificationDataImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 137
    .local v1, "data":Lorg/mockito/internal/verification/VerificationDataImpl;
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->noMoreInteractions()Lorg/mockito/internal/verification/NoMoreInteractions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mockito/internal/verification/NoMoreInteractions;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 138
    return-void
.end method

.method public when(Lorg/mockito/MockedStatic$Verification;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 3
    .param p1, "verification"    # Lorg/mockito/MockedStatic$Verification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/MockedStatic$Verification;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TS;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/mockito/internal/MockedStaticImpl;, "Lorg/mockito/internal/MockedStaticImpl<TT;>;"
    invoke-direct {p0}, Lorg/mockito/internal/MockedStaticImpl;->assertNotClosed()V

    .line 49
    :try_start_0
    invoke-interface {p1}, Lorg/mockito/MockedStatic$Verification;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 53
    :goto_0
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 54
    .local v0, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->stubbingStarted()V

    .line 56
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    .line 57
    .local v1, "stubbing":Lorg/mockito/stubbing/OngoingStubbing;, "Lorg/mockito/stubbing/OngoingStubbing<TS;>;"
    if-eqz v1, :cond_0

    .line 61
    return-object v1

    .line 58
    :cond_0
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 59
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->missingMethodInvocation()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    throw v2
.end method
