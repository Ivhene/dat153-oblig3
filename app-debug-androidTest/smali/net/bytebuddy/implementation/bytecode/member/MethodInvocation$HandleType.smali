.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;
.super Ljava/lang/Enum;
.source "MethodInvocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

.field public static final enum EXACT:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

.field public static final enum REGULAR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;


# instance fields
.field private final methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 589
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    const/4 v1, 0x0

    const-string v2, "invokeExact"

    const-string v3, "EXACT"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->EXACT:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    .line 594
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    const/4 v2, 0x1

    const-string v3, "invoke"

    const-string v4, "REGULAR"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->REGULAR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    .line 584
    filled-new-array {v0, v1}, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 606
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 607
    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->methodName:Ljava/lang/String;

    .line 608
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 584
    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;
    .locals 1

    .line 584
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    return-object v0
.end method


# virtual methods
.method protected getMethodName()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->methodName:Ljava/lang/String;

    return-object v0
.end method
