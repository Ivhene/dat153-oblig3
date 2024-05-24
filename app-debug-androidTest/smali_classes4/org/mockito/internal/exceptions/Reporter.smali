.class public Lorg/mockito/internal/exceptions/Reporter;
.super Ljava/lang/Object;
.source "Reporter.java"


# static fields
.field private static final NON_PUBLIC_PARENT:Ljava/lang/String; = "Mocking methods declared on non-public parent classes is not supported."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argumentsAreDifferent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/AssertionError;
    .locals 6
    .param p0, "wanted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .line 312
    .local p1, "actualCalls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "actualLocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "actualBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v1, "messageBuilder":Ljava/lang/StringBuilder;
    nop

    .line 321
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    const-string v4, "Argument(s) are different! Wanted:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 324
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v4}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 326
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    const-string v4, "Actual invocations have different arguments:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 330
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    nop

    .line 333
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 334
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 335
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 339
    .end local v3    # "i":I
    :cond_0
    nop

    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-static {v2, p0, v3}, Lorg/mockito/internal/junit/ExceptionFactory;->createArgumentsAreDifferentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    return-object v2

    .line 315
    .end local v0    # "actualBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "messageBuilder":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actualCalls and actualLocations list must match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static atMostAndNeverShouldNotBeUsedWithTimeout()Lorg/mockito/exceptions/base/MockitoException;
    .locals 9

    .line 780
    new-instance v0, Lorg/mockito/exceptions/misusing/FriendlyReminderException;

    const-string v1, ""

    const-string v2, "Don\'t panic! I\'m just a friendly reminder!"

    const-string v3, "timeout() should not be used with atMost() or never() because..."

    const-string v4, "...it does not make much sense - the test would have passed immediately in concurrency"

    const-string v5, "We kept this method only to avoid compilation errors when upgrading Mockito."

    const-string v6, "In future release we will remove timeout(x).atMost(y) from the API."

    const-string v7, "If you want to find out more please refer to issue 235"

    const-string v8, ""

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 781
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/FriendlyReminderException;-><init>(Ljava/lang/String;)V

    .line 780
    return-object v0
.end method

.method public static cannotCallAbstractRealMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 711
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "  //correct example:"

    const-string v2, "  when(mockOfConcreteClass.nonAbstractMethod()).thenCallRealMethod();"

    const-string v3, "Cannot call abstract real method on java object!"

    const-string v4, "Calling real methods is only possible when mocking non abstract method."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 712
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 711
    return-object v0
.end method

.method public static cannotCreateTimerWithNegativeDurationTime(J)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7
    .param p0, "durationMillis"    # J

    .line 1019
    new-instance v0, Lorg/mockito/exceptions/misusing/FriendlyReminderException;

    const-string v1, ""

    const-string v2, "Don\'t panic! I\'m just a friendly reminder!"

    const-string v3, "It is impossible for time to go backward, therefore..."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "You cannot put negative value of duration: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "as argument of timer methods (after(), timeout())"

    const-string v6, ""

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 1020
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/FriendlyReminderException;-><init>(Ljava/lang/String;)V

    .line 1019
    return-object v0
.end method

.method public static cannotInitializeForInjectMocksAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 9
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "causeMessage"    # Ljava/lang/String;

    .line 765
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate @InjectMocks field named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'! Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "You haven\'t provided the instance at field declaration so I tried to construct the instance."

    const-string v4, "Examples of correct usage of @InjectMocks:"

    const-string v5, "   @InjectMocks Service service = new Service();"

    const-string v6, "   @InjectMocks Service service;"

    const-string v7, "   //and... don\'t forget about some @Mocks for injection :)"

    const-string v8, ""

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 766
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 765
    return-object v0
.end method

