.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "LambdaInstrumentationStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

.field public static final enum DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

.field public static final enum ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

.field protected static final IGNORE_ORIGINAL:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private static final UNSAFE_CLASS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7832
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$1;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    .line 7863
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$2;

    const-string v3, "DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    .line 7818
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    .line 7880
    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "jdk/internal/misc/Unsafe"

    goto :goto_0

    :cond_0
    const-string v0, "sun/misc/Unsafe"

    :goto_0
    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->UNSAFE_CLASS:Ljava/lang/String;

    .line 7887
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->IGNORE_ORIGINAL:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7818
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/agent/builder/AgentBuilder$1;

    .line 7818
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 7818
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->UNSAFE_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method public static of(Z)Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
    .locals 1
    .param p0, "enabled"    # Z

    .line 7913
    if-eqz p0, :cond_0

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    :goto_0
    return-object v0
.end method

.method public static release(Ljava/lang/instrument/ClassFileTransformer;Ljava/lang/instrument/Instrumentation;)V
    .locals 4
    .param p0, "classFileTransformer"    # Ljava/lang/instrument/ClassFileTransformer;
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;

    .line 7897
    invoke-static {p0}, Lnet/bytebuddy/agent/builder/LambdaFactory;->release(Ljava/lang/instrument/ClassFileTransformer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7899
    :try_start_0
    invoke-static {p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->of(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "java.lang.invoke.LambdaMetafactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->reset([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7902
    goto :goto_0

    .line 7900
    :catch_0
    move-exception v0

    .line 7901
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not release lambda transformer"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7904
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7818
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
    .locals 1

    .line 7818
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    return-object v0
.end method


# virtual methods
.method protected abstract apply(Lnet/bytebuddy/ByteBuddy;Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;)V
.end method

.method public isEnabled()Z
    .locals 1

    .line 7933
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract isInstrumented(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method
