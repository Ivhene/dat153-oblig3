.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"

# interfaces
.implements Lorg/mockito/internal/invocation/RealMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticMethodCall"
.end annotation


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final origin:Ljava/lang/reflect/Method;

.field private final selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "selfCallInfo"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;
    .param p3, "origin"    # Ljava/lang/reflect/Method;
    .param p4, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 310
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    .line 312
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;->type:Ljava/lang/Class;

    .line 313
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;->origin:Ljava/lang/reflect/Method;

    .line 314
    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;->arguments:[Ljava/lang/Object;

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Ljava/lang/reflect/Method;
    .param p4, "x3"    # [Ljava/lang/Object;
    .param p5, "x4"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;

    .line 299
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;->origin:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;->arguments:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$500(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isInvokable()Z
    .locals 1

    .line 319
    const/4 v0, 0x1

    return v0
.end method