.method public static cannotInitializeForSpyAnnotation(Ljava/lang/String;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 10
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "details"    # Ljava/lang/Exception;

    .line 750
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate a @Spy for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "You haven\'t provided the instance for spying at field declaration so I tried to construct the instance."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "However, I failed because: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 754
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Examples of correct usage of @Spy:"

    const-string v6, "   @Spy List mock = new LinkedList();"

    const-string v7, "   @Spy Foo foo; //only if Foo has parameterless constructor"

    const-string v8, "   //also, don\'t forget about MockitoAnnotations.openMocks();"

    const-string v9, ""

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 751
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    return-object v0
.end method

.method public static cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "matchingMock"    # Ljava/lang/Object;
    .param p2, "details"    # Ljava/lang/Exception;

    .line 830
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mockito couldn\'t inject mock dependency \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 833
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' on field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "whose type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 837
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' was annotated by @InjectMocks in your test."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Also I failed because: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 839
    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->exceptionCauseMessageIfAvailable(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 831
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 830
    return-object v0
.end method

.method public static cannotMockClass(Ljava/lang/Class;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 539
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot mock/spy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mockito cannot mock/spy because :"

    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 540
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 539
    return-object v0
.end method

.method public static cannotStubVoidMethodWithAReturnValue(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 18
    .param p0, "methodName"    # Ljava/lang/String;

    .line 547
    new-instance v0, Lorg/mockito/exceptions/misusing/CannotStubVoidMethodWithReturnValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is a *void method* and it *cannot* be stubbed with a *return value*!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Voids are usually stubbed with Throwables:"

    const-string v5, "    doThrow(exception).when(mock).someVoidMethod();"

    const-string v6, "If you need to set the void method to do nothing you can use:"

    const-string v7, "    doNothing().when(mock).someVoidMethod();"

    const-string v8, "For more information, check out the javadocs for Mockito.doNothing()."

    const-string v9, "***"

    const-string v10, "If you\'re unsure why you\'re getting above error read on."

    const-string v11, "Due to the nature of the syntax above problem might occur because:"

    const-string v12, "1. The method you are trying to stub is *overloaded*. Make sure you are calling the right overloaded version."

    const-string v13, "2. Somewhere in your test you are stubbing *final methods*. Sorry, Mockito does not verify/stub final methods."

    const-string v14, "3. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    const-string v15, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    const-string v16, "4. Mocking methods declared on non-public parent classes is not supported."

    const-string v17, ""

    filled-new-array/range {v3 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    .line 548
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/CannotStubVoidMethodWithReturnValue;-><init>(Ljava/lang/String;)V

    .line 547
    return-object v0
.end method

.method public static cannotStubWithNullThrowable()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 62
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Cannot stub with null throwable!"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotVerifyToString()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 720
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "toString() is too often used behind of scenes  (i.e. during String concatenation, in IDE debugging views). Verifying it may give inconsistent or hard to understand results. Not to mention that verifying toString() most likely hints awkward design (hard to explain in a short exception message. Trust me...)"

    const-string v2, "However, it is possible to stub toString(). Stubbing toString() smells a bit funny but there are rare, legitimate use cases."

    const-string v3, "Mockito cannot verify toString()"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 721
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 720
    return-object v0
.end method

.method public static checkedExceptionInvalid(Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 57
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Checked exception is invalid for this method!"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method private static createAllLocationsArgsMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 443
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 445
    .local v2, "invocation":Lorg/mockito/invocation/Invocation;
    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    .line 446
    .local v3, "location":Lorg/mockito/invocation/Location;
    if-nez v3, :cond_0

    .line 447
    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 450
    const-string v5, " with arguments: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 451
    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 452
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .end local v2    # "invocation":Lorg/mockito/invocation/Invocation;
    .end local v3    # "location":Lorg/mockito/invocation/Location;
    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createAllLocationsMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 432
    .local p0, "locations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    const-string v0, "\n"

    if-nez p0, :cond_0

    .line 433
    return-object v0

    .line 435
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Location;

    .line 437
    .local v3, "location":Lorg/mockito/invocation/Location;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .end local v3    # "location":Lorg/mockito/invocation/Location;
    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createTooFewInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "discrepancy"    # Lorg/mockito/internal/reporting/Discrepancy;
    .param p1, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/reporting/Discrepancy;",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 461
    .local p2, "locations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 462
    invoke-interface {p1}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wanted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 464
    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getPluralizedWantedCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getWantedCount()I

    move-result v2

    const-string v3, "."

    const-string v4, ":"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "But was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 468
    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getPluralizedActualCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 469
    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getActualCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 470
    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->createAllLocationsMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 461
    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "wantedCount"    # I
    .param p1, "actualCount"    # I
    .param p2, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    .local p3, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    nop

    .line 401
    invoke-interface {p2}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wanted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    invoke-static {p0}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v3}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "But was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 404
    invoke-static {p1}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-static {p3}, Lorg/mockito/internal/exceptions/Reporter;->createAllLocationsMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 400
    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;
    .locals 4
    .param p0, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;

    .line 368
    invoke-interface {p0}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v2, ""

    const-string v3, "Wanted but not invoked:"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultAnswerDoesNotAcceptNullParameter()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 964
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "defaultAnswer() does not accept null parameter"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 6
    .param p0, "mockMethod"    # Ljava/lang/reflect/Method;
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "delegate"    # Ljava/lang/Object;

    .line 1000
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "When calling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on mock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1003
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(delegate instance had type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1007
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Methods called on mock must exist in delegated instance."

    const-string v4, "no such method was found."

    const-string v5, "Check that the instance passed to delegatesTo() is of the correct type or contains compatible methods"

    filled-new-array {v3, v1, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1001
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 1000
    return-object v0
.end method

.method public static delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 6
    .param p0, "mockMethod"    # Ljava/lang/reflect/Method;
    .param p1, "delegateMethod"    # Ljava/lang/reflect/Method;
    .param p2, "mock"    # Ljava/lang/Object;
    .param p3, "delegate"    # Ljava/lang/Object;

    .line 984
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "When calling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on mock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 987
    invoke-static {p2}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return type should be: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 989
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 991
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(delegate instance had type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 994
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Methods called on delegated instance must have compatible return types with the mock."

    const-string v5, "Check that the instance passed to delegatesTo() is of the correct type or contains compatible methods"

    filled-new-array {v4, v1, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 985
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 984
    return-object v0
.end method

.method private static exceptionCauseMessageIfAvailable(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .param p0, "details"    # Ljava/lang/Exception;

    .line 845
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 846
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 848
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 675
    .local p0, "wrongType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You passed following type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 679
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which is not an interface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraInterfaces() accepts only interfaces."

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 676
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 675
    return-object v0
.end method

.method public static extraInterfacesCannotContainMockedType(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 684
    .local p0, "wrongType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You mocked following type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 687
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "and you passed the same very interface to the extraInterfaces()"

    const-string v3, "extraInterfaces() does not accept the same type as the mocked type."

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 685
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 684
    return-object v0
.end method

.method public static extraInterfacesDoesNotAcceptNullParameters()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 671
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "extraInterfaces() does not accept null parameters."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraInterfacesRequiresAtLeastOneInterface()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 692
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "extraInterfaces() requires at least one interface."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "details"    # Ljava/lang/Throwable;

    .line 794
    new-instance v0, Lorg/mockito/exceptions/misusing/InjectMocksException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate @InjectMocks field named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 797
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 799
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "However the constructor or the initialization block threw an exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 803
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "You haven\'t provided the instance at field declaration so I tried to construct the instance."

    filled-new-array {v1, v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 795
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mockito/exceptions/misusing/InjectMocksException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    return-object v0
.end method

.method public static formatUnncessaryStubbingException(Ljava/lang/Class;Ljava/util/Collection;)Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;"
        }
    .end annotation

    .line 1047
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "unnecessaryStubbings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .local v0, "stubbings":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1049
    .local v1, "count":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    .line 1050
    .local v3, "u":Lorg/mockito/invocation/Invocation;
    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1051
    .end local v3    # "u":Lorg/mockito/invocation/Invocation;
    move v1, v5

    goto :goto_0

    .line 1053
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_0
    if-eqz p0, :cond_1

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unnecessary stubbings detected in test class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1056
    :cond_1
    const-string v2, "Unnecessary stubbings detected."

    :goto_1
    nop

    .line 1058
    .local v2, "heading":Ljava/lang/String;
    new-instance v3, Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Following stubbings are unnecessary (click to navigate to relevant line of code):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Please remove unnecessary stubbings or use \'lenient\' strictness. More info: javadoc for UnnecessaryStubbingException class."

    const-string v6, "Clean & maintainable test code requires zero unnecessary code."

    filled-new-array {v2, v6, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1059
    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;-><init>(Ljava/lang/String;)V

    .line 1058
    return-object v3
.end method

.method public static inOrderRequiresFamiliarMock()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 225
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "    InOrder inOrder = inOrder(mockOne);"

    const-string v2, "    inOrder.verify(mockOne).doStuff();"

    const-string v3, "InOrder can only verify mocks that were passed in during creation of InOrder."

    const-string v4, "For example:"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 226
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method public static incorrectUseOfAdditionalMatchers(Ljava/lang/String;ILjava/util/Collection;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 19
    .param p0, "additionalMatcherName"    # Ljava/lang/String;
    .param p1, "expectedSubMatchersCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 260
    .local p2, "matcherStack":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/internal/matchers/LocalizedMatcher;>;"
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid use of argument matchers inside additional matcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " !"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v4}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v5, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " sub matchers expected, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " recorded:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-static/range {p2 .. p2}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, ""

    const-string v9, "This exception may occur if matchers are combined with raw values:"

    const-string v10, "    //incorrect:"

    const-string v11, "    someMethod(AdditionalMatchers.and(isNotNull(), \"raw String\");"

    const-string v12, "When using matchers, all arguments have to be provided by matchers."

    const-string v13, "For example:"

    const-string v14, "    //correct:"

    const-string v1, "    someMethod(AdditionalMatchers.and(isNotNull(), eq(\"raw String\"));"

    const-string v16, ""

    const-string v17, "For more info see javadoc for Matchers and AdditionalMatchers classes."

    const-string v18, ""

    move-object v15, v1

    filled-new-array/range {v3 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    .line 261
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    .line 260
    return-object v0
.end method

.method public static incorrectUseOfApi()Lorg/mockito/exceptions/base/MockitoException;
    .locals 9

    .line 84
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Incorrect use of API detected here:"

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v3, ""

    const-string v4, "You probably stored a reference to OngoingStubbing returned by when() and called stubbing methods like thenReturn() on this reference more than once."

    const-string v5, "Examples of correct usage:"

    const-string v6, "    when(mock.isOk()).thenReturn(true).thenReturn(false).thenThrow(exception);"

    const-string v7, "    when(mock.isOk()).thenReturn(true, false).thenThrow(exception);"

    const-string v8, ""

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method public static inlineClassWithoutUnboxImpl(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .param p1, "details"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 1038
    .local p0, "inlineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kotlin inline class should have unbox-impl() method,"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1039
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1038
    return-object v0
.end method

.method public static invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)Lorg/mockito/exceptions/base/MockitoException;
    .locals 6
    .param p0, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p1, "willReturnLastParameter"    # Z
    .param p2, "argumentIndex"    # I

    .line 883
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Invalid argument index for the current invocation of method : "

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 887
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 889
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    if-eqz p1, :cond_0

    .line 893
    const-string v4, "Last parameter wanted"

    goto :goto_0

    .line 894
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wanted parameter at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " but "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string v4, "The index need to be a positive number that indicates a valid position of the argument in the invocation."

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "However it is possible to use the -1 value to indicates that the last argument should be returned."

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v3, v1, v2

    .line 884
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 883
    return-object v0
.end method

.method public static invalidArgumentRangeAtIdentityAnswerCreationTime()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 873
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "However it is possible to use the -1 value to indicates that the last argument should be"

    const-string v2, "returned."

    const-string v3, "Invalid argument index."

    const-string v4, "The index need to be a positive number that indicates the position of the argument to return."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 874
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 873
    return-object v0
.end method

.method public static invalidUseOfMatchers(ILjava/util/List;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 14
    .param p0, "expectedMatchersCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 235
    .local p1, "recordedMatchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;"
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    const-string v1, "Invalid use of argument matchers!"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matchers expected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " recorded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "This exception may occur if matchers are combined with raw values:"

    const-string v5, "    //incorrect:"

    const-string v6, "    someMethod(anyObject(), \"raw String\");"

    const-string v7, "When using matchers, all arguments have to be provided by matchers."

    const-string v8, "For example:"

    const-string v9, "    //correct:"

    const-string v10, "    someMethod(anyObject(), eq(\"String by matcher\"));"

    const-string v11, ""

    const-string v12, "For more info see javadoc for Matchers class."

    const-string v13, ""

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v1

    .line 236
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    .line 235
    return-object v0
.end method

.method public static invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .param p0, "listener"    # Lorg/mockito/listeners/InvocationListener;
    .param p1, "listenerThrowable"    # Ljava/lang/Throwable;

    .line 819
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The invocation listener with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 821
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "threw an exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 823
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 824
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 820
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 819
    return-object v0
.end method

.method private static locationsOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 303
    .local p0, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/internal/matchers/LocalizedMatcher;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "description":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/matchers/LocalizedMatcher;

    .line 305
    .local v2, "matcher":Lorg/mockito/internal/matchers/LocalizedMatcher;
    invoke-virtual {v2}, Lorg/mockito/internal/matchers/LocalizedMatcher;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/invocation/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v2    # "matcher":Lorg/mockito/internal/matchers/LocalizedMatcher;
    goto :goto_0

    .line 307
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "parameter"    # Ljava/lang/String;

    .line 809
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() does not accept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " See the Javadoc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static misplacedArgumentMatcher(Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 621
    .local p0, "lastMatchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/matchers/LocalizedMatcher;>;"
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    const-string v1, "Misplaced or misused argument matcher detected here:"

    .line 624
    invoke-static/range {p0 .. p0}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    const-string v4, "You cannot use argument matchers outside of verification or stubbing."

    const-string v5, "Examples of correct usage of argument matchers:"

    const-string v6, "    when(mock.get(anyInt())).thenReturn(null);"

    const-string v7, "    doThrow(new RuntimeException()).when(mock).someVoidMethod(anyObject());"

    const-string v8, "    verify(mock).someMethod(contains(\"foo\"))"

    const-string v9, ""

    const-string v10, "This message may appear after an NullPointerException if the last matcher is returning an object "

    const-string v11, "like any() but the stubbed method signature expect a primitive argument, in this case,"

    const-string v12, "use primitive alternatives."

    const-string v13, "    when(mock.get(any())); // bad use, will raise NPE"

    const-string v14, "    when(mock.get(anyInt())); // correct usage use"

    const-string v15, ""

    const-string v16, "Also, this error might show up because you use argument matchers with methods that cannot be mocked."

    const-string v17, "Following methods *cannot* be stubbed/verified: final/private/equals()/hashCode()."

    const-string v18, "Mocking methods declared on non-public parent classes is not supported."

    const-string v19, ""

    filled-new-array/range {v1 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    .line 622
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    .line 621
    return-object v0
.end method

.method public static missingByteBuddyDependency(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 1123
    instance-of v0, p0, Ljava/lang/NoClassDefFoundError;

    if-eqz v0, :cond_1

    .line 1124
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net/bytebuddy/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoInitializationException;

    const-string v1, "For the inline mock maker, \'net.bytebuddy:byte-buddy-agent\' with the module name \'net.bytebuddy.agent\' is also required."

    const-string v2, "Normally, your IDE or build tool (such as Maven or Gradle) should take care of your class path completion but "

    const-string v3, "It seems like you are running Mockito with an incomplete or inconsistent class path. Byte Buddy could not be loaded."

    const-string v4, ""

    const-string v5, "Byte Buddy is available on Maven Central as \'net.bytebuddy:byte-buddy\' with the module name \'net.bytebuddy\'."

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1127
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/mockito/exceptions/base/MockitoInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1135
    :cond_1
    :goto_0
    return-void
.end method

.method public static missingMethodInvocation()Lorg/mockito/exceptions/base/MockitoException;
    .locals 11

    .line 97
    new-instance v0, Lorg/mockito/exceptions/misusing/MissingMethodInvocationException;

    const-string v1, "when() requires an argument which has to be \'a method call on a mock\'."

    const-string v2, "For example:"

    const-string v3, "    when(mock.getArticles()).thenReturn(articles);"

    const-string v4, ""

    const-string v5, "Also, this error might show up because:"

    const-string v6, "1. you stub either of: final/private/equals()/hashCode() methods."

    const-string v7, "   Those methods *cannot* be stubbed/verified."

    const-string v8, "   Mocking methods declared on non-public parent classes is not supported."

    const-string v9, "2. inside when() you don\'t call method on mock but on some other object."

    const-string v10, ""

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/MissingMethodInvocationException;-><init>(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method public static mockedTypeIsInconsistentWithDelegatedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7
    .param p1, "delegatedInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 853
    .local p0, "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Mocked type must be the same as the type of your delegated instance."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mocked type must be: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 859
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  //correct delegate:"

    const-string v4, "  spy = mock( ->List.class<- , withSettings().delegatedInstance( ->new ArrayList()<- );"

    const-string v5, "  //incorrect - types don\'t match:"

    const-string v6, "  spy = mock( ->List.class<- , withSettings().delegatedInstance( ->new HashSet()<- );"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 854
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 853
    return-object v0
.end method

.method public static mockedTypeIsInconsistentWithSpiedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7
    .param p1, "spiedInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 697
    .local p0, "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Mocked type must be the same as the type of your spied instance."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mocked type must be: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 701
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 703
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  //correct spying:"

    const-string v4, "  spy = mock( ->ArrayList.class<- , withSettings().spiedInstance( ->new ArrayList()<- );"

    const-string v5, "  //incorrect - types don\'t match:"

    const-string v6, "  spy = mock( ->List.class<- , withSettings().spiedInstance( ->new ArrayList()<- );"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 698
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 697
    return-object v0
.end method

.method public static mocksHaveToBePassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 6

    .line 169
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "    verifyNoInteractions(mockOne, mockTwo);"

    const-string v2, ""

    const-string v3, "Method requires argument(s)!"

    const-string v4, "Pass mocks that should be verified, e.g:"

    const-string v5, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 170
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method public static mocksHaveToBePassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 216
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "For example:"

    const-string v2, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    const-string v3, "Method requires argument(s)!"

    const-string v4, "Pass mocks that require verification in order."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 217
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 216
    return-object v0
.end method

.method public static moreThanOneAnnotationNotAllowed(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 730
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You cannot have more than one Mockito annotation on a field!\nThe field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has multiple Mockito annotations.\nFor info how to use annotations see examples in javadoc for MockitoAnnotations class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static neverWantedButInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 6
    .param p0, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 412
    .local p1, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Lorg/mockito/exceptions/verification/NeverWantedButInvoked;

    .line 414
    invoke-interface {p0}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    .line 418
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->createAllLocationsArgsMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Never wanted here:"

    const-string v5, "But invoked here:"

    filled-new-array {v1, v4, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 413
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/verification/NeverWantedButInvoked;-><init>(Ljava/lang/String;)V

    .line 412
    return-object v0
.end method

.method public static noArgumentValueWasCaptured()Lorg/mockito/exceptions/base/MockitoException;
    .locals 11

    .line 656
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "No argument value was captured!"

    const-string v2, "You might have forgotten to use argument.capture() in verify()..."

    const-string v3, "...or you used capture() in stubbing but stubbed method was not called."

    const-string v4, "Be aware that it is recommended to use capture() only with verify()"

    const-string v5, ""

    const-string v6, "Examples of correct argument capturing:"

    const-string v7, "    ArgumentCaptor<Person> argument = ArgumentCaptor.forClass(Person.class);"

    const-string v8, "    verify(mock).doSomething(argument.capture());"

    const-string v9, "    assertEquals(\"John\", argument.getValue().getName());"

    const-string v10, ""

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    .line 657
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 656
    return-object v0
.end method

.method public static noInteractionsWanted(Ljava/lang/Object;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 8
    .param p0, "mock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/exceptions/VerificationAwareInvocation;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 520
    .local p1, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/exceptions/VerificationAwareInvocation;>;"
    new-instance v0, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;-><init>()V

    .line 521
    .local v0, "scenarioPrinter":Lorg/mockito/internal/exceptions/util/ScenarioPrinter;
    invoke-virtual {v0, p1}, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;->print(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "scenario":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v2, "locations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mockito/internal/exceptions/VerificationAwareInvocation;

    .line 525
    .local v4, "invocation":Lorg/mockito/internal/exceptions/VerificationAwareInvocation;
    invoke-interface {v4}, Lorg/mockito/internal/exceptions/VerificationAwareInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v4    # "invocation":Lorg/mockito/internal/exceptions/VerificationAwareInvocation;
    goto :goto_0

    .line 527
    :cond_0
    new-instance v3, Lorg/mockito/exceptions/verification/NoInteractionsWanted;

    new-instance v4, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v4}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "But found these interactions on mock \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 532
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\':"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 534
    const-string v6, ""

    invoke-static {v6, v2}, Lorg/mockito/internal/util/StringUtil;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "No interactions wanted here:"

    filled-new-array {v7, v4, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v4

    .line 528
    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mockito/exceptions/verification/NoInteractionsWanted;-><init>(Ljava/lang/String;)V

    .line 527
    return-object v3
.end method

.method public static noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 7
    .param p0, "undesired"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/exceptions/VerificationAwareInvocation;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 493
    .local p1, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/exceptions/VerificationAwareInvocation;>;"
    new-instance v0, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;-><init>()V

    .line 494
    .local v0, "scenarioPrinter":Lorg/mockito/internal/exceptions/util/ScenarioPrinter;
    invoke-virtual {v0, p1}, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;->print(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "scenario":Ljava/lang/String;
    new-instance v2, Lorg/mockito/exceptions/verification/NoInteractionsWanted;

    new-instance v3, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v3}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "But found this interaction on mock \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 501
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v5

    const-string v6, "No interactions wanted here:"

    filled-new-array {v6, v3, v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v3

    .line 497
    invoke-static {v3}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mockito/exceptions/verification/NoInteractionsWanted;-><init>(Ljava/lang/String;)V

    .line 496
    return-object v2
.end method

.method public static noMoreInteractionsWantedInOrder(Lorg/mockito/invocation/Invocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 5
    .param p0, "undesired"    # Lorg/mockito/invocation/Invocation;

    .line 508
    new-instance v0, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "But found this interaction on mock \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\':"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    const-string v4, "No interactions wanted here:"

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 509
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    .line 508
    return-object v0
.end method

.method public static notAMockPassedToVerify(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 127
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument passed to verify() is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is not a mock!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Make sure you place the parenthesis correctly!"

    const-string v4, "See the examples of correct verifications:"

    const-string v5, "    verify(mock).someMethod();"

    const-string v6, "    verify(mock, times(10)).someMethod();"

    const-string v7, "    verify(mock, atLeastOnce()).someMethod();"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public static notAMockPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 6

    .line 179
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "    verifyNoInteractions(mockOne, mockTwo);"

    const-string v2, ""

    const-string v3, "Argument(s) passed is not a mock!"

    const-string v4, "Examples of correct verifications:"

    const-string v5, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 180
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    .line 179
    return-object v0
.end method

.method public static notAMockPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 152
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "Example of correct stubbing:"

    const-string v2, "    doThrow(new RuntimeException()).when(mock).someMethod();"

    const-string v3, "Argument passed to when() is not a mock!"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    .line 152
    return-object v0
.end method

.method public static notAMockPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 198
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "For example:"

    const-string v2, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    const-string v3, "Argument(s) passed is not a mock!"

    const-string v4, "Pass mocks that require verification in order."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    .line 198
    return-object v0
.end method

.method public static notAnException()Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 1030
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Exception type cannot be null."

    const-string v2, "This may happen with doThrow(Class)|thenThrow(Class) family of methods if passing null parameter."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1031
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 1030
    return-object v0
.end method

.method public static nullPassedToVerify()Lorg/mockito/exceptions/base/MockitoException;
    .locals 8

    .line 140
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const-string v1, "Argument passed to verify() should be a mock but is null!"

    const-string v2, "Examples of correct verifications:"

    const-string v3, "    verify(mock).someMethod();"

    const-string v4, "    verify(mock, times(10)).someMethod();"

    const-string v5, "    verify(mock, atLeastOnce()).someMethod();"

    const-string v6, "    not: verify(mock.someMethod());"

    const-string v7, "Also, if you use @Mock annotation don\'t miss openMocks()"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    .line 140
    return-object v0
.end method

.method public static nullPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 189
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const-string v1, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    const-string v2, "    verifyNoInteractions(mockOne, mockTwo);"

    const-string v3, "Argument(s) passed is null!"

    const-string v4, "Examples of correct verifications:"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 190
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    .line 189
    return-object v0
.end method

.method public static nullPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 160
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const-string v1, "    doThrow(new RuntimeException()).when(mock).someMethod();"

    const-string v2, "Also, if you use @Mock annotation don\'t miss openMocks()"

    const-string v3, "Argument passed to when() is null!"

    const-string v4, "Example of correct stubbing:"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 161
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    .line 160
    return-object v0
.end method

.method public static nullPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 207
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const-string v1, "For example:"

    const-string v2, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    const-string v3, "Argument(s) passed is null!"

    const-string v4, "Pass mocks that require verification in order."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 208
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    .line 207
    return-object v0
.end method

.method public static onlyVoidMethodsCanBeSetToDoNothing()Lorg/mockito/exceptions/base/MockitoException;
    .locals 8

    .line 569
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Only void methods can doNothing()!"

    const-string v2, "Example of correct use of doNothing():"

    const-string v3, "    doNothing()."

    const-string v4, "    doThrow(new RuntimeException())"

    const-string v5, "    .when(mock).someVoidMethod();"

    const-string v6, "Above means:"

    const-string v7, "someVoidMethod() does nothing the 1st time but throws an exception the 2nd time is called"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 570
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 569
    return-object v0
.end method

.method private static possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;

    .line 903
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 904
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    if-nez v1, :cond_0

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the method has no arguments.\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 908
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the possible argument indexes for this method are :\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .line 911
    .local v3, "parameterTypesLength":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 913
    const-string v4, "    ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v4

    const-string v5, "\n"

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_1

    .line 916
    nop

    .line 917
    const-string v4, "+] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v0, v2

    .line 918
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 919
    const-string v6, "  <- Vararg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 920
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 922
    :cond_1
    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    .end local v2    # "i":I
    .end local v3    # "parameterTypesLength":I
    :cond_2
    return-object v1
.end method

.method public static potentialStubbingProblem(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)V
    .locals 18
    .param p0, "actualInvocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)V"
        }
    .end annotation

    .line 1073
    .local p1, "argMismatchStubbings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1074
    .local v0, "stubbings":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1075
    .local v1, "count":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v15, v1

    .end local v1    # "count":I
    .local v15, "count":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "    "

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 1076
    .local v1, "s":Lorg/mockito/invocation/Invocation;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, 0x1

    .end local v15    # "count":I
    .local v4, "count":I
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1077
    const-string v3, "\n      "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .end local v1    # "s":Lorg/mockito/invocation/Invocation;
    move v15, v4

    goto :goto_0

    .line 1079
    .end local v4    # "count":I
    .restart local v15    # "count":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1081
    new-instance v14, Lorg/mockito/exceptions/misusing/PotentialStubbingProblem;

    const-string v1, "Strict stubbing argument mismatch. Please check:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - this invocation of \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1085
    invoke-interface/range {p0 .. p0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' method:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v13, p0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1088
    invoke-interface/range {p0 .. p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " - has following stubbing(s) with different arguments:"

    const-string v7, "Typically, stubbing argument mismatch indicates user mistake when writing tests."

    const-string v8, "Mockito fails early so that you can debug potential problem easily."

    const-string v9, "However, there are legit scenarios when this exception generates false negative signal:"

    const-string v10, "  - stubbing the same method multiple times using \'given().will()\' or \'when().then()\' API"

    const-string v11, "    Please use \'will().given()\' or \'doReturn().when()\' API for stubbing."

    const-string v12, "  - stubbed method is intentionally invoked with different arguments by code under test"

    const-string v16, "    Please use default or \'silent\' JUnit Rule (equivalent of Strictness.LENIENT)."

    const-string v17, "For more information see javadoc for PotentialStubbingProblem class."

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v0

    move-object/from16 v13, v16

    move-object/from16 v16, v0

    move-object v0, v14

    .end local v0    # "stubbings":Ljava/lang/StringBuilder;
    .local v16, "stubbings":Ljava/lang/StringBuilder;
    move-object/from16 v14, v17

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v1

    .line 1082
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/PotentialStubbingProblem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static redundantMockitoListener(Ljava/lang/String;)V
    .locals 7
    .param p0, "listenerType"    # Ljava/lang/String;

    .line 1102
    new-instance v0, Lorg/mockito/exceptions/misusing/RedundantListenerException;

    const-string v1, "Problems adding Mockito listener."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has already been added and not removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "It indicates that previous listener was not removed according to the API."

    const-string v4, "When you add a listener, don\'t forget to remove the listener afterwards:"

    const-string v5, "  Mockito.framework().removeListener(myListener);"

    const-string v6, "For more information, see the javadoc for RedundantListenerException class."

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 1103
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/RedundantListenerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reportNoSubMatchersFound(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .param p0, "additionalMatcherName"    # Ljava/lang/String;

    .line 295
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matchers found for additional matcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v3, ""

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 296
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    .line 295
    return-object v0
.end method

.method public static requiresAtLeastOneListener(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;

    .line 814
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() requires at least one listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static serializableWontWorkForObjectsThatDontImplementSerializable(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 969
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You are using the setting \'withSettings().serializable()\' however the type you are trying to mock \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "do not implement Serializable AND do not have a no-arg constructor."

    const-string v4, "This combination is requested, otherwise you will get an \'java.io.InvalidClassException\' when the mock will be serialized"

    const-string v5, ""

    const-string v6, "Also note that as requested by the Java serialization specification, the whole hierarchy need to implements Serializable,"

    const-string v7, "i.e. the top-most superclass has to implements Serializable."

    const-string v8, ""

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 970
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 969
    return-object v0
.end method

.method public static smartNullPointerException(Ljava/lang/String;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7
    .param p0, "invocation"    # Ljava/lang/String;
    .param p1, "location"    # Lorg/mockito/invocation/Location;

    .line 645
    new-instance v0, Lorg/mockito/exceptions/verification/SmartNullPointerException;

    const-string v1, "You have a NullPointerException here:"

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v3, "because this method call was *not* stubbed correctly:"

    const-string v6, ""

    move-object v4, p1

    move-object v5, p0

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 646
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/verification/SmartNullPointerException;-><init>(Ljava/lang/String;)V

    .line 645
    return-object v0
.end method

.method public static spyAndDelegateAreMutuallyExclusive()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 867
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Settings should not define a spy instance and a delegated instance at the same time."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 868
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 867
    return-object v0
.end method

.method public static stubPassedToVerify(Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .param p0, "mock"    # Ljava/lang/Object;

    .line 286
    new-instance v0, Lorg/mockito/exceptions/misusing/CannotVerifyStubOnlyMock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" passed to verify is a stubOnly() mock which cannot be verified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "If you intend to verify invocations on this mock, don\'t use stubOnly() in its MockSettings."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/CannotVerifyStubOnlyMock;-><init>(Ljava/lang/String;)V

    .line 286
    return-object v0
.end method

.method public static tooFewActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 2
    .param p0, "discrepancy"    # Lorg/mockito/internal/reporting/Discrepancy;
    .param p1, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/reporting/Discrepancy;",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 477
    .local p2, "allLocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->createTooFewInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lorg/mockito/exceptions/verification/TooFewActualInvocations;

    invoke-direct {v1, v0}, Lorg/mockito/exceptions/verification/TooFewActualInvocations;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static tooFewActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4
    .param p0, "discrepancy"    # Lorg/mockito/internal/reporting/Discrepancy;
    .param p1, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/reporting/Discrepancy;",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 486
    .local p2, "locations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->createTooFewInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verification in order failure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 2
    .param p0, "wantedCount"    # I
    .param p1, "actualCount"    # I
    .param p2, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 390
    .local p3, "locations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    nop

    .line 391
    invoke-static {p0, p1, p2, p3}, Lorg/mockito/internal/exceptions/Reporter;->createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lorg/mockito/exceptions/verification/TooManyActualInvocations;

    invoke-direct {v1, v0}, Lorg/mockito/exceptions/verification/TooManyActualInvocations;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4
    .param p0, "wantedCount"    # I
    .param p1, "actualCount"    # I
    .param p2, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 426
    .local p3, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    nop

    .line 427
    invoke-static {p0, p1, p2, p3}, Lorg/mockito/internal/exceptions/Reporter;->createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verification in order failure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static unfinishedMockingSession()V
    .locals 4

    .line 1115
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedMockingSessionException;

    const-string v1, "Previous MockitoSession was not concluded with \'finishMocking()\'."

    const-string v2, "For examples of correct usage see javadoc for MockitoSession class."

    const-string v3, "Unfinished mocking session detected."

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1116
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/UnfinishedMockingSessionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unfinishedStubbing(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 14
    .param p0, "location"    # Lorg/mockito/invocation/Location;

    .line 66
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedStubbingException;

    const-string v1, "Unfinished stubbing detected here:"

    const-string v3, ""

    const-string v4, "E.g. thenReturn() may be missing."

    const-string v5, "Examples of correct stubbing:"

    const-string v6, "    when(mock.isOk()).thenReturn(true);"

    const-string v7, "    when(mock.isOk()).thenThrow(exception);"

    const-string v8, "    doThrow(exception).when(mock).someVoidMethod();"

    const-string v9, "Hints:"

    const-string v10, " 1. missing thenReturn()"

    const-string v11, " 2. you are trying to stub a final method, which is not supported"

    const-string v12, " 3. you are stubbing the behaviour of another mock inside before \'thenReturn\' instruction is completed"

    const-string v13, ""

    move-object v2, p0

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/UnfinishedStubbingException;-><init>(Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method public static unfinishedVerificationException(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 11
    .param p0, "location"    # Lorg/mockito/invocation/Location;

    .line 112
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedVerificationException;

    const-string v1, "Missing method call for verify(mock) here:"

    const-string v3, ""

    const-string v4, "Example of correct verification:"

    const-string v5, "    verify(mock).doSomething()"

    const-string v6, ""

    const-string v7, "Also, this error might show up because you verify either of: final/private/equals()/hashCode() methods."

    const-string v8, "Those methods *cannot* be stubbed/verified."

    const-string v9, "Mocking methods declared on non-public parent classes is not supported."

    const-string v10, ""

    move-object v2, p0

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/UnfinishedVerificationException;-><init>(Ljava/lang/String;)V

    .line 112
    return-object v0
.end method

.method public static unncessaryStubbingException(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)V"
        }
    .end annotation

    .line 1068
    .local p0, "unused":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/mockito/internal/exceptions/Reporter;->formatUnncessaryStubbingException(Ljava/lang/Class;Ljava/util/Collection;)Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;

    move-result-object v0

    throw v0
.end method

.method public static unsupportedCombinationOfAnnotations(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .param p0, "undesiredAnnotationOne"    # Ljava/lang/String;
    .param p1, "undesiredAnnotationTwo"    # Ljava/lang/String;

    .line 740
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This combination of annotations is not permitted on a single field:\n@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static usingConstructorWithFancySerializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .param p0, "mode"    # Lorg/mockito/mock/SerializableMode;

    .line 1012
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mocks instantiated with constructor cannot be combined with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serialization mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedAtMostX(II)Lorg/mockito/exceptions/verification/MoreThanAllowedActualInvocations;
    .locals 3
    .param p0, "maxNumberOfInvocations"    # I
    .param p1, "foundSize"    # I

    .line 612
    new-instance v0, Lorg/mockito/exceptions/verification/MoreThanAllowedActualInvocations;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wanted at most "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 615
    invoke-static {p0}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 613
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/verification/MoreThanAllowedActualInvocations;-><init>(Ljava/lang/String;)V

    .line 612
    return-object v0
.end method

.method public static wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 2
    .param p0, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;

    .line 344
    new-instance v0, Lorg/mockito/exceptions/verification/WantedButNotInvoked;

    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/verification/WantedButNotInvoked;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 5
    .param p0, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "+",
            "Lorg/mockito/invocation/DescribedInvocation;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 350
    .local p1, "invocations":Ljava/util/List;, "Ljava/util/List<+Lorg/mockito/invocation/DescribedInvocation;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "Actually, there were zero interactions with this mock.\n"

    .local v0, "allInvocations":Ljava/lang/String;
    goto :goto_1

    .line 353
    .end local v0    # "allInvocations":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nHowever, there "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lorg/mockito/internal/reporting/Pluralizer;->were_exactly_x_interactions(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    const-string v1, " with this mock:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/DescribedInvocation;

    .line 358
    .local v2, "i":Lorg/mockito/invocation/DescribedInvocation;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lorg/mockito/invocation/DescribedInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .end local v2    # "i":Lorg/mockito/invocation/DescribedInvocation;
    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 363
    .local v0, "allInvocations":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lorg/mockito/exceptions/verification/WantedButNotInvoked;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mockito/exceptions/verification/WantedButNotInvoked;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 9
    .param p0, "wanted"    # Lorg/mockito/invocation/DescribedInvocation;
    .param p1, "previous"    # Lorg/mockito/invocation/DescribedInvocation;

    .line 373
    new-instance v0, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    const-string v1, "Verification in order failure"

    const-string v2, "Wanted but not invoked:"

    .line 377
    invoke-interface {p0}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v4}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v5, "Wanted anywhere AFTER following interaction:"

    .line 380
    invoke-interface {p1}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v6

    .line 381
    invoke-interface {p1}, Lorg/mockito/invocation/DescribedInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v7

    const-string v8, ""

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 374
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    .line 373
    return-object v0
.end method

.method public static wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)Lorg/mockito/exceptions/base/MockitoException;
    .locals 19
    .param p0, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p1, "expectedType"    # Ljava/lang/String;
    .param p3, "argumentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationOnMock;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 933
    .local p2, "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The argument of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 936
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be returned because the following "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method should return the type \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 940
    invoke-interface/range {p0 .. p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 942
    invoke-interface/range {p0 .. p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "The reason for this error can be :"

    const-string v7, "1. The wanted argument position is incorrect."

    const-string v8, "2. The answer is used on the wrong interaction."

    const-string v9, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Position of the wanted argument is "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v14, p3

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " and "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 952
    invoke-static/range {p0 .. p0}, Lorg/mockito/internal/exceptions/Reporter;->possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "***"

    const-string v12, "However if you\'re still unsure why you\'re getting above error read on."

    const-string v13, "Due to the nature of the syntax above problem might occur because:"

    const-string v1, "1. This exception *might* occur in wrongly written multi-threaded tests."

    move-object v14, v1

    const-string v1, "   Please refer to Mockito FAQ on limitations of concurrency testing."

    move-object v15, v1

    const-string v16, "2. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    const-string v17, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    const-string v18, ""

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    .line 934
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    .line 933
    return-object v0
.end method

.method public static wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 12
    .param p0, "expectedType"    # Ljava/lang/String;
    .param p1, "actualType"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 582
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be returned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "() should return "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "***"

    const-string v5, "If you\'re unsure why you\'re getting above error read on."

    const-string v6, "Due to the nature of the syntax above problem might occur because:"

    const-string v7, "1. This exception *might* occur in wrongly written multi-threaded tests."

    const-string v8, "   Please refer to Mockito FAQ on limitations of concurrency testing."

    const-string v9, "2. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    const-string v10, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    const-string v11, ""

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    .line 583
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    .line 582
    return-object v0
.end method

.method public static wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7
    .param p0, "mock"    # Ljava/lang/Object;
    .param p1, "expectedType"    # Ljava/lang/String;
    .param p2, "actualType"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;

    .line 598
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    const-string v1, "Default answer returned a result with the wrong type:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be returned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() should return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The default answer of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 605
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that was configured on the mock is probably incorrectly implemented."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 599
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    .line 598
    return-object v0
.end method
