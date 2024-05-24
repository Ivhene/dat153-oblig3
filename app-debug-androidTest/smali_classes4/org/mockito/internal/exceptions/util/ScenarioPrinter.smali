.class public Lorg/mockito/internal/exceptions/util/ScenarioPrinter;
.super Ljava/lang/Object;
.source "ScenarioPrinter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public print(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/internal/exceptions/VerificationAwareInvocation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 14
    .local p1, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/exceptions/VerificationAwareInvocation;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15
    const-string v0, "Actually, above is the only interaction with this mock."

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "***\nFor your reference, here is the list of all invocations ([?] - means unverified).\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 23
    .local v1, "counter":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/internal/exceptions/VerificationAwareInvocation;

    .line 24
    .local v3, "i":Lorg/mockito/internal/exceptions/VerificationAwareInvocation;
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {v3}, Lorg/mockito/internal/exceptions/VerificationAwareInvocation;->isVerified()Z

    move-result v4

    if-nez v4, :cond_1

    .line 26
    const-string v4, "[?]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_1
    invoke-interface {v3}, Lorg/mockito/internal/exceptions/VerificationAwareInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .end local v3    # "i":Lorg/mockito/internal/exceptions/VerificationAwareInvocation;
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
