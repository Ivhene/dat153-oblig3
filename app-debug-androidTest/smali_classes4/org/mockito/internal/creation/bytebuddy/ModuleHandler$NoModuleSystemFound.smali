.class Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$NoModuleSystemFound;
.super Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.source "ModuleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoModuleSystemFound"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$1;

    .line 304
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$NoModuleSystemFound;-><init>()V

    return-void
.end method


# virtual methods
.method adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V
    .locals 0
    .param p3, "export"    # Z
    .param p4, "read"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 334
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method canRead(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 313
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method injectionBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "tyoeName"    # Ljava/lang/String;
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

    .line 328
    const-class v0, Lorg/mockito/codegen/InjectionBase;

    return-object v0
.end method

.method isExported(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 318
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method isExported(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 323
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method isOpened(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 308
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method
