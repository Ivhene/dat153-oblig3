.class public Lorg/mockito/internal/verification/NoInteractions;
.super Ljava/lang/Object;
.source "NoInteractions.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 2
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 20
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 21
    .local v0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    return-void

    .line 22
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    invoke-interface {v1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mockito/internal/exceptions/Reporter;->noInteractionsWanted(Ljava/lang/Object;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v1

    throw v1
.end method
