.class public abstract enum Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
.super Ljava/lang/Enum;
.source "TypeProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;",
        ">;",
        "Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

.field public static final enum DEFAULT_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

.field public static final enum SUPER_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 354
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$1;

    const-string v1, "SUPER_METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->SUPER_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    .line 366
    new-instance v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$2;

    const-string v3, "DEFAULT_METHOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->DEFAULT_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    .line 349
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/auxiliary/TypeProxy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/implementation/auxiliary/TypeProxy$1;

    .line 349
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 349
    const-class v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
    .locals 1

    .line 349
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    return-object v0
.end method
