.class public Lorg/mockito/internal/util/MockCreationValidator;
.super Ljava/lang/Object;
.source "MockCreationValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validateConstructorUse(ZLorg/mockito/mock/SerializableMode;)V
    .locals 1
    .param p1, "usingConstructor"    # Z
    .param p2, "mode"    # Lorg/mockito/mock/SerializableMode;

    .line 60
    if-eqz p1, :cond_1

    sget-object v0, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->usingConstructorWithFancySerializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public validateDelegatedInstance(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2, "delegatedInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 51
    .local p1, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    return-void

    .line 55
    :cond_1
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->mockedTypeIsInconsistentWithDelegatedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public validateExtraInterfaces(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 30
    .local p1, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "extraInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<*>;>;"
    if-nez p2, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 35
    .local v1, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq p1, v1, :cond_1

    .line 38
    .end local v1    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 36
    .restart local v1    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->extraInterfacesCannotContainMockedType(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 39
    .end local v1    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method public validateMockedType(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2, "spiedInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 42
    .local p1, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    return-void

    .line 46
    :cond_1
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->mockedTypeIsInconsistentWithSpiedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public validateType(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 22
    .local p1, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->typeMockabilityOf(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v0

    .line 23
    .local v0, "typeMockability":Lorg/mockito/plugins/MockMaker$TypeMockability;
    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$TypeMockability;->mockable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    return-void

    .line 24
    :cond_0
    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$TypeMockability;->nonMockableReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mockito/internal/exceptions/Reporter;->cannotMockClass(Ljava/lang/Class;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method
