.class Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;
.super Lorg/junit/runner/notification/RunListener;
.source "ConsoleSpammingMockitoJUnitRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;

.field warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;


# direct methods
.method constructor <init>(Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;

    .line 47
    iput-object p1, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;->this$0:Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;

    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 2
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;->this$0:Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;

    invoke-static {v0}, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->access$000(Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;)Lorg/mockito/plugins/MockitoLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;->warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;

    invoke-virtual {v1}, Lorg/mockito/internal/debugging/WarningsCollector;->getWarnings()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/plugins/MockitoLogger;->log(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/mockito/internal/debugging/WarningsCollector;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/WarningsCollector;-><init>()V

    iput-object v0, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;->warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;

    .line 53
    return-void
.end method
