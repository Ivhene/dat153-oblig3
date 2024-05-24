.class public Lorg/mockito/internal/verification/InOrderContextImpl;
.super Ljava/lang/Object;
.source "InOrderContextImpl.java"

# interfaces
.implements Lorg/mockito/internal/verification/api/InOrderContext;


# instance fields
.field final verified:Lorg/mockito/internal/util/collections/IdentitySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lorg/mockito/internal/util/collections/IdentitySet;

    invoke-direct {v0}, Lorg/mockito/internal/util/collections/IdentitySet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/verification/InOrderContextImpl;->verified:Lorg/mockito/internal/util/collections/IdentitySet;

    return-void
.end method


# virtual methods
.method public isVerified(Lorg/mockito/invocation/Invocation;)Z
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 17
    iget-object v0, p0, Lorg/mockito/internal/verification/InOrderContextImpl;->verified:Lorg/mockito/internal/util/collections/IdentitySet;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/collections/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markVerified(Lorg/mockito/invocation/Invocation;)V
    .locals 1
    .param p1, "i"    # Lorg/mockito/invocation/Invocation;

    .line 22
    iget-object v0, p0, Lorg/mockito/internal/verification/InOrderContextImpl;->verified:Lorg/mockito/internal/util/collections/IdentitySet;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/collections/IdentitySet;->add(Ljava/lang/Object;)V

    .line 23
    return-void
.end method
