.class public abstract enum Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
.super Ljava/lang/Enum;
.source "ClassReloadingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Strategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassResettingTransformer;,
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassRedefinitionTransformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

.field private static final NO_REDEFINITION:[B

.field private static final REDEFINE_CLASSES:Z = true

.field public static final enum REDEFINITION:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

.field public static final enum RETRANSFORMATION:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;


# instance fields
.field private final redefinition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 351
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$1;

    const-string v1, "REDEFINITION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->REDEFINITION:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    .line 388
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$2;

    const-string v4, "RETRANSFORMATION"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->RETRANSFORMATION:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    .line 340
    const/4 v4, 0x2

    new-array v4, v4, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    .line 430
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->NO_REDEFINITION:[B

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "redefinition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 448
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 449
    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->redefinition:Z

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$1;

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 340
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->NO_REDEFINITION:[B

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 340
    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
    .locals 1

    .line 340
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    return-object v0
.end method


# virtual methods
.method protected abstract apply(Ljava/lang/instrument/Instrumentation;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/instrument/ClassDefinition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/UnmodifiableClassException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public isRedefinition()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->redefinition:Z

    return v0
.end method

.method public abstract reset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/instrument/UnmodifiableClassException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method protected abstract validate(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
.end method
