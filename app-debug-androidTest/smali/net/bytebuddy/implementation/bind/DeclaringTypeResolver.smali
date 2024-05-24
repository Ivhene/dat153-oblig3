.class public final enum Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;
.super Ljava/lang/Enum;
.source "DeclaringTypeResolver.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    .line 25
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;
    .locals 1

    .line 25
    sget-object v0, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 3
    .param p1, "source"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "left"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .param p3, "right"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    .line 38
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 39
    .local v0, "leftType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 40
    .local v1, "rightType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v2

    .line 42
    :cond_0
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v2

    .line 44
    :cond_1
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v2

    .line 47
    :cond_2
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v2
.end method
