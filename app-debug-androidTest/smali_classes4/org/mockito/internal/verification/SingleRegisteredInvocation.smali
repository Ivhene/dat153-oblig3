.class public Lorg/mockito/internal/verification/SingleRegisteredInvocation;
.super Ljava/lang/Object;
.source "SingleRegisteredInvocation.java"

# interfaces
.implements Lorg/mockito/internal/verification/RegisteredInvocations;
.implements Ljava/io/Serializable;


# instance fields
.field private invocation:Lorg/mockito/invocation/Invocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/mockito/invocation/Invocation;)V
    .locals 0
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 19
    iput-object p1, p0, Lorg/mockito/internal/verification/SingleRegisteredInvocation;->invocation:Lorg/mockito/invocation/Invocation;

    .line 20
    return-void
.end method

.method public clear()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/verification/SingleRegisteredInvocation;->invocation:Lorg/mockito/invocation/Invocation;

    .line 35
    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/mockito/internal/verification/SingleRegisteredInvocation;->invocation:Lorg/mockito/invocation/Invocation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeLast()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/verification/SingleRegisteredInvocation;->invocation:Lorg/mockito/invocation/Invocation;

    .line 25
    return-void
.end method
