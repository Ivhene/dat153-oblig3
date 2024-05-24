.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForEquals;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForEquals"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enter(Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 1
    .param p0, "self"    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$This;
        .end annotation
    .end param
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Argument;
            value = 0x0
        .end annotation
    .end param
    .param p2, "equals"    # Z
        .annotation runtime Lnet/bytebuddy/asm/Advice$Return;
            readOnly = false
        .end annotation
    .end param
    .param p3, "skipped"    # Z
        .annotation runtime Lnet/bytebuddy/asm/Advice$Enter;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodExit;
    .end annotation

    .line 722
    if-eqz p3, :cond_1

    .line 723
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move p2, v0

    .line 725
    :cond_1
    return-void
.end method

.method private static enter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;
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

    .line 711
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    move-result-object v0

    .line 712
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
