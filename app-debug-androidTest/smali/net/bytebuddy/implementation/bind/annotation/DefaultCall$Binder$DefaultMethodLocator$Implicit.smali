.class public final enum Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;
.super Ljava/lang/Enum;
.source "DefaultCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Implicit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 181
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

    .line 176
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 176
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;
    .locals 1

    .line 176
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder$DefaultMethodLocator$Implicit;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 1
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;
    .param p2, "source"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 187
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/implementation/Implementation$Target;->invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v0

    return-object v0
.end method
