.class public Lorg/mockito/internal/configuration/DefaultInjectionEngine;
.super Ljava/lang/Object;
.source "DefaultInjectionEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public injectMocksOnFields(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1
    .param p3, "testClassInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 21
    .local p1, "needingInjection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .local p2, "mocks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-static {p1, p3}, Lorg/mockito/internal/configuration/injection/MockInjection;->onFields(Ljava/util/Set;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p2}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->withMocks(Ljava/util/Set;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->tryConstructorInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->tryPropertyOrFieldInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->handleSpyAnnotation()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->apply()V

    .line 27
    return-void
.end method
