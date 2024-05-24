.class public final enum Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;
.super Ljava/lang/Enum;
.source "TypeResolutionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
.implements Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;",
        ">;",
        "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
        "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 241
    new-instance v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    .line 236
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 236
    const-class v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;
    .locals 1

    .line 236
    sget-object v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    return-object v0
.end method


# virtual methods
.method public initialize(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Ljava/util/Map;
    .locals 2
    .param p1, "dynamicType"    # Lnet/bytebuddy/dynamic/DynamicType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            "TS;",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "-TS;>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 263
    .local p2, "classLoader":Ljava/lang/ClassLoader;, "TS;"
    .local p3, "classLoadingStrategy":Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;, "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<-TS;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize a dynamic type for a disabled type resolution strategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectedInto(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .locals 0
    .param p1, "typeInitializer"    # Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    .line 254
    return-object p1
.end method

.method public resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;
    .locals 0

    .line 247
    return-object p0
.end method
