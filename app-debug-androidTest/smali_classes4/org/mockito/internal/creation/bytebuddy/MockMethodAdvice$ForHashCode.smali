.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForHashCode;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForHashCode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enter(Ljava/lang/Object;IZ)V
    .locals 0
    .param p0, "self"    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$This;
        .end annotation
    .end param
    .param p1, "hashCode"    # I
        .annotation runtime Lnet/bytebuddy/asm/Advice$Return;
            readOnly = false
        .end annotation
    .end param
    .param p2, "skipped"    # Z
        .annotation runtime Lnet/bytebuddy/asm/Advice$Enter;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodExit;
    .end annotation

    .line 700
    if-eqz p2, :cond_0

    .line 701
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 703
    :cond_0
    return-void
.end method

.method private static enter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;
        .end annotation
    .end param
    .param p1, "self"    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$This;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodEnter;
        skipOn = Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;
    .end annotation

    .line 690
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    move-result-object v0

    .line 691
    .local v0, "dispatcher":Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->isMock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
