.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.super Ljava/lang/Enum;
.source "MethodInvocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$OfGenericMethod;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum INTERFACE_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum VIRTUAL_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;


# instance fields
.field private final handle:I

.field private final legacyHandle:I

.field private final legacyOpcode:I

.field private final opcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 43
    new-instance v7, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v1, "VIRTUAL"

    const/4 v2, 0x0

    const/16 v3, 0xb6

    const/4 v4, 0x5

    const/16 v5, 0xb6

    const/4 v6, 0x5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 48
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v9, "INTERFACE"

    const/4 v10, 0x1

    const/16 v11, 0xb9

    const/16 v12, 0x9

    const/16 v13, 0xb9

    const/16 v14, 0x9

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 53
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v16, "STATIC"

    const/16 v17, 0x2

    const/16 v18, 0xb8

    const/16 v19, 0x6

    const/16 v20, 0xb8

    const/16 v21, 0x6

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 58
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v9, "SPECIAL"

    const/4 v10, 0x3

    const/16 v11, 0xb7

    const/4 v12, 0x7

    const/16 v13, 0xb7

    const/4 v14, 0x7

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 63
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v16, "SPECIAL_CONSTRUCTOR"

    const/16 v17, 0x4

    const/16 v18, 0xb7

    const/16 v19, 0x8

    const/16 v20, 0xb7

    const/16 v21, 0x8

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 68
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v9, "VIRTUAL_PRIVATE"

    const/4 v10, 0x5

    const/16 v11, 0xb6

    const/4 v12, 0x5

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 73
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v16, "INTERFACE_PRIVATE"

    const/16 v17, 0x6

    const/16 v18, 0xb9

    const/16 v19, 0x9

    const/16 v21, 0x7

    move-object v15, v6

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 38
    filled-new-array/range {v0 .. v6}, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p3, "opcode"    # I
    .param p4, "handle"    # I
    .param p5, "legacyOpcode"    # I
    .param p6, "legacyHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->opcode:I

    .line 105
    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->handle:I

    .line 106
    iput p5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->legacyOpcode:I

    .line 107
    iput p6, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->legacyHandle:I

    .line 108
    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 38
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->opcode:I

    return v0
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 38
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->legacyOpcode:I

    return v0
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 38
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->handle:I

    return v0
.end method

.method static synthetic access$300(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 38
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->legacyHandle:I

    return v0
.end method

.method public static invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;
    .locals 2
    .param p0, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 117
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isTypeInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;

    return-object v0

    .line 119
    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 121
    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 123
    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    goto :goto_0

    :cond_3
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 127
    :cond_4
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 130
    :cond_5
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
.end method

.method public static invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;
    .locals 3
    .param p0, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 142
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 143
    .local v0, "declaredMethod":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    invoke-static {p0, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$OfGenericMethod;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .locals 1

    .line 38
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-object v0
.end method
