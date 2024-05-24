.class public final Lorg/mockito/internal/listeners/VerificationStartedNotifier;
.super Ljava/lang/Object;
.source "VerificationStartedNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertCompatibleTypes(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 7
    .param p0, "mock"    # Ljava/lang/Object;
    .param p1, "originalSettings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 69
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "originalType":Ljava/lang/Class;
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ".\n "

    const-string v3, "\n  Received parameter: "

    const-string v4, "VerificationStartedEvent.setMock"

    if-eqz v1, :cond_2

    .line 82
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 83
    .local v5, "iface":Ljava/lang/Class;
    invoke-virtual {v5, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    .end local v5    # "iface":Ljava/lang/Class;
    goto :goto_0

    .line 84
    .restart local v5    # "iface":Ljava/lang/Class;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parameter which does not implement all extra interfaces of the original mock.\n  Required type: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n  Required extra interface: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    invoke-static {p0}, Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v4, v1}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 98
    .end local v5    # "iface":Ljava/lang/Class;
    :cond_1
    return-void

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameter which is not the same type as the original mock.\n  Required type: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-static {p0}, Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v4, v1}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method

.method public static notifyVerificationStarted(Ljava/util/List;Lorg/mockito/MockingDetails;)Ljava/lang/Object;
    .locals 3
    .param p1, "originalMockingDetails"    # Lorg/mockito/MockingDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/listeners/VerificationStartedListener;",
            ">;",
            "Lorg/mockito/MockingDetails;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    .local p0, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/listeners/VerificationStartedListener;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p1}, Lorg/mockito/MockingDetails;->getMock()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;

    invoke-direct {v0, p1}, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;-><init>(Lorg/mockito/MockingDetails;)V

    .line 26
    .local v0, "event":Lorg/mockito/listeners/VerificationStartedEvent;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/listeners/VerificationStartedListener;

    .line 27
    .local v2, "listener":Lorg/mockito/listeners/VerificationStartedListener;
    invoke-interface {v2, v0}, Lorg/mockito/listeners/VerificationStartedListener;->onVerificationStarted(Lorg/mockito/listeners/VerificationStartedEvent;)V

    .line 28
    .end local v2    # "listener":Lorg/mockito/listeners/VerificationStartedListener;
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v0}, Lorg/mockito/listeners/VerificationStartedEvent;->getMock()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
