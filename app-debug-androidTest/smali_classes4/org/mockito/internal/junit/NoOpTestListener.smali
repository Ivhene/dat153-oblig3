.class public Lorg/mockito/internal/junit/NoOpTestListener;
.super Ljava/lang/Object;
.source "NoOpTestListener.java"

# interfaces
.implements Lorg/mockito/internal/junit/MockitoTestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 15
    return-void
.end method

.method public testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/mockito/internal/junit/TestFinishedEvent;

    .line 12
    return-void
.end method
