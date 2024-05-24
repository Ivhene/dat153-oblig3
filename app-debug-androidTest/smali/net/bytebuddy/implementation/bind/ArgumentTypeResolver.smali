.class public final enum Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
.super Ljava/lang/Enum;
.source "ArgumentTypeResolver.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;,
        Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    .line 44
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static resolveByScore(I)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 1
    .param p0, "boundParameterScore"    # I

    .line 99
    if-nez p0, :cond_0

    .line 100
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v0

    .line 101
    :cond_0
    if-lez p0, :cond_1

    .line 102
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v0

    .line 104
    :cond_1
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v0
.end method

.method private static resolveRivalBinding(Lnet/bytebuddy/description/type/TypeDescription;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 4
    .param p0, "sourceParameterType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "leftParameterIndex"    # I
    .param p2, "left"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .param p3, "rightParameterIndex"    # I
    .param p4, "right"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    .line 66
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 67
    .local v0, "leftParameterType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {p4}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1, p3}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 68
    .local v1, "rightParameterType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 69
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {v0}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->forPrimitive(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    move-result-object v2

    invoke-static {v1}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->forPrimitive(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->resolve(Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v2

    return-object v2

    .line 71
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    :goto_0
    return-object v2

    .line 73
    :cond_2
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    goto :goto_1

    :cond_3
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    :goto_1
    return-object v2

    .line 77
    :cond_4
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v2

    .line 79
    :cond_5
    invoke-interface {v1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 80
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v2

    .line 82
    :cond_6
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v2

    .line 86
    :cond_7
    sget-object v2, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->UNKNOWN:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
    .locals 1

    .line 44
    sget-object v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 11
    .param p1, "source"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "left"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .param p3, "right"    # Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    .line 114
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->UNKNOWN:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    .line 115
    .local v0, "resolution":Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    .line 116
    .local v1, "sourceParameters":Lnet/bytebuddy/description/method/ParameterList;, "Lnet/bytebuddy/description/method/ParameterList<*>;"
    const/4 v2, 0x0

    .local v2, "leftExtra":I
    const/4 v3, 0x0

    .line 117
    .local v3, "rightExtra":I
    const/4 v4, 0x0

    .local v4, "sourceParameterIndex":I
    :goto_0
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 118
    new-instance v5, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;

    invoke-direct {v5, v4}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;-><init>(I)V

    .line 119
    .local v5, "parameterIndexToken":Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;
    invoke-interface {p2, v5}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTargetParameterIndex(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    .line 120
    .local v6, "leftParameterIndex":Ljava/lang/Integer;
    invoke-interface {p3, v5}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTargetParameterIndex(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    .line 121
    .local v7, "rightParameterIndex":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 122
    invoke-interface {v1, v4}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v8}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v8

    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    .line 123
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 125
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 122
    invoke-static {v8, v9, p2, v10, p3}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->resolveRivalBinding(Lnet/bytebuddy/description/type/TypeDescription;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v8

    invoke-virtual {v0, v8}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->merge(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_0
    if-eqz v6, :cond_1

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_1
    if-eqz v7, :cond_2

    .line 130
    add-int/lit8 v3, v3, 0x1

    .line 117
    .end local v5    # "parameterIndexToken":Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;
    .end local v6    # "leftParameterIndex":Ljava/lang/Integer;
    .end local v7    # "rightParameterIndex":Ljava/lang/Integer;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .end local v4    # "sourceParameterIndex":I
    :cond_3
    sget-object v4, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->UNKNOWN:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    if-ne v0, v4, :cond_4

    sub-int v4, v2, v3

    .line 134
    invoke-static {v4}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->resolveByScore(I)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v0

    .line 133
    :goto_2
    return-object v4
.end method
