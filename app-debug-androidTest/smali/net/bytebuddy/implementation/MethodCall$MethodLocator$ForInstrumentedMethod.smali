.class public final enum Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;
.super Ljava/lang/Enum;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$MethodLocator;
.implements Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$MethodLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForInstrumentedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$MethodLocator;",
        "Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 718
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    .line 713
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 713
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 713
    const-class v0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;
    .locals 1

    .line 713
    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodLocator;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 724
    return-object p0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 0
    .param p1, "targetType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 731
    return-object p2
.end method
