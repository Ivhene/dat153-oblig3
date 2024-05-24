.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;
.super Ljava/lang/ThreadLocal;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfCallInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;

    .line 369
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;-><init>()V

    return-void
.end method


# virtual methods
.method checkSelfCall(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    .line 380
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method replace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 372
    invoke-virtual {p0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->get()Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "current":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    .line 374
    return-object v0
.end method
