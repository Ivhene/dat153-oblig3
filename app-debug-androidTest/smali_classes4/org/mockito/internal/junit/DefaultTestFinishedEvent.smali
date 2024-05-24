.class public Lorg/mockito/internal/junit/DefaultTestFinishedEvent;
.super Ljava/lang/Object;
.source "DefaultTestFinishedEvent.java"

# interfaces
.implements Lorg/mockito/internal/junit/TestFinishedEvent;


# instance fields
.field private final testClassInstance:Ljava/lang/Object;

.field private final testFailure:Ljava/lang/Throwable;

.field private final testMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "testClassInstance"    # Ljava/lang/Object;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .param p3, "testFailure"    # Ljava/lang/Throwable;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testClassInstance:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testMethodName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testFailure:Ljava/lang/Throwable;

    .line 17
    return-void
.end method


# virtual methods
.method public getFailure()Ljava/lang/Throwable;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testFailure:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testClassInstance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
