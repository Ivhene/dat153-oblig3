.class public final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;
.super Ljava/lang/Enum;
.source "MethodDelegationBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 187
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    .line 182
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 182
    const-class v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;
    .locals 1

    .line 182
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An illegal parameter binding must not be applied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getIdentificationToken()Ljava/lang/Object;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->getIdentificationToken()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getIdentificationToken()Ljava/lang/Void;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An illegal binding does not define an identification token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValid()Z
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method
