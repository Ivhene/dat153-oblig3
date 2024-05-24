.class public final Lorg/mockito/internal/junit/JUnitTestRule;
.super Ljava/lang/Object;
.source "JUnitTestRule.java"

# interfaces
.implements Lorg/mockito/junit/MockitoTestRule;


# instance fields
.field private final sessionStore:Lorg/mockito/internal/junit/JUnitSessionStore;

.field private final testInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/quality/Strictness;Ljava/lang/Object;)V
    .locals 1
    .param p1, "logger"    # Lorg/mockito/plugins/MockitoLogger;
    .param p2, "strictness"    # Lorg/mockito/quality/Strictness;
    .param p3, "testInstance"    # Ljava/lang/Object;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/mockito/internal/junit/JUnitSessionStore;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/junit/JUnitSessionStore;-><init>(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/quality/Strictness;)V

    iput-object v0, p0, Lorg/mockito/internal/junit/JUnitTestRule;->sessionStore:Lorg/mockito/internal/junit/JUnitSessionStore;

    .line 20
    iput-object p3, p0, Lorg/mockito/internal/junit/JUnitTestRule;->testInstance:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 25
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitTestRule;->sessionStore:Lorg/mockito/internal/junit/JUnitSessionStore;

    invoke-virtual {p2}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitTestRule;->testInstance:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lorg/mockito/internal/junit/JUnitSessionStore;->createStatement(Lorg/junit/runners/model/Statement;Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    return-object v0
.end method

.method public silent()Lorg/mockito/junit/MockitoTestRule;
    .locals 1

    .line 30
    sget-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/junit/JUnitTestRule;->strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/junit/MockitoTestRule;

    move-result-object v0

    return-object v0
.end method

.method public strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/junit/MockitoTestRule;
    .locals 1
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 35
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitTestRule;->sessionStore:Lorg/mockito/internal/junit/JUnitSessionStore;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/junit/JUnitSessionStore;->setStrictness(Lorg/mockito/quality/Strictness;)V

    .line 36
    return-object p0
.end method
