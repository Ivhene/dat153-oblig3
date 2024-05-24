.class public Lorg/mockito/internal/verification/MockAwareVerificationMode;
.super Ljava/lang/Object;
.source "MockAwareVerificationMode.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/VerificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mock:Ljava/lang/Object;

.field private final mode:Lorg/mockito/verification/VerificationMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;Ljava/util/Set;)V
    .locals 0
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "mode"    # Lorg/mockito/verification/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/mockito/verification/VerificationMode;",
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/VerificationListener;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p3, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/mockito/listeners/VerificationListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->mock:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->mode:Lorg/mockito/verification/VerificationMode;

    .line 24
    iput-object p3, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->listeners:Ljava/util/Set;

    .line 25
    return-void
.end method

.method private notifyListeners(Lorg/mockito/verification/VerificationEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/mockito/verification/VerificationEvent;

    .line 39
    iget-object v0, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/VerificationListener;

    .line 40
    .local v1, "listener":Lorg/mockito/listeners/VerificationListener;
    invoke-interface {v1, p1}, Lorg/mockito/listeners/VerificationListener;->onVerification(Lorg/mockito/verification/VerificationEvent;)V

    .line 41
    .end local v1    # "listener":Lorg/mockito/listeners/VerificationListener;
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public getMock()Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->mock:Ljava/lang/Object;

    return-object v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 4
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 30
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->mode:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 31
    new-instance v0, Lorg/mockito/internal/verification/VerificationEventImpl;

    iget-object v1, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->mock:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->mode:Lorg/mockito/verification/VerificationMode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/mockito/internal/verification/VerificationEventImpl;-><init>(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/verification/api/VerificationData;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/mockito/internal/verification/MockAwareVerificationMode;->notifyListeners(Lorg/mockito/verification/VerificationEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    nop

    .line 36
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Lorg/mockito/internal/verification/VerificationEventImpl;

    iget-object v2, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->mock:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mockito/internal/verification/MockAwareVerificationMode;->mode:Lorg/mockito/verification/VerificationMode;

    invoke-direct {v1, v2, v3, p1, v0}, Lorg/mockito/internal/verification/VerificationEventImpl;-><init>(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/verification/api/VerificationData;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lorg/mockito/internal/verification/MockAwareVerificationMode;->notifyListeners(Lorg/mockito/verification/VerificationEvent;)V

    .line 34
    throw v0
.end method
