.class public final Lorg/mockito/internal/handler/MockHandlerFactory;
.super Ljava/lang/Object;
.source "MockHandlerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMockHandler(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/invocation/MockHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;"
        }
    .end annotation

    .line 14
    .local p0, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    new-instance v0, Lorg/mockito/internal/handler/MockHandlerImpl;

    invoke-direct {v0, p0}, Lorg/mockito/internal/handler/MockHandlerImpl;-><init>(Lorg/mockito/mock/MockCreationSettings;)V

    .line 15
    .local v0, "handler":Lorg/mockito/invocation/MockHandler;, "Lorg/mockito/invocation/MockHandler<TT;>;"
    new-instance v1, Lorg/mockito/internal/handler/NullResultGuardian;

    invoke-direct {v1, v0}, Lorg/mockito/internal/handler/NullResultGuardian;-><init>(Lorg/mockito/invocation/MockHandler;)V

    .line 16
    .local v1, "nullResultGuardian":Lorg/mockito/invocation/MockHandler;, "Lorg/mockito/invocation/MockHandler<TT;>;"
    new-instance v2, Lorg/mockito/internal/handler/InvocationNotifierHandler;

    invoke-direct {v2, v1, p0}, Lorg/mockito/internal/handler/InvocationNotifierHandler;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    return-object v2
.end method
