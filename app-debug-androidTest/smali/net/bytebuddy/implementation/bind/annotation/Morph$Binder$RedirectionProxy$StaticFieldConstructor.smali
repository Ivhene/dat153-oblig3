.class public final enum Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;
.super Ljava/lang/Enum;
.source "Morph.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "StaticFieldConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;


# instance fields
.field private final objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 416
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    .line 411
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 427
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    .line 428
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodList;

    .line 429
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    .line 430
    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    .line 411
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 411
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;
    .locals 1

    .line 411
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 4
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 443
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v2, 0x0

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->VOID:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 436
    return-object p1
.end method
