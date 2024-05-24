.class public final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;
.super Ljava/lang/Enum;
.source "MethodDelegationBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    .line 78
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;
    .locals 1

    .line 78
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record$Illegal;

    return-object v0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .locals 1
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;
    .param p2, "source"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "terminationHandler"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;
    .param p4, "methodInvoker"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;
    .param p5, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 93
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    return-object v0
.end method
