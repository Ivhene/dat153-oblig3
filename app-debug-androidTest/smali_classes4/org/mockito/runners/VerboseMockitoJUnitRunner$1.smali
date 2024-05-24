.class Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;
.super Lorg/junit/runner/notification/RunListener;
.source "VerboseMockitoJUnitRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/runners/VerboseMockitoJUnitRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/runners/VerboseMockitoJUnitRunner;

.field warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;


# direct methods
.method constructor <init>(Lorg/mockito/runners/VerboseMockitoJUnitRunner;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/runners/VerboseMockitoJUnitRunner;

    .line 46
    iput-object p1, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;->this$0:Lorg/mockito/runners/VerboseMockitoJUnitRunner;

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

    .line 58
    iget-object v0, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;->warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;

    invoke-virtual {v0}, Lorg/mockito/internal/debugging/WarningsCollector;->getWarnings()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "warnings":Ljava/lang/String;
    new-instance v1, Lorg/mockito/internal/junit/util/JUnitFailureHacker;

    invoke-direct {v1}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->appendWarnings(Lorg/junit/runner/notification/Failure;Ljava/lang/String;)V

    .line 60
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

    iput-object v0, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;->warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;

    .line 53
    return-void
.end method
