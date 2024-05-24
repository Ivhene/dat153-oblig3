.class Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;
.super Ljava/lang/Object;
.source "VerificationStartedNotifier.java"

# interfaces
.implements Lorg/mockito/listeners/VerificationStartedEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/listeners/VerificationStartedNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field private mock:Ljava/lang/Object;

.field private final originalMockingDetails:Lorg/mockito/MockingDetails;


# direct methods
.method public constructor <init>(Lorg/mockito/MockingDetails;)V
    .locals 1
    .param p1, "originalMockingDetails"    # Lorg/mockito/MockingDetails;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->originalMockingDetails:Lorg/mockito/MockingDetails;

    .line 38
    invoke-interface {p1}, Lorg/mockito/MockingDetails;->getMock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->mock:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public getMock()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->mock:Ljava/lang/Object;

    return-object v0
.end method

.method public setMock(Ljava/lang/Object;)V
    .locals 4
    .param p1, "mock"    # Ljava/lang/Object;

    .line 43
    const-string v0, "VerificationStartedEvent.setMock"

    if-eqz p1, :cond_1

    .line 47
    invoke-static {p1}, Lorg/mockito/Mockito;->mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;

    move-result-object v1

    .line 48
    .local v1, "mockingDetails":Lorg/mockito/MockingDetails;
    invoke-interface {v1}, Lorg/mockito/MockingDetails;->isMock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v0, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->originalMockingDetails:Lorg/mockito/MockingDetails;

    .line 57
    invoke-interface {v0}, Lorg/mockito/MockingDetails;->getMockCreationSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    .line 58
    .local v0, "originalMockSettings":Lorg/mockito/mock/MockCreationSettings;
    invoke-static {p1, v0}, Lorg/mockito/internal/listeners/VerificationStartedNotifier;->assertCompatibleTypes(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V

    .line 59
    iput-object p1, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->mock:Ljava/lang/Object;

    .line 60
    return-void

    .line 49
    .end local v0    # "originalMockSettings":Lorg/mockito/mock/MockCreationSettings;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameter which is not a Mockito mock.\n  Received parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-static {p1}, Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v0, v2}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 44
    .end local v1    # "mockingDetails":Lorg/mockito/MockingDetails;
    :cond_1
    const-string v1, "null parameter."

    invoke-static {v0, v1}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method
