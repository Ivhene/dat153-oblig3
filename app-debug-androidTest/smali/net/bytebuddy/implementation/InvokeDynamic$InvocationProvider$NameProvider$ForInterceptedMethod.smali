.class public final enum Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;
.super Ljava/lang/Enum;
.source "InvokeDynamic.java"

# interfaces
.implements Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForInterceptedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;",
        ">;",
        "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2189
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    .line 2184
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;->$VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2184
    const-class v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;
    .locals 1

    .line 2184
    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;->$VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
    .locals 1
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 2195
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
