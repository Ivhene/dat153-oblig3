.class public final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;
.super Ljava/lang/Enum;
.source "MethodDelegationBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 886
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    .line 881
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 881
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 881
    const-class v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;
    .locals 1

    .line 881
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 1
    .param p1, "source"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "left"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .param p3, "right"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    .line 892
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->UNKNOWN:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v0
.end method
