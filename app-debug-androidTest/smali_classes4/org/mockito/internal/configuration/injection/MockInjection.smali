.class public final Lorg/mockito/internal/configuration/injection/MockInjection;
.super Ljava/lang/Object;
.source "MockInjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "ofInstance"    # Ljava/lang/Object;

    .line 32
    new-instance v0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/mockito/internal/configuration/injection/MockInjection$1;)V

    return-object v0
.end method

.method public static onFields(Ljava/util/Set;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2
    .param p1, "ofInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;"
        }
    .end annotation

    .line 44
    .local p0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    new-instance v0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;-><init>(Ljava/util/Set;Ljava/lang/Object;Lorg/mockito/internal/configuration/injection/MockInjection$1;)V

    return-object v0
.end method
