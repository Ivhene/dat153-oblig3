.class public final enum Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;
.super Ljava/lang/Enum;
.source "MethodCallProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ConstructorCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall$Appender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;


# instance fields
.field private final objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 242
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    .line 237
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 253
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    .line 254
    return-void
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    .line 237
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 237
    const-class v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;
    .locals 1

    .line 237
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 3
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 267
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall$Appender;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$1;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 260
    return-object p1
.end method
