.class public Lorg/mockito/internal/stubbing/answers/ThrowsExceptionForClassType;
.super Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;
.source "ThrowsExceptionForClassType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final throwableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p1, "throwableClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionForClassType;->throwableClass:Ljava/lang/Class;

    .line 18
    return-void
.end method


# virtual methods
.method protected getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 22
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v0

    .line 23
    .local v0, "instantiator":Lorg/mockito/creation/instance/Instantiator;
    iget-object v1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionForClassType;->throwableClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    return-object v1
.end method
