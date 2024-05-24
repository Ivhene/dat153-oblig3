.class public final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;
.super Ljava/lang/Enum;
.source "MethodDelegationBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 368
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    .line 363
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 363
    const-class v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;
    .locals 1

    .line 363
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot delegate to an unbound method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTarget()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method is not bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTargetParameterIndex(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .param p1, "parameterBindingToken"    # Ljava/lang/Object;

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method is not bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValid()Z
    .locals 1

    .line 388
    const/4 v0, 0x0

    return v0
.end method
