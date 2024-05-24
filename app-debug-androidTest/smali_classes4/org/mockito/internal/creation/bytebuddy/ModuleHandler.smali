.class abstract Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.super Ljava/lang/Object;
.source "ModuleHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$NoModuleSystemFound;,
        Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static make(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;)Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
    .locals 3
    .param p0, "byteBuddy"    # Lnet/bytebuddy/ByteBuddy;
    .param p1, "loader"    # Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;
    .param p2, "random"    # Ljava/util/Random;

    .line 40
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;-><init>(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "ignored":Ljava/lang/Exception;
    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$NoModuleSystemFound;

    invoke-direct {v2, v0}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$NoModuleSystemFound;-><init>(Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$1;)V

    return-object v2
.end method


# virtual methods
.method abstract adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation
.end method

.method abstract canRead(Ljava/lang/Class;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method abstract injectionBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method abstract isExported(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method abstract isExported(Ljava/lang/Class;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method abstract isOpened(Ljava/lang/Class;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method
