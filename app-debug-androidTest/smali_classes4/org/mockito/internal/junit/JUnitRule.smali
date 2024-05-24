.class public final Lorg/mockito/internal/junit/JUnitRule;
.super Ljava/lang/Object;
.source "JUnitRule.java"

# interfaces
.implements Lorg/mockito/junit/MockitoRule;


# instance fields
.field private final sessionStore:Lorg/mockito/internal/junit/JUnitSessionStore;


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/quality/Strictness;)V
    .locals 1
    .param p1, "logger"    # Lorg/mockito/plugins/MockitoLogger;
    .param p2, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/mockito/internal/junit/JUnitSessionStore;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/junit/JUnitSessionStore;-><init>(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/quality/Strictness;)V

    iput-object v0, p0, Lorg/mockito/internal/junit/JUnitRule;->sessionStore:Lorg/mockito/internal/junit/JUnitSessionStore;

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p3, "target"    # Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule;->sessionStore:Lorg/mockito/internal/junit/JUnitSessionStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1, p3}, Lorg/mockito/internal/junit/JUnitSessionStore;->createStatement(Lorg/junit/runners/model/Statement;Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    return-object v0
.end method

.method public silent()Lorg/mockito/junit/MockitoRule;
    .locals 1

    .line 32
    sget-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/junit/JUnitRule;->strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/junit/MockitoRule;

    move-result-object v0

    return-object v0
.end method

.method public strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/junit/MockitoRule;
    .locals 1
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 37
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule;->sessionStore:Lorg/mockito/internal/junit/JUnitSessionStore;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/junit/JUnitSessionStore;->setStrictness(Lorg/mockito/quality/Strictness;)V

    .line 38
    return-object p0
.end method
