.class public Lorg/mockito/internal/verification/AtMost;
.super Ljava/lang/Object;
.source "AtMost.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final maxNumberOfInvocations:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxNumberOfInvocations"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-ltz p1, :cond_0

    .line 28
    iput p1, p0, Lorg/mockito/internal/verification/AtMost;->maxNumberOfInvocations:I

    .line 29
    return-void

    .line 26
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Negative value is not allowed here"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeAlreadyVerified(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mockito/invocation/Invocation;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 49
    .local v1, "i":Lorg/mockito/invocation/Invocation;
    invoke-interface {v1}, Lorg/mockito/invocation/Invocation;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 52
    .end local v1    # "i":Lorg/mockito/invocation/Invocation;
    :cond_0
    goto :goto_0

    .line 53
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mockito/invocation/Invocation;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 5
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 33
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    .line 36
    .local v1, "wanted":Lorg/mockito/invocation/MatchableInvocation;
    invoke-static {v0, v1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v2

    .line 37
    .local v2, "found":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 38
    .local v3, "foundSize":I
    iget v4, p0, Lorg/mockito/internal/verification/AtMost;->maxNumberOfInvocations:I

    if-gt v3, v4, :cond_0

    .line 42
    invoke-direct {p0, v2}, Lorg/mockito/internal/verification/AtMost;->removeAlreadyVerified(Ljava/util/List;)V

    .line 43
    invoke-static {v2, v1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 44
    return-void

    .line 39
    :cond_0
    invoke-static {v4, v3}, Lorg/mockito/internal/exceptions/Reporter;->wantedAtMostX(II)Lorg/mockito/exceptions/verification/MoreThanAllowedActualInvocations;

    move-result-object v4

    throw v4
.end method
