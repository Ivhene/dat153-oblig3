.class public interface abstract Lorg/mockito/stubbing/Stubbing;
.super Ljava/lang/Object;
.source "Stubbing.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation runtime Lorg/mockito/NotExtensible;
.end annotation


# virtual methods
.method public abstract getInvocation()Lorg/mockito/invocation/Invocation;
.end method

.method public abstract getStrictness()Lorg/mockito/quality/Strictness;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract wasUsed()Z
.end method
