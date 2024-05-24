.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForReadObject;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForReadObject"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doReadObject(Ljava/lang/String;Lorg/mockito/internal/creation/bytebuddy/MockAccess;Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;
        .annotation runtime Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;
        .end annotation
    .end param
    .param p1, "thiz"    # Lorg/mockito/internal/creation/bytebuddy/MockAccess;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/This;
        .end annotation
    .end param
    .param p2, "objectInputStream"    # Ljava/io/ObjectInputStream;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/Argument;
            value = 0x0
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 766
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 767
    nop

    .line 768
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    .line 769
    .local v0, "mockMethodAdvice":Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
    if-eqz v0, :cond_0

    .line 770
    invoke-static {v0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$900(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    move-result-object v1

    invoke-interface {p1}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->getMockitoInterceptor()Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    :cond_0
    return-void
.end method
