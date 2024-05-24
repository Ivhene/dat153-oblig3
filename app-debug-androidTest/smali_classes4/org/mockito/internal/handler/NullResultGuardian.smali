.class Lorg/mockito/internal/handler/NullResultGuardian;
.super Ljava/lang/Object;
.source "NullResultGuardian.java"

# interfaces
.implements Lorg/mockito/invocation/MockHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/invocation/MockHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/MockHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lorg/mockito/internal/handler/NullResultGuardian;, "Lorg/mockito/internal/handler/NullResultGuardian<TT;>;"
    .local p1, "delegate":Lorg/mockito/invocation/MockHandler;, "Lorg/mockito/invocation/MockHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/invocation/MockHandler;

    .line 25
    return-void
.end method


# virtual methods
.method public getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;
    .locals 1

    .line 45
    .local p0, "this":Lorg/mockito/internal/handler/NullResultGuardian;, "Lorg/mockito/internal/handler/NullResultGuardian<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/invocation/MockHandler;

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMockSettings()Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/mockito/internal/handler/NullResultGuardian;, "Lorg/mockito/internal/handler/NullResultGuardian<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/invocation/MockHandler;

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 3
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    .local p0, "this":Lorg/mockito/internal/handler/NullResultGuardian;, "Lorg/mockito/internal/handler/NullResultGuardian<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/invocation/MockHandler;

    invoke-interface {v0, p1}, Lorg/mockito/invocation/MockHandler;->handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "result":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 31
    .local v1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {v1}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 35
    :cond_0
    return-object v0
.end method
